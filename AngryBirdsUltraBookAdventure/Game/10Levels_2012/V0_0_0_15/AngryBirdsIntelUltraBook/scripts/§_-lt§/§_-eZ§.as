package §_-lt§
{
   import §_-03n§.b2PolygonShape;
   import §_-0BH§.§_-FK§;
   import §_-0DG§.§_-0-A§;
   import §_-0DG§.§_-09t§;
   import §_-0DG§.§_-a2§;
   import §_-0DG§.§_-au§;
   import §_-0DG§.§_-sQ§;
   import §_-4g§.§_-pX§;
   import §_-5§.b2Settings;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-40§;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2BodyDef;
   import §_-aU§.b2FilterData;
   import §_-aU§.b2Fixture;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   import flash.geom.Point;
   
   public class §_-eZ§
   {
      
      public static const §_-xV§:uint;
      
      public static const §_-07Y§:uint;
      
      public static const §_-1w§:uint;
      
      public static const §_-0Cm§:uint;
      
      public static const §_-ko§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§§findproperty(§_-xV§));
            §§push(1);
            if(_loc2_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§_-xV§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§_-07Y§));
               §§push(1);
               if(!_loc1_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§_-07Y§ = §§pop();
               loop1:
               while(!_loc1_)
               {
                  §§push(§§findproperty(§_-1w§));
                  §§push(1);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§_-1w§ = §§pop();
                  loop2:
                  do
                  {
                     §§push(§§findproperty(§_-0Cm§));
                     §§push(1);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§_-0Cm§ = §§pop();
                     while(!_loc1_)
                     {
                        §_-ko§ = true;
                        if(_loc2_ || _loc2_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc1_ && _loc2_);
                  
               }
            }
         }
      }
      
      private var §_-9U§:String;
      
      private var §_-Ff§:int;
      
      private var §_-02f§:int;
      
      public var §_-o2§:String;
      
      public var §_-kD§:int;
      
      private var §_-0AN§:§_-0-A§;
      
      private var §_-7c§:§_-30§;
      
      private var mWorld:b2World;
      
      protected var §_-SE§:String = "";
      
      protected var §_-nf§:int = 1;
      
      private var §_-hd§:b2Fixture;
      
      private var §_-qv§:b2Body;
      
      private var §_-rb§:b2Vec2;
      
      public var §_-Kh§:Number;
      
      public var §_-8l§:Number;
      
      private var §_-uZ§:Number;
      
      private var §_-88§:Boolean = false;
      
      private var §_-Wh§:Number;
      
      private var §_-lZ§:Number;
      
      private var §_-0EG§:Number;
      
      private var §_-j8§:Number;
      
      private var §_-02§:Number;
      
      private var §_-DK§:Number;
      
      public var §_-JZ§:Number = 1;
      
      private var §_-0BO§:Boolean = false;
      
      public var §_-02Q§:Number = 0;
      
      public var §_-yE§:Number = 0;
      
      protected var §_-07A§:Boolean = false;
      
      public var §_-U-§:§_-05W§;
      
      private var §_-FQ§:Sprite;
      
      private var §_-c§:Number = 0;
      
      private var §_-l1§:Number = 0;
      
      private var §_-0Cn§:Number = 0;
      
      private var §_-XE§:Number = 1.0;
      
      private var §_-05j§:Boolean = false;
      
      private var §_-dS§:Vector.<Vector.<Number>>;
      
      private var §_-CU§:int = 10;
      
      private var §_-kc§:Boolean = true;
      
      public function §_-eZ§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc17_ && this))
         {
            this.§_-dS§ = new Vector.<Vector.<Number>>();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§_-o2§ = param6;
                  loop2:
                  while(true)
                  {
                     this.§_-0AN§ = §_-09t§.§_-yf§(param6);
                     while(true)
                     {
                        this.§_-7c§ = param1;
                        while(true)
                        {
                           this.§_-FQ§ = param2;
                           continue loop1;
                           addr193:
                           if(!(_loc16_ || param3))
                           {
                              continue;
                           }
                           if(_loc17_)
                           {
                              continue loop2;
                           }
                           this.§_-Ff§ = param5;
                           loop8:
                           while(true)
                           {
                              this.§_-kD§ = this.§_-0AN§.§_-kD§;
                              loop9:
                              while(true)
                              {
                                 this.§_-02f§ = this.§_-0AN§.§_-Kt§();
                                 loop10:
                                 while(true)
                                 {
                                    this.§_-dS§[0] = new Vector.<Number>();
                                    loop11:
                                    while(_loc16_)
                                    {
                                       this.§_-dS§[1] = new Vector.<Number>();
                                       loop12:
                                       while(true)
                                       {
                                          this.§_-dS§[2] = new Vector.<Number>();
                                          addr138:
                                          while(_loc16_)
                                          {
                                             while(true)
                                             {
                                                this.§_-U-§ = new §_-05W§(this,param2,param4);
                                                loop15:
                                                while(!_loc17_)
                                                {
                                                   if(_loc17_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr121:
                                                   if(_loc17_ && param2)
                                                   {
                                                      while(_loc16_ || param3)
                                                      {
                                                         §§goto(addr193);
                                                         §§goto(addr121);
                                                      }
                                                      while(!(_loc17_ && param1))
                                                      {
                                                         this.§_-05j§ = param11;
                                                         §§goto(addr186);
                                                      }
                                                      addr186:
                                                      continue loop1;
                                                      addr207:
                                                   }
                                                   §§push(this.§_-U-§);
                                                   if(!_loc17_)
                                                   {
                                                      if(!§§pop().§_-xt§(param1.§_-6A§.animationManager))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§_-U-§);
                                                            addr88:
                                                            while(true)
                                                            {
                                                               §§push(this.§_-02f§);
                                                               addr90:
                                                               while(true)
                                                               {
                                                                  §§pop().§_-07a§(§§pop(),this.§_-0AN§.§_-0-K§(),this.§_-0AN§.§_-nJ§() / §_-00u§.§_-lY§,this.§_-0AN§.§_-8s§() / §_-00u§.§_-lY§);
                                                                  addr106:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr86:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§_-U-§);
                                                         if(_loc16_ || param2)
                                                         {
                                                            §§push(this.§_-02f§);
                                                            if(_loc16_)
                                                            {
                                                               §§pop().§_-QT§(§§pop() == §_-sQ§.§_-WD§);
                                                               continue loop12;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr88);
                                                         }
                                                         §§goto(addr90);
                                                      }
                                                      continue;
                                                      addr48:
                                                   }
                                                   §§goto(addr88);
                                                }
                                                continue loop10;
                                             }
                                          }
                                          continue loop11;
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                        }
                        if(_loc17_ && param1)
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr48);
                        }
                        var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                        if(_loc16_)
                        {
                           this.§_-qv§ = this.mWorld.§_-S0§(_loc12_);
                           if(_loc16_ || param3)
                           {
                              this.§_-qv§.§_-zJ§(this);
                              if(!(_loc17_ && param3))
                              {
                                 §§push(this.§_-02f§);
                                 if(!_loc17_)
                                 {
                                    §§push(§_-sQ§.§_-07J§);
                                    if(_loc16_ || param2)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc16_)
                                          {
                                             §§push(b2PolygonShape);
                                             §§push(this.§_-0AN§.shape.§_-ux§);
                                             if(!_loc17_)
                                             {
                                                §§push(param10);
                                                if(!(_loc17_ && param2))
                                                {
                                                   addr321:
                                                   §§push(§§pop() * §§pop());
                                                   §§push(this.§_-0AN§.shape.§_-09f§);
                                                   if(_loc16_)
                                                   {
                                                      addr327:
                                                      §§push(§§pop() * param10);
                                                   }
                                                   _loc14_ = §§pop().§_-yM§(§§pop(),§§pop());
                                                   if(_loc16_)
                                                   {
                                                      this.§_-hd§ = this.§_-qv§.CreateFixture2(_loc14_,this.§_-0AN§.§_-my§());
                                                      if(_loc16_ || param3)
                                                      {
                                                         addr410:
                                                         §§push(this.§_-hd§);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(this.§_-0AN§);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§§pop().§_-01h§());
                                                               if(!_loc17_)
                                                               {
                                                                  §§pop().§_-04G§(§§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr429:
                                                                     this.§_-hd§.§_-in§(this.§_-0AN§.§_-6R§());
                                                                  }
                                                                  var _loc13_:b2FilterData = new b2FilterData();
                                                                  if(_loc16_)
                                                                  {
                                                                     addr568:
                                                                     if(!this.§_-ye§())
                                                                     {
                                                                        addr526:
                                                                        §§push(this.§_-o2§.toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                        if(!(this.§_-o2§.toUpperCase() == "MISC_WHITE_BIRD_EGG"))
                                                                        {
                                                                           if(_loc16_ || param2)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc16_ || param1)
                                                                              {
                                                                                 §§push(this.§_-o2§);
                                                                                 if(!(_loc17_ && param2))
                                                                                 {
                                                                                    §§push(§§pop().toUpperCase() == "MISC_FOOD_EGG");
                                                                                    if(!(_loc17_ && param3))
                                                                                    {
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§goto(addr568);
                                                                                          }
                                                                                          addr501:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                _loc13_.§_-R-§ = §_-07Y§;
                                                                                                if(_loc16_ || param3)
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(65535);
                                                                                                      if(!(_loc17_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() & ~§_-xV§);
                                                                                                      }
                                                                                                      §§pop().§_-j6§ = §§pop();
                                                                                                      if(_loc16_ || this)
                                                                                                      {
                                                                                                         addr447:
                                                                                                         this.§_-hd§.§_-fL§(_loc13_);
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            this.§_-uZ§ = this.§_-0AN§.§_-GW§();
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr447);
                                                                                                               }
                                                                                                               §§push(this.§_-0AN§);
                                                                                                               if(!(_loc17_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop().§_-8l§);
                                                                                                                  if(_loc16_ || param1)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           if(_loc16_ || this)
                                                                                                                           {
                                                                                                                              this.§_-Kh§ = this.§_-8l§ = this.§_-0AN§.§_-8l§;
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 addr786:
                                                                                                                                 if(this.§_-0AN§.§_-kD§ != §_-0-A§.§_-k9§)
                                                                                                                                 {
                                                                                                                                    addr784:
                                                                                                                                    this.§_-U-§.setDamagedFrame();
                                                                                                                                    addr751:
                                                                                                                                    addr754:
                                                                                                                                    if(!this.isTexture())
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr785:
                                                                                                                                    if(param9 != 0)
                                                                                                                                    {
                                                                                                                                       addr768:
                                                                                                                                       if(!(_loc17_ && param3))
                                                                                                                                       {
                                                                                                                                          this.§_-7E§(param9);
                                                                                                                                          addr778:
                                                                                                                                       }
                                                                                                                                       §§goto(addr785);
                                                                                                                                    }
                                                                                                                                    this.§_-rj§();
                                                                                                                                    if(!(_loc17_ && param3))
                                                                                                                                    {
                                                                                                                                       this.§_-x0§(0,1);
                                                                                                                                       addr725:
                                                                                                                                       if(!(_loc17_ && param3))
                                                                                                                                       {
                                                                                                                                          if(_loc16_ || param3)
                                                                                                                                          {
                                                                                                                                             addr739:
                                                                                                                                             §§push(this.§_-U-§);
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                §§pop().§_-kR§(this.§_-0AN§.shape);
                                                                                                                                                if(_loc16_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc16_ || param2))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr751);
                                                                                                                                                            addr796:
                                                                                                                                                         }
                                                                                                                                                         return;
                                                                                                                                                         addr719:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr768);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr778);
                                                                                                                                                }
                                                                                                                                                §§goto(addr725);
                                                                                                                                             }
                                                                                                                                             §§goto(addr784);
                                                                                                                                             addr739:
                                                                                                                                          }
                                                                                                                                          addr792:
                                                                                                                                          this.§_-FQ§.visible = false;
                                                                                                                                          §§goto(addr796);
                                                                                                                                       }
                                                                                                                                       §§goto(addr784);
                                                                                                                                       addr750:
                                                                                                                                    }
                                                                                                                                    §§goto(addr785);
                                                                                                                                 }
                                                                                                                                 §§goto(addr792);
                                                                                                                              }
                                                                                                                              §§goto(addr778);
                                                                                                                           }
                                                                                                                           §§goto(addr739);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           this.§_-Kh§ = this.§_-8l§ = Math.round(this.§_-vw§(true) * this.§_-0AN§.§ get§());
                                                                                                                           if(_loc16_ || this)
                                                                                                                           {
                                                                                                                              §§push(this.§_-Kh§);
                                                                                                                              if(!(_loc17_ && this))
                                                                                                                              {
                                                                                                                                 addr655:
                                                                                                                                 §§push(1);
                                                                                                                                 if(_loc16_ || this)
                                                                                                                                 {
                                                                                                                                    addr663:
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc16_ || param3)
                                                                                                                                       {
                                                                                                                                          addr671:
                                                                                                                                          this.§_-Kh§ = this.§_-8l§ = 1;
                                                                                                                                          if(_loc16_ || param2)
                                                                                                                                          {
                                                                                                                                             addr687:
                                                                                                                                             §§goto(addr786);
                                                                                                                                          }
                                                                                                                                          §§goto(addr778);
                                                                                                                                       }
                                                                                                                                       §§goto(addr750);
                                                                                                                                    }
                                                                                                                                    §§goto(addr786);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr785);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr785);
                                                                                                                     }
                                                                                                                     §§goto(addr663);
                                                                                                                  }
                                                                                                                  §§goto(addr655);
                                                                                                               }
                                                                                                               §§goto(addr786);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr687);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr569:
                                                                                                      _loc13_.§_-R-§ = §_-xV§;
                                                                                                      if(_loc16_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         §§push(65535);
                                                                                                         if(!(_loc17_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() & ~§_-07Y§);
                                                                                                         }
                                                                                                         §§pop().§_-j6§ = §§pop();
                                                                                                         if(_loc16_ || param2)
                                                                                                         {
                                                                                                            §§goto(addr447);
                                                                                                         }
                                                                                                         §§goto(addr784);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr719);
                                                                                                }
                                                                                                §§goto(addr671);
                                                                                             }
                                                                                             §§goto(addr739);
                                                                                          }
                                                                                          §§goto(addr447);
                                                                                       }
                                                                                       §§goto(addr526);
                                                                                    }
                                                                                    §§goto(addr754);
                                                                                 }
                                                                                 §§goto(addr526);
                                                                              }
                                                                              §§goto(addr739);
                                                                           }
                                                                           §§goto(addr784);
                                                                        }
                                                                        §§goto(addr501);
                                                                     }
                                                                     §§goto(addr569);
                                                                  }
                                                                  §§goto(addr687);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr429);
                                                         addr350:
                                                      }
                                                      §§goto(addr429);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr327);
                                             }
                                             §§goto(addr321);
                                          }
                                          else
                                          {
                                             addr379:
                                             if(this.§_-02f§ == §_-sQ§.§_-2b§)
                                             {
                                                if(_loc16_)
                                                {
                                                   addr397:
                                                   this.§_-hd§ = this.§_-qv§.CreateFixture2(this.§_-0AN§.shape.§_-A1§(param10),this.§_-0AN§.§_-my§());
                                                }
                                             }
                                             §§goto(addr410);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§_-02f§);
                                          if(_loc16_ || this)
                                          {
                                             §§push(§_-sQ§.§_-WD§);
                                             if(!_loc17_)
                                             {
                                                addr364:
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc17_ && this))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc17_)
                                                      {
                                                         addr376:
                                                         §§pop();
                                                         if(!_loc17_)
                                                         {
                                                            §§goto(addr379);
                                                         }
                                                         §§goto(addr397);
                                                      }
                                                   }
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr376);
                                             }
                                          }
                                          §§goto(addr379);
                                       }
                                       §§goto(addr379);
                                    }
                                    §§goto(addr364);
                                 }
                              }
                              §§goto(addr379);
                           }
                           §§goto(addr397);
                        }
                        §§goto(addr410);
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      public static function §_-7C§(param1:int, param2:§_-a2§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            if(param2 == null)
            {
               if(!(_loc6_ && param2))
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:String;
            §§push(_loc4_ = param2.§_-XI§[param1]);
            if(!(_loc6_ && param2))
            {
               if(§§pop().length > 0)
               {
                  if(_loc5_ || param2)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        addr81:
                        if(§§pop().length <= 0)
                        {
                        }
                        §§goto(addr99);
                     }
                     param3 = §§pop();
                     if(_loc6_)
                     {
                     }
                  }
                  §§goto(addr99);
               }
               addr99:
               if(_loc5_ || param3)
               {
                  §§push(param2.§_-Bg§);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                  }
               }
               §_-pX§.§_-o5§(_loc4_,param3);
               return;
            }
            §§goto(addr81);
         }
         addr33:
      }
      
      public static function §_-R1§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(180);
            if(!(_loc3_ && §_-eZ§))
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_)
                  {
                     addr61:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public static function §_-3X§(param1:Number) : Number
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
         if(_loc4_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc4_ || §_-eZ§)
            {
               addr48:
               return Number(§§pop());
            }
         }
         §§goto(addr48);
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function get scale() : Number
      {
         return this.§_-XE§;
      }
      
      public function get front() : Boolean
      {
         return this.§_-05j§;
      }
      
      public function get §_-dB§() : Number
      {
         return this.§_-qv§.GetPosition().x;
      }
      
      public function get §_-5X§() : Number
      {
         return this.§_-qv§.GetPosition().y;
      }
      
      public function get §_-zm§() : §_-0-A§
      {
         return this.§_-0AN§;
      }
      
      public function get §_-0Cj§() : Boolean
      {
         return this.§_-uZ§ >= 0;
      }
      
      protected function get §_-jX§() : §_-30§
      {
         return this.§_-7c§;
      }
      
      public function get §_-ON§() : Boolean
      {
         return this.§_-kc§;
      }
      
      public function set §_-ON§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-kc§ = param1;
         }
      }
      
      public function set §_-mH§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-88§ = param1;
         }
      }
      
      public function set §_-Oy§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-CU§ = param1;
         }
      }
      
      public function get §_-Oy§() : uint
      {
         return this.§_-CU§;
      }
      
      public function get §_-0N§() : Boolean
      {
         return this.§_-0BO§;
      }
      
      public function set §_-0N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-0BO§ = param1;
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
         return this.§_-9U§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-9U§ = param1;
         }
      }
      
      public function §_-wj§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-hd§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     addr48:
                     this.§_-hd§.§_-fL§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      protected function §_-08L§(param1:String) : int
      {
         return §_-Hv§.§_-08L§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc5_ || param1)
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr123:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         return _loc3_;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.mWorld);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr132:
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr134:
                     while(true)
                     {
                        §§pop().§_-yl§(this.§_-SJ§());
                        addr137:
                        while(true)
                        {
                           this.mWorld = null;
                           addr126:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr132:
               }
               loop0:
               while(true)
               {
                  this.§_-U-§.dispose();
                  loop1:
                  while(true)
                  {
                     §§push(this.§_-FQ§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              addr89:
                              this.§_-FQ§.dispose();
                           }
                           while(!(_loc1_ && this))
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    this.§_-FQ§ = null;
                                    loop3:
                                    while(true)
                                    {
                                       addr45:
                                       while(true)
                                       {
                                          this.§_-hd§ = null;
                                          continue loop3;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr132);
                                 }
                              }
                              §§goto(addr137);
                              if(!(_loc1_ && this))
                              {
                                 this.§_-rb§ = null;
                                 while(!_loc1_)
                                 {
                                    this.§_-0AN§ = null;
                                    if(_loc1_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr30);
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr45);
                     }
                     §§goto(addr89);
                  }
               }
            }
            §§goto(addr134);
         }
         §§goto(addr132);
      }
      
      public function §_-7E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§_-SJ§());
            §§push(360);
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(_loc3_ || param1)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§_-2T§(§§pop());
         }
      }
      
      public function §_-NN§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(360);
         §§push(this.§_-SJ§().GetAngle());
         if(_loc1_)
         {
            §§push(180);
            if(_loc1_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  §§goto(addr38);
               }
            }
            §§goto(addr43);
         }
         addr38:
         §§push(§§pop() / Math.PI);
         if(!_loc2_)
         {
            addr43:
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc1_ || _loc1_)
         {
            return §§pop() % 360;
         }
      }
      
      public function §_-To§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§_-SJ§().SetLinearVelocity(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && param2))
                     {
                        while(true)
                        {
                           this.§_-sZ§();
                        }
                        addr78:
                     }
                     while(true)
                     {
                     }
                     addr80:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc5_ || param3)
                           {
                              if(_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 this.§_-0Cl§();
                              }
                              else
                              {
                                 §§goto(addr80);
                              }
                           }
                           break;
                        }
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-hd§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(this.§_-SJ§());
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
                              if(!§§pop())
                              {
                                 loop12:
                                 while(true)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(!(_loc5_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             loop15:
                                             for(; _loc6_; while(true)
                                             {
                                                if(_loc5_ && param2)
                                                {
                                                   continue loop15;
                                                }
                                             })
                                             {
                                                §§pop();
                                                loop16:
                                                while(!(_loc5_ && param3))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§_-SJ§());
                                                      addr84:
                                                      while(_loc6_ || param3)
                                                      {
                                                         §§push(§§pop().GetPosition());
                                                         loop23:
                                                         while(true)
                                                         {
                                                            if(_loc5_ && param1)
                                                            {
                                                               while(_loc6_ || param1)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  continue loop23;
                                                               }
                                                               continue loop1;
                                                               addr158:
                                                            }
                                                            addr166:
                                                            §§push(§§pop().y);
                                                            while(!(_loc5_ && param3))
                                                            {
                                                               §§push(param1);
                                                               while(true)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() >= §§pop());
                                                                     continue loop15;
                                                                  }
                                                                  addr167:
                                                                  addr167:
                                                                  while(true)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                            addr110:
                                                            while(true)
                                                            {
                                                               §§goto(addr167);
                                                               §§goto(addr110);
                                                            }
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(!(_loc6_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§_-SJ§());
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(§§pop().GetPosition());
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(_loc5_ && this)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(param2);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc6_ || param3))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr77);
                                                                  }
                                                                  addr207:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     break loop16;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr118);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr110);
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr102);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr84);
                                                      }
                                                      §§goto(addr102);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§_-SJ§());
                                                   continue loop0;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc6_ || this))
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr138);
                                             }
                                             addr77:
                                             return §§pop();
                                             §§goto(addr121);
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              §§goto(addr207);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr198);
      }
      
      public function §_-jc§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§_-rb§ = param1;
         }
      }
      
      public function §_-03C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§_-rb§)
            {
               if(!_loc1_)
               {
                  addr51:
                  this.§_-To§(this.§_-rb§,false);
               }
               do
               {
                  this.§_-rb§ = null;
               }
               while(!(_loc2_ || _loc1_));
               
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §_-sZ§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!param1)
            {
               if(!_loc2_)
               {
                  §§push(this.§_-SJ§());
                  if(!(_loc2_ && param1))
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr40:
                     §§push(param1.x);
                     if(_loc3_ || this)
                     {
                        §§push(0);
                        if(!_loc2_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc3_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    addr74:
                                    §§pop();
                                    §§goto(addr126);
                                 }
                              }
                              if(!§§pop())
                              {
                                 §§push(this.§_-SJ§());
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr104:
                                    §§pop().§_-ZF§(Math.atan2(param1.x,param1.y));
                                    if(_loc3_)
                                    {
                                       if(_loc3_ || this)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              addr126:
                              if(_loc3_)
                              {
                                 addr124:
                                 §§push(param1.y == 0);
                                 addr77:
                              }
                              this.§_-SJ§().§_-ZF§(0);
                              return;
                           }
                           §§goto(addr74);
                        }
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr104);
               }
               §§goto(addr74);
            }
            §§goto(addr40);
         }
         §§goto(addr77);
      }
      
      public function §_-0Cl§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               param1 = this.§_-SJ§().GetLinearVelocity();
               addr20:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!(_loc4_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               this.§_-7E§(_loc2_);
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function §_-43§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-SJ§().§_-ZF§(param1);
         }
      }
      
      public function §_-SJ§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§_-hd§);
            if(!_loc1_)
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     §§push(this.§_-hd§);
                  }
                  else
                  {
                     §§goto(addr46);
                  }
               }
               §§goto(addr46);
            }
            return §§pop().GetBody();
         }
         addr46:
         return null;
      }
      
      public function §_-7e§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(param1 != -9999)
            {
               if(_loc3_ || param1)
               {
                  addr133:
                  this.§_-c§ = param1;
               }
               loop0:
               while(true)
               {
                  this.§_-l1§ = param2;
                  addr122:
                  while(true)
                  {
                     addr80:
                     if(_loc3_ || param1)
                     {
                        return;
                     }
                  }
                  loop7:
                  while(true)
                  {
                     if(_loc4_ && param2)
                     {
                        continue loop0;
                     }
                     §§push(this.§_-SJ§());
                     if(_loc3_ || this)
                     {
                        §§push(§§pop().GetPosition());
                        if(_loc3_)
                        {
                           §§push(this.§_-l1§);
                           if(!_loc4_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr52:
                                 §§push(§_-00u§.§_-lY§);
                                 if(_loc3_ || param1)
                                 {
                                    addr72:
                                    §§pop().y = §§pop() * §§pop();
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    §§goto(addr80);
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    §§goto(addr52);
                                 }
                                 addr108:
                              }
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop7;
                              }
                              addr109:
                           }
                           §§goto(addr72);
                        }
                        while(true)
                        {
                           §§push(this.§_-c§);
                           if(_loc3_)
                           {
                              §§goto(addr108);
                              §§push(§_-00u§.§_-lY§);
                           }
                           §§goto(addr109);
                        }
                        addr92:
                     }
                     while(true)
                     {
                        §§goto(addr92);
                        §§goto(addr117);
                     }
                     addr117:
                  }
                  §§goto(addr122);
               }
            }
            while(true)
            {
               §§goto(addr91);
               §§goto(addr122);
            }
         }
         §§goto(addr133);
      }
      
      public function §_-x0§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(_loc6_)
         {
            §§push(this.§_-07A§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(true);
                     loop2:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop3:
                        while(true)
                        {
                           this.§_-07A§ = false;
                           loop4:
                           while(true)
                           {
                              addr95:
                              if(!(_loc6_ || param2))
                              {
                                 continue;
                              }
                              addr102:
                              §§push(this.§_-FQ§);
                              if(_loc6_ || this)
                              {
                                 addr38:
                                 §§push(this.§_-0Cn§);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() / 180);
                                    if(_loc6_ || param2)
                                    {
                                       §§push(§§pop() * Math.PI);
                                    }
                                 }
                                 §§pop().rotation = §§pop();
                                 if(!_loc5_)
                                 {
                                    if(_loc6_)
                                    {
                                       addr59:
                                       if(!(_loc6_ || param2))
                                       {
                                          while(true)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                §§push(this.updateBlinkingFrameAnimations(param2));
                                                if(_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop18:
                                                      for(; _loc6_ || this; while(true)
                                                      {
                                                         if(_loc5_ && param2)
                                                         {
                                                            continue loop18;
                                                         }
                                                         §§goto(addr103);
                                                      })
                                                      {
                                                         §§push(true);
                                                         loop48:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            loop49:
                                                            while(true)
                                                            {
                                                               addr307:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  addr309:
                                                                  loop20:
                                                                  while(_loc6_ || param2)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(this.§_-U-§);
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§_-JE§();
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-JZ§);
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() > 1);
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop48;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr291:
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         addr298:
                                                                                                         if(_loc5_ && param2)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§_-U-§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop().§_-yS§));
                                                                                                               addr236:
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop31:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(4);
                                                                                                                           §§push(this.§_-U-§.§_-yS§.blurX - 4);
                                                                                                                           if(_loc6_ || param2)
                                                                                                                           {
                                                                                                                              §§push(param2);
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / 20);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                        addr238:
                                                                                                                     }
                                                                                                                     loop38:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§_-U-§);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§pop().§_-bJ§(param2);
                                                                                                                              continue loop31;
                                                                                                                           }
                                                                                                                           addr225:
                                                                                                                           while(_loc6_)
                                                                                                                           {
                                                                                                                              §§pop().§_-yS§.blurX = _loc4_;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§_-U-§);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().§_-yS§.blurY = _loc4_;
                                                                                                                           addr219:
                                                                                                                           while(_loc6_)
                                                                                                                           {
                                                                                                                              continue loop38;
                                                                                                                           }
                                                                                                                           §§goto(addr230);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  break loop20;
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                            addr349:
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                         §§goto(addr291);
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                      addr346:
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr212);
                                                                                                            }
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      this.§_-0Cn§ = this.§_-0EG§;
                                                                                                      loop47:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§_-c§ = this.§_-Wh§;
                                                                                                         addr140:
                                                                                                         while(_loc5_)
                                                                                                         {
                                                                                                            continue loop47;
                                                                                                         }
                                                                                                         addr119:
                                                                                                         this.§_-l1§ = this.§_-lZ§;
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr123:
                                                                                                            if(_loc6_ || param2)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr134:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§_-FQ§);
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().x = Math.round(this.§_-c§);
                                                                                                                           loop43:
                                                                                                                           while(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(this.§_-FQ§);
                                                                                                                              while(!_loc5_)
                                                                                                                              {
                                                                                                                                 §§pop().y = Math.round(this.§_-l1§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop43;
                                                                                                                                    }
                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc5_ && param2)
                                                                                                                                       {
                                                                                                                                          continue loop49;
                                                                                                                                       }
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr95);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr349);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr140);
                                                                                                                                    }
                                                                                                                                    §§goto(addr38);
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                                 §§goto(addr102);
                                                                                                                              }
                                                                                                                              continue loop42;
                                                                                                                           }
                                                                                                                           §§goto(addr119);
                                                                                                                        }
                                                                                                                        §§goto(addr134);
                                                                                                                     }
                                                                                                                     continue loop18;
                                                                                                                     addr103:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr379);
                                                                                                                  }
                                                                                                                  addr378:
                                                                                                               }
                                                                                                               §§goto(addr306);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr225);
                                                                                                               §§goto(addr123);
                                                                                                            }
                                                                                                            addr279:
                                                                                                         }
                                                                                                         §§goto(addr219);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr379);
                                                                                                }
                                                                                                while(!_loc5_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr378);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr346);
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr388:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         addr389:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            _loc3_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr388:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr375);
                                                                                                   }
                                                                                                }
                                                                                                addr375:
                                                                                                addr387:
                                                                                             }
                                                                                             §§goto(addr236);
                                                                                          }
                                                                                          continue loop48;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  while(!_loc5_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     continue loop17;
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr389);
                                                                  continue loop49;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(_loc6_)
                                                      {
                                                         §§goto(addr342);
                                                      }
                                                      §§goto(addr392);
                                                   }
                                                   §§goto(addr307);
                                                }
                                                §§goto(addr340);
                                             }
                                             §§goto(addr59);
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr70);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr387);
               }
            }
         }
         §§goto(addr388);
      }
      
      public function §_-rj§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§_-SJ§().GetPosition().x);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§_-SJ§().GetPosition().y);
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.§_-DK§ = this.§_-0EG§;
         }
         loop0:
         while(true)
         {
            this.§_-j8§ = this.§_-Wh§;
            while(true)
            {
               this.§_-02§ = this.§_-lZ§;
               loop2:
               for(; _loc4_ || _loc3_; while(!(_loc3_ && _loc2_))
               {
                  §§push(this);
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / §_-00u§.§_-lY§);
                  }
                  §§pop().§_-lZ§ = §§pop();
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     return;
                  }
                  §§goto(addr125);
               })
               {
                  §§push(this);
                  §§push(this.§_-SJ§().GetAngle());
                  if(_loc4_)
                  {
                     §§push(180);
                     if(_loc4_ || this)
                     {
                        addr124:
                        §§push(§§pop() * (§§pop() / Math.PI));
                        if(!(_loc3_ && this))
                        {
                           §§push(360);
                        }
                        §§pop().§_-0EG§ = §§pop();
                        while(_loc4_)
                        {
                           §§push(this);
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              §§push(§§pop() / §_-00u§.§_-lY§);
                           }
                           §§pop().§_-Wh§ = §§pop();
                           continue loop2;
                        }
                        continue loop0;
                        addr125:
                     }
                     §§push(§§pop() % §§pop());
                  }
                  §§goto(addr124);
               }
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
      
      public function §_-r§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
                        §§push(§_-FK§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(_loc3_)
                        {
                           §§push(§§pop() + param1);
                           if(_loc3_)
                           {
                              addr921:
                              §§push(§§pop() + " overriding to 0");
                           }
                           §§pop().log(§§pop());
                           loop3:
                           while(true)
                           {
                              addr896:
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
                                             §§push(this.§_-7c§.§_-6A§.mLevelEngine.§_-Jk§);
                                             addr905:
                                             while(true)
                                             {
                                                §§push(1000);
                                                addr906:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr907:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr908:
                                                      while(true)
                                                      {
                                                         param2 = §§pop();
                                                         addr909:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr900:
                                       }
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(-1);
                                             loop15:
                                             while(_loc3_ || this)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop16:
                                                for(; !_loc4_; while(!(_loc4_ && param1))
                                                {
                                                   §§goto(addr420);
                                                   §§push(this.§_-0EG§);
                                                   §§goto(addr260);
                                                })
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(this.§_-Wh§);
                                                         loop19:
                                                         while(_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(this.§_-j8§);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 addr833:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                 }
                                                                                 addr534:
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(this.§_-0EG§);
                                                                                 loop62:
                                                                                 for(; _loc3_ || this; while(_loc3_ || param1)
                                                                                 {
                                                                                    §§goto(addr258);
                                                                                    §§push(§§pop() - §§pop());
                                                                                 })
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    loop63:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(180);
                                                                                       loop64:
                                                                                       while(_loc3_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          loop65:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                loop66:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§_-0EG§);
                                                                                                         if(_loc3_ || param2)
                                                                                                         {
                                                                                                            §§push(param1);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(this.§_-DK§);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - this.§_-0EG§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr599:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        addr597:
                                                                                                                        §§push(§§pop() / param2);
                                                                                                                     }
                                                                                                                     §§pop().§_-0Cn§ = §§pop() + §§pop();
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        loop43:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              loop44:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§_-0EG§);
                                                                                                                                 loop45:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-DK§);
                                                                                                                                    addr674:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       addr675:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          addr676:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                loop49:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc4_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      loop50:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1);
                                                                                                                                                         addr644:
                                                                                                                                                         addr484:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            break loop64;
                                                                                                                                                         }
                                                                                                                                                         addr484:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr19);
                                                                                                                                                            }
                                                                                                                                                            continue loop50;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr685:
                                                                                                                                                   }
                                                                                                                                                   addr774:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr775:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1);
                                                                                                                                                         break loop49;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   addr755:
                                                                                                                                                   while(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      loop40:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr759:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§_-yE§ = 0;
                                                                                                                                                                  addr763:
                                                                                                                                                                  while(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     this.§_-l1§ = this.§_-lZ§;
                                                                                                                                                                     continue loop44;
                                                                                                                                                                  }
                                                                                                                                                                  addr839:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_ && param2)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§_-c§ = this.§_-Wh§;
                                                                                                                                                                           addr827:
                                                                                                                                                                           while(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§_-lZ§);
                                                                                                                                                                                 addr769:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§_-02§);
                                                                                                                                                                                    addr771:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                       addr772:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          addr773:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop40;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr774);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr829);
                                                                                                                                                                              }
                                                                                                                                                                              addr829:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop18;
                                                                                                                                                                           addr827:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop2;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop24;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr909);
                                                                                                                                                               }
                                                                                                                                                               addr760:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(param1);
                                                                                                                                                               if(_loc3_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§_-02§);
                                                                                                                                                                  if(!(_loc4_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - this.§_-lZ§);
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        addr730:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param2);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§_-yE§ = §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr738:
                                                                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 §§push(this.§_-lZ§);
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + this.§_-yE§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§_-l1§ = §§pop();
                                                                                                                                                                                 continue loop43;
                                                                                                                                                                              }
                                                                                                                                                                              addr821:
                                                                                                                                                                              while(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr766);
                                                                                                                                                                                 §§goto(addr738);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 §§push(this.§_-Wh§);
                                                                                                                                                                                 if(_loc3_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + this.§_-02Q§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§_-c§ = §§pop();
                                                                                                                                                                                 §§goto(addr791);
                                                                                                                                                                              }
                                                                                                                                                                              addr791:
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                           addr362:
                                                                                                                                                                           if(!(_loc3_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr19);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr775);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr730);
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr730);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr775);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop6;
                                                                                                                                                }
                                                                                                                                                addr754:
                                                                                                                                                addr677:
                                                                                                                                             }
                                                                                                                                             addr648:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(this.§_-DK§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-0EG§);
                                                                                                                                                            break loop62;
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop45;
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                   addr608:
                                                                                                                                                }
                                                                                                                                                addr650:
                                                                                                                                                if(_loc3_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc4_ && param1))
                                                                                                                                                   {
                                                                                                                                                      this.§_-0Cn§ = this.§_-0EG§;
                                                                                                                                                      addr19:
                                                                                                                                                      return;
                                                                                                                                                      addr668:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§_-02Q§ = 0;
                                                                                                                                                         §§goto(addr839);
                                                                                                                                                      }
                                                                                                                                                      addr836:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr827);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr669:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr669);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr19);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr597);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr599);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this.§_-DK§);
                                                                                                      loop67:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§_-0EG§);
                                                                                                         loop68:
                                                                                                         while(!(_loc4_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() > §§pop());
                                                                                                            loop69:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr508:
                                                                                                               while(_loc3_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(_loc3_ || param2)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     §§goto(addr675);
                                                                                                                     addr511:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     loop77:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr433:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§push(this.§_-DK§);
                                                                                                                              continue loop67;
                                                                                                                           }
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§_-0EG§);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(param1);
                                                                                                                                    if(!(_loc4_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-DK§);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - 360);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - this.§_-0EG§);
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                addr482:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc4_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(param2);
                                                                                                                                                }
                                                                                                                                                §§pop().§_-0Cn§ = §§pop() + §§pop();
                                                                                                                                                §§goto(addr484);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr482);
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr482);
                                                                                                                              }
                                                                                                                              addr436:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop76:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop77;
                                                                                                                           addr68:
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(!(_loc3_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(!(_loc3_ || param1))
                                                                                                                           {
                                                                                                                              continue loop64;
                                                                                                                           }
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr107:
                                                                                                                                                   if(_loc3_ || param2)
                                                                                                                                                   {
                                                                                                                                                      addr114:
                                                                                                                                                      if(_loc4_ && param2)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(this.§_-0EG§);
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1);
                                                                                                                                                         if(!(_loc4_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-DK§);
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + 360);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - this.§_-0EG§);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr158:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        addr156:
                                                                                                                                                                        §§push(§§pop() / param2);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§_-0Cn§ = §§pop() + §§pop();
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc4_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr19);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr599);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        loop94:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§_-0EG§);
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr28:
                                                                                                                                                                                       if(!(_loc4_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr35:
                                                                                                                                                                                          §§push(this.§_-DK§);
                                                                                                                                                                                          if(!(_loc4_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr44:
                                                                                                                                                                                             if(_loc4_ && param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      addr397:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr305);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr402);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr623);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop22;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr44);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop68;
                                                                                                                                                                                                addr393:
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop1;
                                                                                                                                                                                                addr420:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr54:
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(_loc3_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(180);
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr68);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                                                                                                                            loop89:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc3_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr298:
                                                                                                                                                                                                                  if(_loc3_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr423:
                                                                                                                                                                                                                     loop90:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr174:
                                                                                                                                                                                                                           §§push(this.§_-DK§);
                                                                                                                                                                                                                           while(_loc3_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc3_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop90;
                                                                                                                                                                                                                                 addr190:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(this.§_-0EG§);
                                                                                                                                                                                                                              loop92:
                                                                                                                                                                                                                              while(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc3_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop89;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop65;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr620:
                                                                                                                                                                                                                                    addr402:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§_-0EG§);
                                                                                                                                                                                                                                             addr246:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§_-DK§);
                                                                                                                                                                                                                                                   break loop92;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                §§goto(addr28);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr908);
                                                                                                                                                                                                                                             §§goto(addr107);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr433);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr909);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       while(_loc3_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop66;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             break loop89;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr676);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr759);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr35);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop62;
                                                                                                                                                                                                                              §§goto(addr54);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr260:
                                                                                                                                                                                                                                 if(_loc4_ && param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop63;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop67;
                                                                                                                                                                                                                              §§goto(addr174);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr174:
                                                                                                                                                                                                                           continue loop16;
                                                                                                                                                                                                                           addr258:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           §§push(this.§_-0EG§);
                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1);
                                                                                                                                                                                                                              if(_loc3_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§_-DK§);
                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - this.§_-0EG§);
                                                                                                                                                                                                                                    if(!(_loc4_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr352:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(_loc3_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr350:
                                                                                                                                                                                                                                          §§push(§§pop() / param2);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().§_-0Cn§ = §§pop() + §§pop();
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop94;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc4_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr362);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr668);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr350);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr352);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr900);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(!(_loc4_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop76;
                                                                                                                                                                                                                        §§goto(addr181);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr534);
                                                                                                                                                                                                                        §§goto(addr423);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr423:
                                                                                                                                                                                                                     §§goto(addr644);
                                                                                                                                                                                                                     addr532:
                                                                                                                                                                                                                     addr305:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§_-j8§);
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - this.§_-Wh§);
                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr820:
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param2);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().§_-02Q§ = §§pop();
                                                                                                                                                                                                                                    §§goto(addr821);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr820);
                                                                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr820);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr298);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr835:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr836);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr631);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc3_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr532);
                                                                                                                                                                                                                     §§push(this.§_-DK§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr763);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr650);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr827);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr833);
                                                                                                                                                                                                      addr279:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr755);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr608);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr174);
                                                                                                                                                                                             §§goto(addr423);
                                                                                                                                                                                             §§goto(addr396);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr190);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr246);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr54);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr632);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr434);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr352);
                                                                                                                                                                           §§pop();
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr484);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr685);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr156);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr158);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr407);
                                                                                                                                                }
                                                                                                                                                §§goto(addr307);
                                                                                                                                             }
                                                                                                                                             §§goto(addr158);
                                                                                                                                          }
                                                                                                                                          §§goto(addr19);
                                                                                                                                       }
                                                                                                                                       continue loop3;
                                                                                                                                       addr96:
                                                                                                                                    }
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 continue loop69;
                                                                                                                              }
                                                                                                                              §§goto(addr396);
                                                                                                                           }
                                                                                                                           §§goto(addr224);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr760);
                                                                                                               }
                                                                                                               §§goto(addr773);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr771);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr677);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr646);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr620);
                                                                                    §§goto(addr543);
                                                                                 }
                                                                                 addr543:
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr835);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr907);
                                                      }
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr906);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr921);
                     }
                  }
                  §§goto(addr896);
               }
            }
         }
         §§goto(addr436);
      }
      
      public function get §_-xM§() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!§_-ko§)
            {
            }
         }
         return null;
      }
      
      public function §_-ye§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-kD§);
            if(_loc2_)
            {
               §§push(§_-0-A§.§_-Rh§);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && this))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           addr69:
                           §§pop();
                           return this.§_-kD§ == §_-0-A§.§_-AS§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §_-Es§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-Zt§;
      }
      
      public function §_-rN§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-gO§;
      }
      
      public function §_-21§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-AS§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-VN§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-k9§;
      }
      
      public function §_-KD§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-OZ§;
      }
      
      public function §_-oj§() : Boolean
      {
         return this.§_-kD§ == §_-0-A§.§_-FB§;
      }
      
      public function §_-md§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-o2§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr88:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
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
                                 if(_loc2_)
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
                                 addr19:
                                 §§push(false);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break;
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                    addr91:
                                 }
                                 if(_loc1_ || _loc1_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              addr74:
                           }
                           §§goto(addr19);
                        }
                        return §§pop();
                        addr67:
                     }
                     §§goto(addr91);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §_-r-§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-Es§());
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
                        while(true)
                        {
                           §§pop();
                           addr139:
                           while(true)
                           {
                              §§push(this.§_-KD§());
                              addr120:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr138:
                     }
                     while(true)
                     {
                        loop7:
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
                                    if(_loc1_ || this)
                                    {
                                       §§pop();
                                       loop13:
                                       while(true)
                                       {
                                          §§push(this.§_-oj§());
                                          if(_loc1_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc1_)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            break;
                                                            addr87:
                                                         }
                                                         while(_loc1_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§pop();
                                                            if(!(_loc1_ || this))
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               break loop9;
                                                            }
                                                            §§push(this.§_-0N§);
                                                            if(_loc1_ || this)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            if(!_loc1_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc2_ && _loc1_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc1_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  break loop11;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr120);
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop8;
                                                }
                                                return §§pop();
                                             }
                                             addr75:
                                          }
                                          §§goto(addr87);
                                       }
                                       addr132:
                                    }
                                    else
                                    {
                                       §§goto(addr138);
                                    }
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr75);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-06L§() : Number
      {
         return Number(Math.sqrt(this.§_-SJ§().GetLinearVelocity().x * this.§_-SJ§().GetLinearVelocity().x + this.§_-SJ§().GetLinearVelocity().y * this.§_-SJ§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc9_)
         {
            §§push(this.§_-rN§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§_-7c§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§_-5u§());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§_-uZ§);
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
                                                   addr749:
                                                   while(true)
                                                   {
                                                      §§push(param6);
                                                      addr720:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                }
                                                addr748:
                                             }
                                             while(true)
                                             {
                                                loop13:
                                                for(; !§§pop(); while(!(_loc10_ && param3))
                                                {
                                                   §§goto(addr523);
                                                   §§push(§§pop());
                                                })
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop15:
                                                      while(_loc9_ || param1)
                                                      {
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(this.§_-uZ§);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-uZ§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(!(_loc10_ && param3))
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              loop19:
                                                                              for(; !(_loc10_ && this); while(true)
                                                                              {
                                                                                 if(!(_loc10_ && param3))
                                                                                 {
                                                                                    if(_loc10_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(1);
                                                                                    loop39:
                                                                                    while(!_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop51:
                                                                                                      for(; !_loc10_; if(!(_loc9_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(_loc9_ || param3)
                                                                                                      {
                                                                                                         if(_loc9_ || param2)
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(!_loc10_)
                                                                                                                     {
                                                                                                                        this.§_-Kh§ = 1;
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_ || this)
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && param1))
                                                                                                                              {
                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-Kh§);
                                                                                                                                       loop44:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(1);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                         {
                                                                                                                                                            this.§_-Dv§(§_-a2§.§_-lC§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        this.addDamageParticles(this.§_-7c§.§_-6A§.particles,param1);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop42;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc10_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc10_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr670);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr640);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr298);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr69:
                                                                                                                                                                        if(!(_loc10_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop44;
                                                                                                                                                                        }
                                                                                                                                                                        addr690:
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr717);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr671);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr477);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr318);
                                                                                                                                                               if(_loc10_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr69);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(!(_loc10_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        this.§_-Kh§ = 0;
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §_-eZ§.§_-7C§(§_-a2§.§_-05f§,this.§_-0AN§.§_-jf§,"ChannelDestroyed");
                                                                                                                                                                              continue loop42;
                                                                                                                                                                           }
                                                                                                                                                                           addr660:
                                                                                                                                                                           §§goto(addr661);
                                                                                                                                                                           §§push(param1);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr621);
                                                                                                                                                                     addr174:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr184);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr457);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr174);
                                                                                                                                                      }
                                                                                                                                                      addr735:
                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                      {
                                                                                                                                                         addr697:
                                                                                                                                                         §§push(param1);
                                                                                                                                                         break loop39;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr736);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop39;
                                                                                                                                             }
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          §§goto(addr468);
                                                                                                                                       }
                                                                                                                                       addr683:
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          addr684:
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             this.§_-Dv§(§_-a2§.§_-H0§);
                                                                                                                                             §§goto(addr690);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr740);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr671);
                                                                                                                                    }
                                                                                                                                    addr149:
                                                                                                                                 }
                                                                                                                                 §§goto(addr684);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr484);
                                                                                                                        }
                                                                                                                        §§goto(addr532);
                                                                                                                     }
                                                                                                                     §§goto(addr332);
                                                                                                                  }
                                                                                                                  §§goto(addr149);
                                                                                                               }
                                                                                                               addr223:
                                                                                                            }
                                                                                                            addr617:
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr619);
                                                                                                            }
                                                                                                            §§goto(addr748);
                                                                                                         }
                                                                                                         §§goto(addr483);
                                                                                                      },§§goto(addr307))
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(_loc9_)
                                                                                                            {
                                                                                                               §§push(this.§_-ye§());
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue loop51;
                                                                                                               }
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  continue loop51;
                                                                                                               }
                                                                                                               §§goto(addr387);
                                                                                                            }
                                                                                                            §§goto(addr388);
                                                                                                            addr298:
                                                                                                         }
                                                                                                         §§goto(addr359);
                                                                                                      }
                                                                                                      §§goto(addr304);
                                                                                                      addr293:
                                                                                                   }
                                                                                                   §§goto(addr223);
                                                                                                }
                                                                                                §§goto(addr636);
                                                                                             }
                                                                                             §§goto(addr377);
                                                                                          }
                                                                                          §§goto(addr635);
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          §§goto(addr706);
                                                                                       }
                                                                                       §§push(param1);
                                                                                       break loop15;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop19;
                                                                              },§§goto(addr674))
                                                                              {
                                                                                 param1 = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§push(param2);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(!(_loc10_ && param3))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          continue loop13;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    loop58:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc10_ && param1))
                                                                                       {
                                                                                          §§pop();
                                                                                          loop59:
                                                                                          while(_loc9_)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§goto(addr757);
                                                                                             }
                                                                                             §§push(this.§_-r-§());
                                                                                             loop60:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr483:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(!_loc10_)
                                                                                                         {
                                                                                                            §§push(int(Math.min(this.§_-Kh§,int(param1))));
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               addr495:
                                                                                                               addr765:
                                                                                                               while(!(_loc10_ && this))
                                                                                                               {
                                                                                                                  §§push(§_-00u§.§_-KE§.getValue());
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc7_);
                                                                                                                        while(_loc9_ || param1)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                        }
                                                                                                                        continue loop18;
                                                                                                                        addr468:
                                                                                                                     }
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     addr477:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§_-7c§);
                                                                                                                        if(!(_loc9_ || param2))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop().§_-6A§);
                                                                                                                        §§push(_loc8_);
                                                                                                                        §§push(§_-40§.§_-0Av§);
                                                                                                                        if(_loc9_ || this)
                                                                                                                        {
                                                                                                                           §§push(this.§_-Kh§ > param1);
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc9_ || this)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr435:
                                                                                                                                    §§push(param3);
                                                                                                                                    if(!(_loc10_ && param3))
                                                                                                                                    {
                                                                                                                                       addr443:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§_-SJ§().GetPosition().x,this.§_-SJ§().GetPosition().y,§_-Hv§.§_-04e§(this.§_-o2§));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr340:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param5);
                                                                                                                                    if(!(_loc10_ && param2))
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || param2)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             while(_loc9_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr387:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr388:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        break loop13;
                                                                                                                                                                     }
                                                                                                                                                                     this.§_-Dv§(§_-a2§.§_-lC§);
                                                                                                                                                                     addr304:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§_-88§);
                                                                                                                                                                  while(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop58;
                                                                                                                                                                        }
                                                                                                                                                                        addr309:
                                                                                                                                                                        if(_loc10_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           addr634:
                                                                                                                                                                           addr636:
                                                                                                                                                                           addr635:
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           if(Boolean(§§pop()))
                                                                                                                                                                           {
                                                                                                                                                                              addr637:
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr607:
                                                                                                                                                                                 §§push(this.§_-Kh§);
                                                                                                                                                                                 §§push(this.§_-8l§);
                                                                                                                                                                                 break loop18;
                                                                                                                                                                                 addr640:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr720);
                                                                                                                                                                           }
                                                                                                                                                                           addr619:
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§_-Kh§);
                                                                                                                                                                              break loop19;
                                                                                                                                                                              addr621:
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(this.§_-8l§);
                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§_-Kh§ = §§pop();
                                                                                                                                                                              break loop59;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop4;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(this.§_-Kh§);
                                                                                                                                                                              if(!(_loc10_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - param1);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§_-Kh§ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_ && param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr762:
                                                                                                                                                                                    §§push(this.§_-Kh§);
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr764:
                                                                                                                                                                              return §§pop();
                                                                                                                                                                              addr332:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           addr318:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§_-Kh§);
                                                                                                                                                                              continue loop19;
                                                                                                                                                                              §§goto(addr318);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr309);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop13;
                                                                                                                                                                  addr674:
                                                                                                                                                                  return this.§_-Kh§;
                                                                                                                                                                  addr671:
                                                                                                                                                                  addr717:
                                                                                                                                                                  addr706:
                                                                                                                                                               }
                                                                                                                                                               addr666:
                                                                                                                                                               addr631:
                                                                                                                                                               this.§_-Dv§(§_-a2§.§_-H0§);
                                                                                                                                                               addr670:
                                                                                                                                                               §§goto(addr634);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr387:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr316);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop58;
                                                                                                                                                         }
                                                                                                                                                         continue loop23;
                                                                                                                                                      }
                                                                                                                                                      addr523:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop8;
                                                                                                                                             }
                                                                                                                                             continue loop7;
                                                                                                                                             addr359:
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       continue loop60;
                                                                                                                                    }
                                                                                                                                    §§goto(addr387);
                                                                                                                                 }
                                                                                                                                 continue loop60;
                                                                                                                              }
                                                                                                                              addr457:
                                                                                                                           }
                                                                                                                           §§goto(addr443);
                                                                                                                        }
                                                                                                                        §§goto(addr435);
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr736:
                                                                                                         this.§_-Dv§(§_-a2§.§_-05f§);
                                                                                                         §§goto(addr671);
                                                                                                         addr740:
                                                                                                         addr484:
                                                                                                      }
                                                                                                      §§goto(addr340);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr634);
                                                                                          addr532:
                                                                                       }
                                                                                       §§goto(addr637);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr749);
                                                                              }
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§goto(addr661);
                                                                                 }
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr764);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr724:
                                                                                    §§goto(addr735);
                                                                                    §§push(30);
                                                                                 }
                                                                              }
                                                                              §§goto(addr607);
                                                                           }
                                                                           §§goto(addr661);
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        §§goto(addr617);
                                                                        §§push(§§pop() == §§pop());
                                                                     }
                                                                     §§goto(addr661);
                                                                  }
                                                               }
                                                               §§goto(addr660);
                                                            }
                                                         }
                                                         §§goto(addr757);
                                                      }
                                                      §§goto(addr683);
                                                   }
                                                }
                                                §§goto(addr724);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr757:
                           return this.§_-Kh§;
                        }
                     }
                  }
               }
               §§goto(addr762);
            }
         }
         §§goto(addr765);
      }
      
      public function §_-Dv§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §_-eZ§.§_-7C§(param1,this.§_-0AN§.§_-jf§);
         }
      }
      
      public function §_-kB§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§_-0AN§.material.§_-Ht§(param1));
         if(_loc3_)
         {
            return §§pop() * this.§_-JZ§;
         }
      }
      
      public function §_-09j§(param1:String) : Number
      {
         return this.§_-0AN§.material.§_-Zm§(param1);
      }
      
      public function §_-r3§() : String
      {
         return this.§_-0AN§.material.mName;
      }
      
      public function §_-gj§() : Number
      {
         return this.§_-0AN§.§ get§();
      }
      
      public function §_-ez§() : int
      {
         return this.§_-0AN§.§_-8o§();
      }
      
      public function §_-Xw§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(_loc3_ || _loc1_)
         {
            §§push(this.§_-SJ§().IsAwake());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr202:
                        loop4:
                        while(true)
                        {
                           §§push(this.§_-ye§());
                           loop5:
                           while(!_loc2_)
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
                                          while(true)
                                          {
                                             §§push(this.§_-Kh§ == this.§_-8l§);
                                             addr157:
                                             while(_loc3_)
                                             {
                                             }
                                             continue loop8;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop12:
                                       for(; !(_loc2_ && _loc3_); while(true)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop12;
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   break loop2;
                                                }
                                                continue loop5;
                                             }
                                             continue;
                                             addr81:
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             addr148:
                                             while(_loc3_)
                                             {
                                                §§push(Math.abs(this.§_-SJ§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                continue loop6;
                                             }
                                             continue loop4;
                                             addr47:
                                             if(_loc2_ && this)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break loop2;
                                                }
                                                §§goto(addr157);
                                             }
                                             else
                                             {
                                                §§goto(addr133);
                                             }
                                          }
                                       },continue loop2)
                                       {
                                          if(!§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§pop();
                                                addr180:
                                                while(!_loc2_)
                                                {
                                                   §§push(Math.abs(this.§_-SJ§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                   while(_loc3_)
                                                   {
                                                   }
                                                   continue loop13;
                                                }
                                                §§goto(addr194);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             continue loop12;
                                          }
                                       }
                                       continue loop7;
                                    }
                                 }
                                 addr74:
                                 while(_loc3_ || _loc1_)
                                 {
                                    §§goto(addr81);
                                 }
                              }
                              while(_loc3_ || _loc3_)
                              {
                                 §§push(Math.abs(this.§_-SJ§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                 continue loop0;
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    §§goto(addr47);
                                 }
                                 §§goto(addr74);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr202);
      }
      
      public function §_-01F§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-SJ§().IsAwake());
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(true);
                     if(!(_loc2_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr60:
                     §§push(this.isMoving());
                     if(!(_loc2_ && _loc2_))
                     {
                        addr69:
                        return !§§pop();
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
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            this.§_-wW§();
         }
         var _loc1_:int = 5;
         if(!_loc2_)
         {
            §§push(Math.abs(this.§_-i6§(this.§_-dS§[0])) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr155:
                        while(true)
                        {
                           §§push(Math.abs(this.§_-i6§(this.§_-dS§[1])) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr154:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr154);
         }
         §§goto(addr75);
      }
      
      private function §_-i6§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               if(_loc4_ || this)
               {
                  if(_loc4_ || this)
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() / param1.length);
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                     addr90:
                     _loc2_ = §§pop();
                  }
                  _loc3_++;
               }
               continue;
            }
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(Number(§§pop() + param1[_loc3_]));
            }
            §§goto(addr90);
         }
         return §§pop();
      }
      
      private function §_-wW§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-dS§[0].push(this.§_-SJ§().GetLinearVelocity().x);
         }
         while(true)
         {
            while(true)
            {
               this.§_-dS§[1].push(this.§_-SJ§().GetLinearVelocity().y);
               do
               {
                  this.§_-dS§[2].push(this.§_-SJ§().GetAngularVelocity());
               }
               while(!(_loc3_ || _loc1_));
               
               if(!_loc2_)
               {
                  if(true)
                  {
                     var _loc1_:* = uint(0);
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           if(§§pop() >= 3)
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 continue;
                              }
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(_loc3_ || _loc1_)
                                 {
                                    break;
                                 }
                                 addr138:
                                 this.§_-dS§[_loc1_].shift();
                              }
                           }
                           else if(this.§_-dS§[_loc1_].length > this.§_-CU§)
                           {
                              §§goto(addr138);
                           }
                           §§push(_loc1_);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(uint(§§pop() + 1));
                           }
                        }
                        _loc1_ = §§pop();
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      public function §_-Px§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-JZ§ = param1;
         }
         do
         {
            if(this.§_-JZ§ <= 1)
            {
               §§push(this.§_-U-§);
               if(_loc3_ || _loc2_)
               {
                  §§pop().§_-yS§ = null;
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     §§goto(addr20);
                  }
                  addr68:
                  §§push(this.§_-U-§);
               }
               §§pop().§_-c4§();
               continue;
            }
            §§goto(addr68);
         }
         while(!_loc3_);
         
         addr20:
      }
      
      public function §_-vw§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc4_ || this)
         {
            §§push(this.§_-0AN§.§_-MF§());
            loop0:
            while(true)
            {
               if(§§pop() == §_-au§.§_-cU§)
               {
                  loop19:
                  while(true)
                  {
                     §§push(this.§_-U-§.mW);
                     if(_loc4_)
                     {
                        §§push(this.§_-U-§.mH);
                        loop20:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc3_ && _loc3_))
                           {
                              while(true)
                              {
                                 §§push(§_-00u§.§_-lY§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§_-00u§.§_-lY§);
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr80:
                                       §§push(this.§_-XE§);
                                       if(_loc3_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       addr90:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc4_)
                                       {
                                          continue loop20;
                                       }
                                       §§push(§§pop() / §§pop());
                                       loop13:
                                       while(_loc4_)
                                       {
                                          addr95:
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(this.§_-AP§());
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr139:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 addr147:
                                                                                 _loc2_ = §§pop();
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ || this))
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(param1)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr170:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!(_loc4_ || param1))
                                                                                       {
                                                                                          break loop16;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             §§push(this.§_-XE§);
                                                                                             if(!(_loc3_ && this))
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc4_ || param1)
                                                                                                   {
                                                                                                      §§goto(addr80);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         break loop14;
                                                                                                      }
                                                                                                      addr222:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr160:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr90);
                                                                                          }
                                                                                          break loop14;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§goto(addr147);
                                                                                 }
                                                                                 continue loop13;
                                                                                 addr148:
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                  }
                                                                  addr224:
                                                               }
                                                               §§goto(addr139);
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr125:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop14;
                                                         §§goto(addr125);
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr139);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr224);
                                             }
                                             addr223:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§goto(addr95);
                                             }
                                             addr157:
                                          }
                                          §§goto(addr160);
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr170);
                                       }
                                    }
                                 }
                                 §§goto(addr222);
                                 continue loop20;
                              }
                              addr210:
                           }
                           §§goto(addr223);
                        }
                     }
                     §§goto(addr210);
                  }
               }
               else
               {
                  §§push(this.§_-SJ§().GetMass());
               }
               §§goto(addr157);
            }
         }
         §§goto(addr177);
      }
      
      public function §_-AP§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(_loc1_);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(2);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc2_)
                     {
                     }
                     §§goto(addr81);
                  }
                  §§push(§§pop() / §§pop());
               }
               addr81:
               §§push(§§pop() * Math.min(10,this.§_-U-§.§_-0F9§ - 1));
               if(_loc3_)
               {
                  §§push(10);
               }
               §§push(§§pop() - §§pop());
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_ || this)
                  {
                     _loc1_ = §§pop();
                  }
               }
            }
            §§goto(addr94);
         }
         addr94:
         return _loc1_;
      }
      
      public function §_-O1§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§_-SJ§().GetLinearVelocity().x);
         if(!(_loc6_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§_-SJ§().GetLinearVelocity().y);
         if(_loc7_)
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
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(_loc5_);
               loop0:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     while(true)
                     {
                        §§push(Number(§§pop()));
                     }
                     addr142:
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && param1))
                        {
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && this))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        if(_loc7_)
                        {
                           _loc3_ = §§pop();
                           while(true)
                           {
                              this.§_-SJ§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                              if(!_loc6_)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                           }
                           return;
                           addr134:
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr142);
         }
         §§goto(addr134);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-Zc§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-Zc§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-QU§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = this.§_-SJ§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(_loc6_ || param3)
         {
            §§push(param2.x * param1);
            if(_loc6_)
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(!(_loc5_ && param1))
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(!(_loc5_ && param2))
            {
               §§push(param2.y * param1);
               if(!_loc5_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            do
            {
               this.§_-SJ§().§_-vE§(_loc4_);
            }
            while(!_loc6_);
            
         }
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            if(param2)
            {
               loop1:
               while(true)
               {
                  §§push(this.§_-NN§());
                  if(!_loc6_)
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
                           if(_loc7_)
                           {
                              §§push(360);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr264:
                                 while(true)
                                 {
                                    §§push(360);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                       loop7:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                                if(!_loc6_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop10:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(Number(0));
                                                         loop12:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(_loc6_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               §§push(0);
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc7_ || this))
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(param1);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() % §§pop());
                                                                        addr212:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              continue loop12;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        addr85:
                                                                        continue loop3;
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr105:
                                                                                 if(!(_loc7_ || param1))
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§_-7E§(_loc4_);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop28;
                                                                                             }
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                addr37:
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      §§push(this.§_-NN§());
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         addr278:
                                                                                                         §§push(§§pop() + param1);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                         }
                                                                                                         break loop3;
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr41:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr269:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                      §§goto(addr37);
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                   break loop3;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    addr142:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr156:
                                                                                          §§push(_loc5_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc6_ && param2)
                                                                                             {
                                                                                                §§goto(addr278);
                                                                                             }
                                                                                          }
                                                                                          addr156:
                                                                                       }
                                                                                       while(!_loc6_)
                                                                                       {
                                                                                          addr166:
                                                                                          §§push(Number(§§pop()));
                                                                                          while(_loc7_ || this)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             §§goto(addr166);
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§goto(addr212);
                                                                                    }
                                                                                    addr175:
                                                                                    while(!(_loc6_ && param2))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop14;
                                                                                       §§goto(addr30);
                                                                                    }
                                                                                    while(!_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          continue loop10;
                                                                                       }
                                                                                       §§goto(addr175);
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                              break loop3;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr123);
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr278);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc6_)
                        {
                           §§push(Math.round(_loc3_ / 22.5) * 22.5);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc3_ = §§pop();
                        }
                        do
                        {
                           this.§_-7E§(_loc3_);
                        }
                        while(!_loc7_);
                        
                        return;
                     }
                  }
                  §§goto(addr264);
               }
               addr253:
            }
            §§goto(addr269);
         }
         §§goto(addr253);
      }
      
      public function §_-0Dc§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§_-R1§(this.§_-SJ§().GetAngle()));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(360);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc3_)
                     {
                        addr104:
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() - §§pop());
                     loop0:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr107:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(§_-3X§(_loc2_));
                              if(!(_loc3_ && param1))
                              {
                                 continue loop0;
                              }
                              addr82:
                              if(_loc3_)
                              {
                                 break;
                              }
                              _loc2_ = §§pop();
                              do
                              {
                                 this.§_-SJ§().§_-2T§(_loc2_);
                              }
                              while(_loc3_);
                              
                              if(!_loc3_)
                              {
                                 return;
                                 addr52:
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr107);
         }
         §§goto(addr52);
      }
      
      public function §_-62§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§_-SJ§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!(_loc14_ && _loc3_))
         {
            §§push(§§pop() - param2.x);
            if(_loc15_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc15_)
            {
               §§push(§§pop() - param2.y);
               if(!_loc14_)
               {
                  addr53:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc14_ && param2))
               {
                  §§push(_loc4_);
                  if(_loc15_ || this)
                  {
                     §§push(0);
                     if(!(_loc14_ && param1))
                     {
                        §§push(§§pop() == §§pop());
                        if(!(_loc14_ && param2))
                        {
                           if(§§pop())
                           {
                              if(_loc15_ || this)
                              {
                                 §§goto(addr95);
                              }
                           }
                           §§goto(addr113);
                        }
                        addr95:
                        §§pop();
                        if(!(_loc14_ && param2))
                        {
                           addr103:
                           §§push(_loc5_);
                           if(!(_loc14_ && param2))
                           {
                              addr113:
                              addr112:
                              if(§§pop() == 0)
                              {
                                 if(!(_loc14_ && this))
                                 {
                                    §§goto(addr121);
                                 }
                              }
                              addr132:
                              var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                              §§push(_loc4_);
                              if(_loc15_ || this)
                              {
                                 §§push(§§pop() / _loc5_);
                                 if(_loc15_)
                                 {
                                    addr145:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(Math.atan(_loc7_) * 180);
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(§§pop() / Math.PI);
                                    if(!(_loc14_ && param2))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc8_:* = §§pop();
                                 if(!(_loc14_ && param2))
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(0);
                                       if(!(_loc14_ && _loc3_))
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc15_ || param2)
                                             {
                                                addr212:
                                                §§push(_loc8_);
                                                if(!_loc14_)
                                                {
                                                   addr216:
                                                   §§push(§§pop() + 180);
                                                   if(_loc15_ || _loc3_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc14_ && this))
                                                      {
                                                         addr232:
                                                         _loc8_ = §§pop();
                                                         §§push(_loc8_);
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc14_ && this))
                                                               {
                                                                  addr258:
                                                                  §§push(Number(§§pop()));
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            if(_loc15_ || this)
                                                            {
                                                               §§push(§§pop() * Math.PI);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§§pop() / 180);
                                                                  if(_loc15_)
                                                                  {
                                                                     addr276:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc10_:* = §§pop();
                                                                  §§push(Math.sin(_loc10_) * _loc6_);
                                                                  if(!(_loc14_ && _loc3_))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(Math.cos(_loc10_) * _loc6_);
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc12_:* = §§pop();
                                                                  var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                                  if(_loc15_ || param2)
                                                                  {
                                                                     this.§_-SJ§().§_-vE§(_loc13_);
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr276);
                                                         }
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr258);
                                             }
                                          }
                                          §§goto(addr232);
                                       }
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr132);
                        }
                        addr121:
                        return;
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr113);
               }
               §§goto(addr103);
            }
            §§goto(addr53);
         }
         §§goto(addr42);
      }
   }
}
