package §%Q§
{
   import §"R§.§ !Q§;
   import §'!9§.Sprite;
   import §,!5§.§;v§;
   import §,!5§.§^g§;
   import §2!+§.b2PolygonShape;
   import §7!u§.b2Settings;
   import §<!1§.§0"§;
   import §<!1§.§2!W§;
   import §<!1§.§9B§;
   import §<!1§.§<!R§;
   import §<!1§.§<F§;
   import §>H§.b2Vec2;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §^_§.§!>§;
   import §`w§.b2Body;
   import §`w§.b2BodyDef;
   import §`w§.b2FilterData;
   import §`w§.b2Fixture;
   import §`w§.b2World;
   import flash.geom.Point;
   
   public class §`!<§
   {
      
      public static const §4%§:uint;
      
      public static const §'!Y§:uint;
      
      public static const §`!D§:uint;
      
      public static const §!!M§:uint;
      
      public static const §5!q§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§§findproperty(§4%§));
            §§push(1);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§4%§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§'!Y§));
               §§push(1);
               if(_loc1_ || §`!<§)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§'!Y§ = §§pop();
               while(!(_loc2_ && _loc2_))
               {
                  §§push(§§findproperty(§`!D§));
                  §§push(1);
                  if(!_loc2_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§`!D§ = §§pop();
                  loop2:
                  while(_loc1_ || §`!<§)
                  {
                     §§push(§§findproperty(§!!M§));
                     §§push(1);
                     if(_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§!!M§ = §§pop();
                     while(true)
                     {
                        §5!q§ = true;
                        if(_loc1_)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      private var §73§:String;
      
      private var §#I§:int;
      
      private var §<![§:int;
      
      public var §<!]§:String;
      
      public var §6K§:int;
      
      private var §-!#§:§9B§;
      
      private var §'Q§:§=[§;
      
      private var mWorld:b2World;
      
      protected var §4!c§:String = "";
      
      protected var §!!?§:int = 1;
      
      private var §2I§:b2Fixture;
      
      private var §1F§:b2Body;
      
      private var §^E§:b2Vec2;
      
      public var §%!R§:Number;
      
      public var §-!!§:Number;
      
      private var §4E§:Number;
      
      private var §2#§:Boolean = false;
      
      private var §[G§:Number;
      
      private var §]<§:Number;
      
      private var §%U§:Number;
      
      private var §0!e§:Number;
      
      private var §=F§:Number;
      
      private var §9f§:Number;
      
      public var §]!G§:Number = 1;
      
      private var §0!6§:Boolean = false;
      
      public var §7^§:Number = 0;
      
      public var §4!w§:Number = 0;
      
      protected var §&=§:Boolean = false;
      
      public var §?!M§:§'!%§;
      
      private var §8X§:Sprite;
      
      private var §,G§:Number = 0;
      
      private var §78§:Number = 0;
      
      private var §-!n§:Number = 0;
      
      private var §'8§:Number = 1.0;
      
      private var §"n§:Boolean = false;
      
      private var §6$§:Vector.<Vector.<Number>>;
      
      private var §2j§:int = 10;
      
      private var §5!H§:Boolean = true;
      
      public function §`!<§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc17_ && param1))
         {
            this.§6$§ = new Vector.<Vector.<Number>>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§<!]§ = param6;
                  loop2:
                  while(true)
                  {
                     this.§-!#§ = §<F§.§1]§(param6);
                     loop3:
                     while(true)
                     {
                        this.§'Q§ = param1;
                        while(true)
                        {
                           this.§8X§ = param2;
                           while(true)
                           {
                              this.§'8§ = param10;
                              addr237:
                              while(_loc16_)
                              {
                                 continue loop0;
                              }
                           }
                           loop14:
                           for(; _loc16_ || param2; if(_loc17_ && this)
                           {
                              continue;
                           },if(!_loc17_)
                           {
                              addr92:
                              if(!(_loc17_ && this))
                              {
                                 if(_loc16_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           },addr232:,addr208:,while(_loc16_)
                           {
                              this.§?!M§ = new §'!%§(this,param2,param4);
                              continue loop14;
                           },loop12:
                           while(true)
                           {
                              if(_loc16_ || param3)
                              {
                                 if(!_loc17_)
                                 {
                                    addr177:
                                    if(!(_loc16_ || param1))
                                    {
                                       break;
                                    }
                                    this.§6$§[2] = new Vector.<Number>();
                                    §§goto(addr156);
                                 }
                                 while(true)
                                 {
                                    this.§6$§[0] = new Vector.<Number>();
                                 }
                                 addr201:
                              }
                              while(true)
                              {
                                 this.§6$§[1] = new Vector.<Number>();
                                 continue loop12;
                              }
                           },addr156:,while(_loc16_ || this)
                           {
                              this.§<![§ = this.§-!#§.§'!5§();
                              §§goto(addr201);
                              §§goto(addr177);
                           },while(true)
                           {
                              this.§#I§ = param5;
                              continue loop2;
                              §§goto(addr208);
                           },addr208:)
                           {
                              while(true)
                              {
                                 §§push(this.§?!M§);
                                 if(_loc16_)
                                 {
                                    if(!§§pop().§%!]§(param1.§?l§.animationManager))
                                    {
                                       if(!(_loc17_ && param3))
                                       {
                                          continue loop14;
                                       }
                                       while(_loc16_)
                                       {
                                       }
                                       §§goto(addr237);
                                       addr128:
                                    }
                                    loop17:
                                    do
                                    {
                                       §§push(this.§?!M§);
                                       if(!(_loc17_ && param2))
                                       {
                                          §§push(this.§<![§);
                                          if(_loc16_)
                                          {
                                             §§pop().§?!T§(§§pop() == §2!W§.§=!i§);
                                             while(_loc16_ || this)
                                             {
                                                this.mWorld = param3;
                                                if(_loc16_ || param1)
                                                {
                                                   continue loop17;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().§=!>§(§§pop(),this.§-!#§.§?!Y§(),this.§-!#§.§#]§() / §^g§.§^!S§,this.§-!#§.§4_§() / §^g§.§^!S§);
                                             }
                                             addr112:
                                          }
                                          §§goto(addr128);
                                       }
                                       else
                                       {
                                          addr110:
                                          while(true)
                                          {
                                          }
                                          addr110:
                                       }
                                       §§goto(addr112);
                                    }
                                    while(false);
                                    
                                    var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                                    if(!(_loc17_ && param1))
                                    {
                                       this.§1F§ = this.mWorld.§04§(_loc12_);
                                       if(!(_loc17_ && this))
                                       {
                                          this.§1F§.§`!N§(this);
                                          if(!(_loc17_ && param1))
                                          {
                                             §§push(this.§<![§);
                                             if(!(_loc17_ && this))
                                             {
                                                §§push(§2!W§.§,%§);
                                                if(!_loc17_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!_loc17_)
                                                      {
                                                         §§push(b2PolygonShape);
                                                         §§push(this.§-!#§.shape.§'O§);
                                                         if(_loc16_)
                                                         {
                                                            §§push(param10);
                                                            if(!_loc17_)
                                                            {
                                                               addr346:
                                                               §§push(§§pop() * §§pop());
                                                               §§push(this.§-!#§.shape.§!!A§);
                                                               if(!(_loc17_ && param3))
                                                               {
                                                                  §§push(§§pop() * param10);
                                                               }
                                                            }
                                                            _loc14_ = §§pop().§#4§(§§pop(),§§pop());
                                                            if(_loc16_)
                                                            {
                                                               this.§2I§ = this.§1F§.CreateFixture2(_loc14_,this.§-!#§.§`!E§());
                                                               if(!_loc17_)
                                                               {
                                                                  addr440:
                                                                  §§push(this.§2I§);
                                                                  if(!(_loc17_ && param2))
                                                                  {
                                                                     §§push(this.§-!#§);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(§§pop().§7E§());
                                                                        if(_loc16_)
                                                                        {
                                                                           §§pop().§&!V§(§§pop());
                                                                           addr470:
                                                                           if(!(_loc17_ && param2))
                                                                           {
                                                                              addr468:
                                                                              §§push(this.§2I§);
                                                                              §§push(this.§-!#§.§`!B§());
                                                                           }
                                                                           var _loc13_:b2FilterData = new b2FilterData();
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              addr616:
                                                                              if(!this.§ !"§())
                                                                              {
                                                                                 addr589:
                                                                                 §§push(this.§<!]§.toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                 if(!(this.§<!]§.toUpperCase() == "MISC_WHITE_BIRD_EGG"))
                                                                                 {
                                                                                    addr591:
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc17_ && this))
                                                                                       {
                                                                                          §§push(this.§<!]§);
                                                                                          if(!(_loc17_ && param2))
                                                                                          {
                                                                                             §§push(§§pop().toUpperCase() == "MISC_FOOD_EGG");
                                                                                             if(_loc16_ || param2)
                                                                                             {
                                                                                                if(!(_loc17_ && this))
                                                                                                {
                                                                                                   if(!(_loc16_ || param2))
                                                                                                   {
                                                                                                      §§goto(addr589);
                                                                                                   }
                                                                                                   addr566:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         _loc13_.§`!U§ = §'!Y§;
                                                                                                         if(!(_loc17_ && param3))
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            §§push(65535);
                                                                                                            if(_loc16_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() & ~§4%§);
                                                                                                            }
                                                                                                            §§pop().§?!^§ = §§pop();
                                                                                                            if(!(_loc17_ && param3))
                                                                                                            {
                                                                                                               addr497:
                                                                                                               this.§2I§.§0S§(_loc13_);
                                                                                                               if(!(_loc17_ && param3))
                                                                                                               {
                                                                                                                  this.§4E§ = this.§-!#§.§]>§();
                                                                                                                  if(!(_loc17_ && param1))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr497);
                                                                                                                     }
                                                                                                                     §§push(this.§-!#§);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§-!!§);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!(_loc17_ && param3))
                                                                                                                           {
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    this.§%!R§ = this.§-!!§ = this.§-!#§.§-!!§;
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       addr796:
                                                                                                                                       addr798:
                                                                                                                                       if(this.§-!#§.§6K§ != §9B§.§%!>§)
                                                                                                                                       {
                                                                                                                                          addr785:
                                                                                                                                          this.§?!M§.setDamagedFrame();
                                                                                                                                          if(_loc16_ || this)
                                                                                                                                          {
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                addr750:
                                                                                                                                                if(this.isTexture())
                                                                                                                                                {
                                                                                                                                                   if(_loc16_ || param3)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         addr763:
                                                                                                                                                         addr765:
                                                                                                                                                         addr764:
                                                                                                                                                         if(param9 != 0)
                                                                                                                                                         {
                                                                                                                                                            addr776:
                                                                                                                                                            this.§[!b§(param9);
                                                                                                                                                         }
                                                                                                                                                         this.§"k§();
                                                                                                                                                         this.§!!7§(0,1);
                                                                                                                                                         addr739:
                                                                                                                                                         if(_loc16_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§?!M§);
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§9x§(this.§-!#§.shape);
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr739);
                                                                                                                                                                     }
                                                                                                                                                                     return;
                                                                                                                                                                     addr733:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr785);
                                                                                                                                                                  addr745:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr776);
                                                                                                                                                         }
                                                                                                                                                         addr749:
                                                                                                                                                         §§goto(addr749);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr785);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr776);
                                                                                                                                                }
                                                                                                                                                §§goto(addr763);
                                                                                                                                                addr795:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr806:
                                                                                                                                          §§goto(addr750);
                                                                                                                                          addr806:
                                                                                                                                       }
                                                                                                                                       this.§8X§.visible = false;
                                                                                                                                    }
                                                                                                                                    §§goto(addr806);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr691:
                                                                                                                                    §§push(this.§%!R§);
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       addr695:
                                                                                                                                       §§push(1);
                                                                                                                                       if(!(_loc17_ && param1))
                                                                                                                                       {
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                addr706:
                                                                                                                                                this.§%!R§ = this.§-!!§ = 1;
                                                                                                                                                if(_loc16_)
                                                                                                                                                {
                                                                                                                                                   addr717:
                                                                                                                                                   §§goto(addr796);
                                                                                                                                                }
                                                                                                                                                §§goto(addr745);
                                                                                                                                             }
                                                                                                                                             §§goto(addr717);
                                                                                                                                          }
                                                                                                                                          §§goto(addr796);
                                                                                                                                       }
                                                                                                                                       §§goto(addr765);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr764);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 this.§%!R§ = this.§-!!§ = Math.round(this.§#!g§(true) * this.§-!#§.§]8§());
                                                                                                                                 if(_loc16_ || param2)
                                                                                                                                 {
                                                                                                                                    §§goto(addr691);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr763);
                                                                                                                        }
                                                                                                                        §§goto(addr695);
                                                                                                                     }
                                                                                                                     §§goto(addr798);
                                                                                                                  }
                                                                                                                  §§goto(addr795);
                                                                                                               }
                                                                                                               §§goto(addr776);
                                                                                                            }
                                                                                                            §§goto(addr733);
                                                                                                         }
                                                                                                         §§goto(addr706);
                                                                                                      }
                                                                                                      §§goto(addr763);
                                                                                                   }
                                                                                                   §§goto(addr497);
                                                                                                }
                                                                                                §§goto(addr591);
                                                                                             }
                                                                                             §§goto(addr750);
                                                                                          }
                                                                                          §§goto(addr589);
                                                                                       }
                                                                                       §§goto(addr691);
                                                                                    }
                                                                                    §§goto(addr616);
                                                                                 }
                                                                                 §§goto(addr566);
                                                                              }
                                                                              if(_loc16_ || param3)
                                                                              {
                                                                                 _loc13_.§`!U§ = §4%§;
                                                                                 if(!(_loc17_ && param3))
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    §§push(65535);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(§§pop() & ~§'!Y§);
                                                                                    }
                                                                                    §§pop().§?!^§ = §§pop();
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§goto(addr497);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr763);
                                                                              }
                                                                              §§goto(addr706);
                                                                           }
                                                                           §§goto(addr806);
                                                                        }
                                                                        §§pop().§,t§(§§pop());
                                                                        §§goto(addr470);
                                                                     }
                                                                  }
                                                                  §§goto(addr468);
                                                                  addr375:
                                                               }
                                                               §§goto(addr470);
                                                            }
                                                            §§goto(addr375);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      else
                                                      {
                                                         addr414:
                                                         §§push(this.§<![§);
                                                      }
                                                      §§goto(addr440);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§<![§);
                                                      if(!_loc17_)
                                                      {
                                                         addr380:
                                                         §§push(§2!W§.§=!i§);
                                                         if(!(_loc17_ && param1))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc17_ && this))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr411:
                                                                     §§pop();
                                                                     if(_loc16_)
                                                                     {
                                                                        §§goto(addr414);
                                                                     }
                                                                     addr427:
                                                                     this.§2I§ = this.§1F§.CreateFixture2(this.§-!#§.shape.§>!D§(param10),this.§-!#§.§`!E§());
                                                                     §§goto(addr440);
                                                                  }
                                                               }
                                                               addr419:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc17_ && param2))
                                                                  {
                                                                     §§goto(addr427);
                                                                  }
                                                               }
                                                               §§goto(addr440);
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                         addr418:
                                                         §§goto(addr419);
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                   }
                                                   §§push(§2!W§.§"d§);
                                                }
                                                §§goto(addr418);
                                             }
                                             §§goto(addr380);
                                          }
                                       }
                                    }
                                    §§goto(addr440);
                                 }
                                 §§goto(addr110);
                              }
                           }
                        }
                     }
                     while(_loc16_ || param2)
                     {
                        this.§6K§ = this.§-!#§.§6K§;
                        §§goto(addr208);
                        §§goto(addr92);
                     }
                  }
                  if(!(_loc16_ || this))
                  {
                     continue;
                  }
                  §§goto(addr110);
                  §§push(this.§?!M§);
               }
            }
         }
         §§goto(addr146);
      }
      
      public static function §6!$§(param1:int, param2:§<!R§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            if(param2 == null)
            {
               if(_loc6_)
               {
                  §§goto(addr29);
               }
            }
            var _loc4_:String;
            §§push(_loc4_ = param2.§-k§[param1]);
            if(_loc6_ || param2)
            {
               if(§§pop().length > 0)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(param3);
                     if(_loc6_ || param3)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc6_)
                           {
                              §§push(param2.§8!c§);
                              if(_loc5_ && param3)
                              {
                              }
                              addr97:
                              param3 = §§pop();
                              if(!(_loc5_ && param3))
                              {
                                 addr105:
                                 § !Q§.§0!t§(_loc4_,param3);
                              }
                              §§goto(addr109);
                           }
                           addr109:
                           return;
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr97);
                     §§push(§§pop());
                  }
               }
               §§goto(addr105);
            }
            §§goto(addr97);
         }
         addr29:
      }
      
      public static function §%z§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!_loc2_)
         {
            §§push(180);
            if(_loc3_ || §`!<§)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr57);
               }
            }
            §§goto(addr62);
         }
         addr57:
         §§push(§§pop() / Math.PI);
         if(!_loc2_)
         {
            addr62:
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc3_ || _loc2_)
         {
            return §§pop() % 360;
         }
      }
      
      public static function §2!n§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc4_ || §`!<§)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc4_)
            {
               return Number(§§pop());
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8X§;
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function get scale() : Number
      {
         return this.§'8§;
      }
      
      public function get front() : Boolean
      {
         return this.§"n§;
      }
      
      public function get §]!0§() : Number
      {
         return this.§1F§.GetPosition().x;
      }
      
      public function get §""§() : Number
      {
         return this.§1F§.GetPosition().y;
      }
      
      public function get §9o§() : §9B§
      {
         return this.§-!#§;
      }
      
      public function get §"'§() : Boolean
      {
         return this.§4E§ >= 0;
      }
      
      protected function get §;H§() : §=[§
      {
         return this.§'Q§;
      }
      
      public function get §8!x§() : Boolean
      {
         return this.§5!H§;
      }
      
      public function set §8!x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!H§ = param1;
         }
      }
      
      public function set §#L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2#§ = param1;
         }
      }
      
      public function set §`!Q§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§2j§ = param1;
         }
      }
      
      public function get §`!Q§() : uint
      {
         return this.§2j§;
      }
      
      public function get §=!W§() : Boolean
      {
         return this.§0!6§;
      }
      
      public function set §=!W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!6§ = param1;
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
         return this.§73§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§73§ = param1;
         }
      }
      
      public function § !J§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§2I§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().§0S§(param1);
         }
         addr49:
         if(_loc2_ || _loc3_)
         {
            §§push(this.§2I§);
         }
      }
      
      protected function §"!J§(param1:String) : int
      {
         return §1!e§.§"!J§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc4_)
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
         while(true)
         {
            _loc3_.§!!J§ = 1;
            §§goto(addr65);
         }
         §§goto(addr60);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mWorld);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr134:
                     while(true)
                     {
                        §§pop().§2R§(this.§5b§());
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
               loop1:
               while(true)
               {
                  this.§?!M§.dispose();
                  loop2:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §§push(this.§8X§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              addr109:
                              while(true)
                              {
                                 §§push(this.§8X§);
                                 addr111:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr112:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop2;
                                       }
                                       this.§8X§ = null;
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr109:
                           }
                           while(true)
                           {
                              this.§2I§ = null;
                              while(_loc2_ || _loc1_)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    if(!_loc1_)
                                    {
                                       this.§^E§ = null;
                                       while(_loc2_ || _loc1_)
                                       {
                                          this.§-!#§ = null;
                                          if(!_loc1_)
                                          {
                                             if(_loc2_ || _loc1_)
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   return;
                                                }
                                                break loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr92);
                           }
                           continue;
                        }
                        §§goto(addr111);
                     }
                     else
                     {
                        §§goto(addr132);
                     }
                  }
                  §§goto(addr137);
               }
            }
            §§goto(addr134);
         }
         §§goto(addr109);
      }
      
      public function §[!b§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§5b§());
            §§push(360);
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(_loc2_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§,v§(§§pop());
         }
      }
      
      public function §2a§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§5b§().GetAngle());
         if(!_loc1_)
         {
            §§push(180);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc1_)
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
         if(_loc2_)
         {
            return §§pop() % 360;
         }
      }
      
      public function §&!-§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§5b§().SetLinearVelocity(param1);
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
                     this.§>!>§();
                     addr85:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               while(true)
               {
                  this.§6&§();
                  §§goto(addr77);
               }
               addr75:
            }
         }
         §§goto(addr75);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§2I§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            §§push(this.§5b§());
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
                                       §§push(this.§5b§());
                                       loop8:
                                       for(; !_loc6_; if(_loc6_ && param3)
                                       {
                                          continue;
                                       },§§push(§§pop().GetPosition()),if(!(_loc6_ && param2))
                                       {
                                          if(!(_loc5_ || param1))
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr51);
                                       },§§goto(addr101))
                                       {
                                          §§push(§§pop().GetPosition());
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr177:
                                             addr101:
                                             while(true)
                                             {
                                                §§push(param4);
                                                addr178:
                                                while(!_loc6_)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                }
                                                continue loop3;
                                             }
                                             loop18:
                                             while(!(_loc6_ && param2))
                                             {
                                                §§push(§§pop().y);
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr110:
                                                   while(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      loop21:
                                                      while(_loc5_ || this)
                                                      {
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc5_ || this)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  addr83:
                                                                  return §§pop();
                                                               }
                                                               addr182:
                                                               while(_loc5_ || param1)
                                                               {
                                                                  addr144:
                                                                  §§pop();
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     if(_loc6_ && param3)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§5b§());
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     addr159:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§5b§());
                                                                        §§goto(addr144);
                                                                     }
                                                                     addr192:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop18;
                                                                     §§goto(addr159);
                                                                  }
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(_loc5_ || param3)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr83);
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  §§goto(addr137);
                                                               }
                                                               addr137:
                                                               addr182:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  break loop21;
                                                               }
                                                               continue loop22;
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      while(_loc5_ || param3)
                                                      {
                                                         §§pop();
                                                         §§goto(addr192);
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr51:
                                                   §§goto(addr178);
                                                   §§push(§§pop().y);
                                                   if(_loc6_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(param2);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§goto(addr71);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr110);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr178);
                                                }
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr182);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      public function §"q§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§^E§ = param1;
         }
      }
      
      public function §<!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§^E§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr66:
                  this.§&!-§(this.§^E§,false);
               }
               do
               {
                  this.§^E§ = null;
               }
               while(!(_loc2_ || this));
               
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §>!>§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               if(!_loc2_)
               {
                  §§push(this.§5b§());
                  if(!(_loc2_ && this))
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr35:
                     §§push(param1.x);
                     if(_loc3_)
                     {
                        §§push(0);
                        if(!_loc2_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc2_ && param1))
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || param1)
                                 {
                                    addr69:
                                    §§pop();
                                    §§goto(addr121);
                                 }
                              }
                              if(!§§pop())
                              {
                                 §§push(this.§5b§());
                                 if(_loc3_)
                                 {
                                    §§pop().§@X§(Math.atan2(param1.x,param1.y));
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(_loc2_ && _loc3_)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr121);
                              }
                              addr121:
                              if(!_loc2_)
                              {
                                 addr119:
                                 §§push(param1.y == 0);
                                 addr72:
                              }
                              this.§5b§().§@X§(0);
                              return;
                           }
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr69);
               }
               §§goto(addr72);
            }
            §§goto(addr35);
         }
         §§goto(addr69);
      }
      
      public function §6&§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!param1)
            {
               param1 = this.§5b§().GetLinearVelocity();
               addr25:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(_loc3_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc2_)
            {
               this.§[!b§(_loc2_);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §@a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§5b§().§@X§(param1);
         }
      }
      
      public function §5b§() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§2I§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || this)
                  {
                     §§push(this.§2I§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().GetBody();
         }
         addr50:
         return null;
      }
      
      public function §5!k§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(param1 != -9999)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§,G§ = param1;
               }
               while(true)
               {
                  this.§78§ = param2;
                  addr117:
                  while(true)
                  {
                     addr80:
                     if(!(_loc4_ && param1))
                     {
                        return;
                        addr87:
                     }
                  }
               }
               addr131:
            }
            loop2:
            while(true)
            {
               §§push(this.§5b§());
               loop3:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr102:
                  while(true)
                  {
                     §§push(this.§,G§);
                     if(_loc3_)
                     {
                        §§push(§^g§.§^!S§);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr45:
                           §§push(§^g§.§^!S§);
                           if(_loc3_ || this)
                           {
                              addr65:
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ && this))
                              {
                                 §§pop().y = §§pop();
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr80);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                 }
                                 addr109:
                              }
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr131);
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr109);
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §!!7§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(_loc6_)
         {
            §§push(this.§&=§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr417:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr418:
                        while(true)
                        {
                           this.§&=§ = false;
                           addr412:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr416:
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
                           addr406:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr407:
                              while(true)
                              {
                              }
                           }
                        }
                        addr405:
                     }
                     while(true)
                     {
                        §§push(this.updateFlyingFrameAnimations(param2));
                        loop11:
                        while(_loc6_)
                        {
                           if(§§pop())
                           {
                              loop12:
                              while(_loc6_)
                              {
                                 §§push(true);
                                 loop13:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       addr361:
                                       loop15:
                                       while(true)
                                       {
                                          §§push(this.updateScreamingFrameAnimations(param2));
                                          loop16:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(this.updateBlinkingFrameAnimations(param2));
                                                   if(_loc6_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   addr357:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         while(true)
                                                         {
                                                            addr324:
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§?!M§);
                                                                        addr329:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§true §();
                                                                           addr330:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr405);
                                                                              }
                                                                           }
                                                                           §§goto(addr407);
                                                                        }
                                                                     }
                                                                     addr327:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§]!G§);
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() > 1);
                                                                        loop29:
                                                                        while(_loc6_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr321:
                                                                                 addr387:
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    §§push(this.§?!M§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop().§3!m§));
                                                                                       addr240:
                                                                                       do
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                       }
                                                                                       while(!_loc5_);
                                                                                       
                                                                                       continue loop29;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §§push(4);
                                                                                       §§push(this.§?!M§.§3!m§.blurX - 4);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() / 20);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc5_ && this)
                                                                                          {
                                                                                             continue loop28;
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() % 28);
                                                                                       continue loop28;
                                                                                    }
                                                                                    §§goto(addr327);
                                                                                 }
                                                                                 continue loop28;
                                                                                 addr246:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop41:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§?!M§);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr193:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§pop().§+!B§(param2);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§5!q§);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             §§goto(addr240);
                                                                                             loop45:
                                                                                             for(; !(_loc5_ && this); if(!(_loc6_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             },§§goto(addr71))
                                                                                             {
                                                                                                loop46:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§8X§);
                                                                                                   loop47:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = Math.round(this.§,G§);
                                                                                                      loop48:
                                                                                                      while(!(_loc5_ && this))
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§push(this.§8X§);
                                                                                                                     loop49:
                                                                                                                     while(!_loc5_)
                                                                                                                     {
                                                                                                                        §§pop().y = Math.round(this.§78§);
                                                                                                                        loop50:
                                                                                                                        do
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && param1))
                                                                                                                           {
                                                                                                                              §§push(this.§8X§);
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop49;
                                                                                                                              }
                                                                                                                              §§push(this.§-!n§);
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / 180);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr46:
                                                                                                                                    §§push(§§pop() * Math.PI);
                                                                                                                                 }
                                                                                                                                 §§goto(addr49);
                                                                                                                              }
                                                                                                                              §§goto(addr46);
                                                                                                                              continue loop49;
                                                                                                                           }
                                                                                                                           addr139:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc6_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    this.§78§ = this.§]<§;
                                                                                                                                    continue loop45;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop46;
                                                                                                                                 }
                                                                                                                                 addr187:
                                                                                                                              }
                                                                                                                              continue loop50;
                                                                                                                           }
                                                                                                                           §§goto(addr418);
                                                                                                                        }
                                                                                                                        while(§§pop().rotation = §§pop(), _loc5_ && param1);
                                                                                                                        
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           continue loop45;
                                                                                                                        }
                                                                                                                        continue loop48;
                                                                                                                     }
                                                                                                                     continue loop47;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               addr366:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  break loop29;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr321);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr246);
                                                                                                         }
                                                                                                         §§goto(addr330);
                                                                                                      }
                                                                                                      addr214:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop41;
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   return;
                                                                                                   addr163:
                                                                                                }
                                                                                                loop43:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            this.§,G§ = this.§[G§;
                                                                                                            §§goto(addr139);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     §§push(this.§?!M§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || param2)
                                                                                                                           {
                                                                                                                              §§pop().§3!m§.blurX = _loc4_;
                                                                                                                              break loop43;
                                                                                                                           }
                                                                                                                           §§goto(addr329);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr238);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr330);
                                                                                                                     addr220:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr416);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr417);
                                                                                                            addr299:
                                                                                                         }
                                                                                                         §§goto(addr407);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr184:
                                                                                                   addr184:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§]'§(param1);
                                                                                                   }
                                                                                                   §§goto(addr187);
                                                                                                }
                                                                                                while(!_loc5_)
                                                                                                {
                                                                                                   §§push(this.§?!M§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().§3!m§.blurY = _loc4_;
                                                                                                      §§goto(addr214);
                                                                                                   }
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                       §§goto(addr220);
                                                                                       §§goto(addr238);
                                                                                    }
                                                                                    §§goto(addr211);
                                                                                 }
                                                                              }
                                                                              §§goto(addr329);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr360:
                                                      }
                                                      §§goto(addr417);
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr366);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr412);
                           }
                           §§goto(addr361);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      public function §"k§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§5b§().GetPosition().x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§5b§().GetPosition().y);
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§9f§ = this.§%U§;
            while(true)
            {
               this.§0!e§ = this.§[G§;
               while(!_loc4_)
               {
                  this.§=F§ = this.§]<§;
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§5b§().GetAngle());
                     if(!_loc4_)
                     {
                        §§push(180);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr123:
                           §§push(§§pop() * (§§pop() / Math.PI));
                           if(_loc3_)
                           {
                              §§push(360);
                           }
                           §§pop().§%U§ = §§pop();
                           continue;
                        }
                        §§push(§§pop() % §§pop());
                     }
                     §§goto(addr123);
                  }
               }
            }
         }
         §§goto(addr89);
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
      
      public function §]'§(param1:Number, param2:Number = -1) : void
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
                     loop2:
                     while(true)
                     {
                        §§push(§!>§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + param1);
                           if(_loc4_ || _loc3_)
                           {
                              addr962:
                              §§push(§§pop() + " overriding to 0");
                           }
                           §§pop().log(§§pop());
                           loop3:
                           while(true)
                           {
                              addr913:
                              while(true)
                              {
                                 §§push(param2);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§'Q§.§?l§.mLevelEngine.§>w§);
                                             while(true)
                                             {
                                                §§push(1000);
                                                addr940:
                                                addr80:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr941:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr942:
                                                      while(true)
                                                      {
                                                         param2 = §§pop();
                                                         addr943:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop2;
                                                            }
                                                         }
                                                         §§goto(addr962);
                                                      }
                                                   }
                                                }
                                                if(!(_loc4_ || param2))
                                                {
                                                   continue;
                                                }
                                                §§push(180);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr95:
                                                   §§push(§§pop() > §§pop());
                                                   if(_loc4_ || this)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         if(_loc4_ || param2)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               loop82:
                                                               while(§§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     addr128:
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§%U§);
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       §§push(this.§9f§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + 360);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr177:
                                                                                             §§push(§§pop() - this.§%U§);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr192:
                                                                                                addr193:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                }
                                                                                                §§pop().§-!n§ = §§pop() + §§pop();
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr356:
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      loop91:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§78§ = this.§]<§;
                                                                                                         loop92:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr707:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§%U§);
                                                                                                               loop40:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§9f§);
                                                                                                                  loop41:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     loop42:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        loop43:
                                                                                                                        while(!_loc3_)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              loop44:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    loop45:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr694:
                                                                                                                                       §§push(param1);
                                                                                                                                       addr901:
                                                                                                                                       loop46:
                                                                                                                                       for(; _loc4_; while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop46;
                                                                                                                                          }
                                                                                                                                          if(!(_loc3_ && param1))
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                             §§goto(addr890);
                                                                                                                                          }
                                                                                                                                          §§goto(addr793);
                                                                                                                                       })
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          loop47:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             addr700:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                loop49:
                                                                                                                                                for(; !§§pop(); if(_loc3_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                },§§pop(),§§goto(addr599))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§9f§);
                                                                                                                                                   loop50:
                                                                                                                                                   for(; _loc4_; if(_loc3_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   },§§goto(addr80))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§%U§);
                                                                                                                                                      loop51:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                         loop52:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            loop53:
                                                                                                                                                            while(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  loop54:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        loop55:
                                                                                                                                                                        for(; _loc4_ || this; if(!(_loc3_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           break loop82;
                                                                                                                                                                           addr668:
                                                                                                                                                                        })
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§9f§);
                                                                                                                                                                           loop56:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§%U§);
                                                                                                                                                                              loop57:
                                                                                                                                                                              while(!(_loc3_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(180);
                                                                                                                                                                                    addr616:
                                                                                                                                                                                    addr909:
                                                                                                                                                                                    while(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                                                                       continue loop54;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr43:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       break loop50;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc4_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(this.§9f§);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr56:
                                                                                                                                                                                          if(!(_loc3_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr63:
                                                                                                                                                                                             if(_loc4_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   continue loop50;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop1;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop68:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop63:
                                                                                                                                                                                                for(; _loc4_; continue loop68)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                   loop64:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      loop65:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop72:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr501:
                                                                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr599:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§9f§);
                                                                                                                                                                                                                        if(!(_loc3_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§%U§);
                                                                                                                                                                                                                           continue loop68;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr479:
                                                                                                                                                                                                                        addr479:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(180);
                                                                                                                                                                                                                           addr480:
                                                                                                                                                                                                                           while(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop47;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr616);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr786:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§4!w§ = 0;
                                                                                                                                                                                                                        continue loop91;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr501);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop91;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(this.§9f§);
                                                                                                                                                                                                               loop73:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(this.§%U§);
                                                                                                                                                                                                                     loop74:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              loop75:
                                                                                                                                                                                                                              for(; _loc4_; §§push(§§pop()),if(!(_loc3_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop44;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop52;
                                                                                                                                                                                                                                             §§goto(addr95);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop45;
                                                                                                                                                                                                                                          addr253:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop82;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop53;
                                                                                                                                                                                                                              })
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop76:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§9f§);
                                                                                                                                                                                                                                          while(_loc4_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§%U§);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                addr217:
                                                                                                                                                                                                                                                loop79:
                                                                                                                                                                                                                                                while(!(_loc3_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc3_ && param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop42;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop75;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      loop23:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§7^§ = 0;
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        this.§,G§ = this.§[G§;
                                                                                                                                                                                                                                                                        §§goto(addr865);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr886:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr896:
                                                                                                                                                                                                                                                               while(_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                                                                     addr869:
                                                                                                                                                                                                                                                                     while(_loc4_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop23;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr334:
                                                                                                                                                                                                                                                                     §§goto(addr940);
                                                                                                                                                                                                                                                                     if(!(_loc4_ || param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(180);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                              break loop79;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr869);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr480);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr943);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr912);
                                                                                                                                                                                                                                                            addr874:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                                                                            if(_loc4_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§0!e§);
                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - this.§[G§);
                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr853:
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr857:
                                                                                                                                                                                                                                                                        §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().§7^§ = §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr859);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr857);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr853);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr857);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      break loop53;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop76;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc4_ || _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc3_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr43);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop73;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr334);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop46;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr356);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop72;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop64;
                                                                                                                                                                                                                                    addr497:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr546:
                                                                                                                                                                                                                                             if(!(_loc3_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break loop82;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr859:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                                                                   §§push(this.§[G§);
                                                                                                                                                                                                                                                   if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + this.§7^§);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().§,G§ = §§pop();
                                                                                                                                                                                                                                                   break loop55;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.§]<§);
                                                                                                                                                                                                                                                if(_loc4_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + this.§4!w§);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§78§ = §§pop();
                                                                                                                                                                                                                                                continue loop6;
                                                                                                                                                                                                                                                §§goto(addr546);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                                                                             addr771:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc4_ || this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§%U§);
                                                                                                                                                                                                                                             continue loop46;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr808:
                                                                                                                                                                                                                                          addr865:
                                                                                                                                                                                                                                          while(!(_loc3_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param1);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                addr783:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                   addr784:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop44;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr568:
                                                                                                                                                                                                                                                if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§%U§);
                                                                                                                                                                                                                                                   continue loop63;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr942);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr790:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§]<§);
                                                                                                                                                                                                                                                addr793:
                                                                                                                                                                                                                                                while(!(_loc3_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§=F§);
                                                                                                                                                                                                                                                   break loop74;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr911:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   param1 = §§pop();
                                                                                                                                                                                                                                                   addr912:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§[G§);
                                                                                                                                                                                                                                                      addr890:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§0!e§);
                                                                                                                                                                                                                                                         addr892:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                            addr893:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               break loop43;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                                                                       addr435:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr589:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop54;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr859);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop65;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr432);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        §§goto(addr56);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr803);
                                                                                                                                                                                                                        §§goto(addr418);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr418:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop56;
                                                                                                                                                                                                               §§goto(addr479);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(this.§%U§);
                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param1);
                                                                                                                                                                                                               if(!(_loc3_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§9f§);
                                                                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - 360);
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr534:
                                                                                                                                                                                                                        §§push(§§pop() - this.§%U§);
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr544:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param2);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§-!n§ = §§pop() + §§pop();
                                                                                                                                                                                                                           §§goto(addr546);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr544);
                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr544);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr534);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr544);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr589);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop57;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr418);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc3_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr330);
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr322:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr892);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr216);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop41;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr790);
                                                                                                                                                                           §§goto(addr686);
                                                                                                                                                                        }
                                                                                                                                                                        addr686:
                                                                                                                                                                     }
                                                                                                                                                                     addr805:
                                                                                                                                                                     loop31:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           §§goto(addr808);
                                                                                                                                                                        }
                                                                                                                                                                        addr895:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           break loop31;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr896);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr628:
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop92;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§%U§);
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param1);
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§9f§);
                                                                                                                                                                              if(_loc4_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - this.§%U§);
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr659:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param2);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§-!n§ = §§pop() + §§pop();
                                                                                                                                                                                    §§goto(addr661);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr659);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr874);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr561);
                                                                                                                                                                     §§push(this.§9f§);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr605);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr668);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr805);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr784);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr911);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr702:
                                                                                                                                                this.§-!n§ = this.§%U§;
                                                                                                                                                addr706:
                                                                                                                                                break loop82;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(_loc4_ || param2)
                                                                                                                                       {
                                                                                                                                          §§goto(addr909);
                                                                                                                                          §§push(-1);
                                                                                                                                       }
                                                                                                                                       §§goto(addr941);
                                                                                                                                    }
                                                                                                                                    addr720:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 if(_loc3_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || param2)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          addr272:
                                                                                                                                          if(!(_loc4_ || this))
                                                                                                                                          {
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          if(_loc4_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(this.§%U§);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr29);
                                                                                                                                             }
                                                                                                                                             §§goto(addr73);
                                                                                                                                          }
                                                                                                                                          §§goto(addr886);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr720);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr628);
                                                                                                                                    §§goto(addr128);
                                                                                                                                 }
                                                                                                                                 §§goto(addr330);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr786);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(param1);
                                                                                                                                    if(_loc4_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(this.§=F§);
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - this.§]<§);
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             addr770:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(param2);
                                                                                                                                             }
                                                                                                                                             §§pop().§4!w§ = §§pop();
                                                                                                                                             §§goto(addr771);
                                                                                                                                          }
                                                                                                                                          §§goto(addr770);
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr770);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr700);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr895);
                                                                                                                           }
                                                                                                                           §§goto(addr872);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop92;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(this);
                                                                                                   §§push(this.§%U§);
                                                                                                   if(!(_loc3_ && param2))
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(this.§9f§);
                                                                                                         if(!(_loc3_ && param2))
                                                                                                         {
                                                                                                            §§push(§§pop() - this.§%U§);
                                                                                                            if(!(_loc3_ && param2))
                                                                                                            {
                                                                                                               addr392:
                                                                                                               addr403:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc4_ || param1)
                                                                                                               {
                                                                                                                  addr401:
                                                                                                                  §§push(§§pop() / param2);
                                                                                                               }
                                                                                                               §§pop().§-!n§ = §§pop() + §§pop();
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                                  addr406:
                                                                                                               }
                                                                                                               §§goto(addr706);
                                                                                                            }
                                                                                                            §§goto(addr401);
                                                                                                         }
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                   §§goto(addr403);
                                                                                                }
                                                                                                §§goto(addr702);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr192);
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                       §§goto(addr177);
                                                                                    }
                                                                                    §§goto(addr192);
                                                                                 }
                                                                                 §§goto(addr193);
                                                                              }
                                                                              §§goto(addr501);
                                                                           }
                                                                           §§goto(addr435);
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr893);
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr253);
                                                }
                                                §§goto(addr342);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr901);
                                          §§goto(addr943);
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr940);
                                    if(_loc4_ || _loc3_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr962);
                     }
                  }
                  §§goto(addr913);
               }
            }
         }
         §§goto(addr406);
      }
      
      public function get §6!E§() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!§5!q§)
            {
            }
         }
         return null;
      }
      
      public function § !"§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§6K§);
            if(_loc2_)
            {
               §§push(§9B§.§]!=§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && this))
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr74:
                           §§pop();
                           return this.§6K§ == §9B§.§;!r§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §<+§() : Boolean
      {
         return this.§6K§ == §9B§.§#!s§;
      }
      
      public function §-!R§() : Boolean
      {
         return this.§6K§ == §9B§.§+!]§;
      }
      
      public function §+!O§() : Boolean
      {
         return this.§6K§ == §9B§.§;!r§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§6K§ == §9B§.§<I§;
      }
      
      public function isGround() : Boolean
      {
         return this.§6K§ == §9B§.§%!>§;
      }
      
      public function §=]§() : Boolean
      {
         return this.§6K§ == §9B§.§=!%§;
      }
      
      public function §'!U§() : Boolean
      {
         return this.§6K§ == §9B§.§4x§;
      }
      
      public function §&!&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§<!]§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr107:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(_loc2_ || this)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr103:
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(false);
                              if(_loc1_ && _loc2_)
                              {
                                 break loop2;
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 return §§pop();
                              }
                              continue loop2;
                           }
                        }
                        return §§pop();
                        addr85:
                     }
                  }
                  addr112:
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
      
      public function §,!R§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§<+§());
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
                           loop4:
                           while(true)
                           {
                              §§push(this.§=]§());
                              if(!_loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr119:
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr123:
                                          while(true)
                                          {
                                             §§push(this.§'!U§());
                                             if(_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop3;
                                                }
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop1;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             addr73:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                          }
                                       }
                                       addr122:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!_loc1_)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr123);
                                                }
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr73);
                                             }
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop6;
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr119);
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §+!P§() : Number
      {
         return Number(Math.sqrt(this.§5b§().GetLinearVelocity().x * this.§5b§().GetLinearVelocity().x + this.§5b§().GetLinearVelocity().y * this.§5b§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc9_ || param2)
         {
            §§push(this.§-!R§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'Q§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§3m§());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§4E§);
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
                                                loop9:
                                                while(true)
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(param6);
                                                      if(_loc9_ || param2)
                                                      {
                                                         §§push(!§§pop());
                                                         while(true)
                                                         {
                                                         }
                                                         addr731:
                                                      }
                                                      loop11:
                                                      while(!§§pop())
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(_loc9_ || param2)
                                                            {
                                                               §§push(this.§4E§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     addr661:
                                                                     if(_loc10_ && param3)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr669:
                                                                     §§push(param1);
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§4E§);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                        }
                                                                     }
                                                                     addr669:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(this.§4E§);
                                                                              if(_loc10_ && param3)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 loop16:
                                                                                 while(_loc9_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc10_ && param2))
                                                                                       {
                                                                                          if(!(_loc9_ || this))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!(_loc9_ || this))
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                          addr774:
                                                                                          param1 = §§pop();
                                                                                          while(!_loc10_)
                                                                                          {
                                                                                             if(_loc10_ && param1)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             §§push(param2);
                                                                                             loop19:
                                                                                             for(; _loc9_ || this; while(true)
                                                                                             {
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue loop19;
                                                                                                §§goto(addr298);
                                                                                             },continue loop0)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop20:
                                                                                                while(_loc9_ || param2)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§,!R§());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                     addr502:
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  while(!_loc10_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                                  loop40:
                                                                                                                  while(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     loop41:
                                                                                                                     for(; !_loc10_; while(!(_loc10_ && param1))
                                                                                                                     {
                                                                                                                        continue loop40;
                                                                                                                     })
                                                                                                                     {
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(this.§%!R§);
                                                                                                                              if(!(_loc10_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - param1);
                                                                                                                              }
                                                                                                                              §§pop().§%!R§ = §§pop();
                                                                                                                              loop43:
                                                                                                                              while(!(_loc10_ && param3))
                                                                                                                              {
                                                                                                                                 loop44:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§%!R§);
                                                                                                                                    loop45:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc10_ && this))
                                                                                                                                          {
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   continue loop5;
                                                                                                                                                }
                                                                                                                                                §§push(1);
                                                                                                                                                loop46:
                                                                                                                                                for(; _loc9_ || this; §§push(1),if(_loc10_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                },if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   continue loop6;
                                                                                                                                                },if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr171);
                                                                                                                                                },this.§@j§(§<!R§.§5F§),§§goto(addr89))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                      if(!(_loc9_ || param2))
                                                                                                                                                      {
                                                                                                                                                         continue loop41;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ || param3))
                                                                                                                                                               {
                                                                                                                                                                  continue loop8;
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop41;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§%!R§ = 1;
                                                                                                                                                                        loop49:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc10_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§%!R§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop46;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§%!R§);
                                                                                                                                                                                       addr47:
                                                                                                                                                                                       continue loop45;
                                                                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                while(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                                                                   loop32:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc9_ || param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop23;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc9_ || this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr681:
                                                                                                                                                                                                         §§push(this.§%!R§);
                                                                                                                                                                                                         break loop45;
                                                                                                                                                                                                         addr720:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(this.§'Q§);
                                                                                                                                                                                                      if(!(_loc9_ || this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().§?l§);
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                      §§push(§;v§.§+?§);
                                                                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§%!R§ > param1);
                                                                                                                                                                                                         if(!(_loc10_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr439:
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  addr440:
                                                                                                                                                                                                                  §§push(param3);
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr444:
                                                                                                                                                                                                                  §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§5b§().GetPosition().x,this.§5b§().GetPosition().y,§1!e§.§?L§(this.§<!]§));
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr357:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param5);
                                                                                                                                                                                                                        addr359:
                                                                                                                                                                                                                        addr635:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop20;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr635:
                                                                                                                                                                                                                        while(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           break loop41;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop9;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr138:
                                                                                                                                                                                                                     if(!(_loc10_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop32;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr444);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr439);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr440);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                                                                   §§goto(addr515);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr514:
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                    }
                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 addr153:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr694:
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§@j§(§<!R§.§!!c§);
                                                                                                                                                                                    §§goto(addr700);
                                                                                                                                                                                 }
                                                                                                                                                                                 this.§@j§(§<!R§.§1!p§);
                                                                                                                                                                                 §§goto(addr750);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr681);
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                           addr89:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop49;
                                                                                                                                                                              }
                                                                                                                                                                              addr96:
                                                                                                                                                                              if(!(_loc10_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 this.addDamageParticles(this.§'Q§.§?l§.particles,param1);
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              addr506:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr514);
                                                                                                                                                                                 §§goto(addr96);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr308);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§-!!§);
                                                                                                                                                                        if(!(_loc10_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§%!R§ = §§pop();
                                                                                                                                                                        §§goto(addr624);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop43;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr153);
                                                                                                                                                                  if(_loc9_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr359);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  break loop20;
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            addr610:
                                                                                                                                                            break loop19;
                                                                                                                                                            addr639:
                                                                                                                                                         }
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                      addr389:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            §§goto(addr391);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr676);
                                                                                                                                                   }
                                                                                                                                                   if(§§pop() <= §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(param1);
                                                                                                                                                      break loop17;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr716);
                                                                                                                                                }
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr694);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr681);
                                                                                                                                                }
                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                {
                                                                                                                                                   addr714:
                                                                                                                                                   §§goto(addr715);
                                                                                                                                                   §§push(param1);
                                                                                                                                                   §§push(12);
                                                                                                                                                }
                                                                                                                                                §§goto(addr694);
                                                                                                                                             }
                                                                                                                                             §§goto(addr714);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    return §§pop();
                                                                                                                                    addr335:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop44;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr632:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr635);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr335);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr639);
                                                                                                                     }
                                                                                                                     if(!(_loc9_ || this))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr298:
                                                                                                                        if(!(_loc9_ || param1))
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        §§pop();
                                                                                                                        §§goto(addr716);
                                                                                                                     }
                                                                                                                     §§goto(addr390);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr506);
                                                                                                         }
                                                                                                         §§goto(addr357);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(_loc9_ || param3)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§goto(addr648);
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr612);
                                                                                             }
                                                                                             §§goto(addr590);
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       §§goto(addr598);
                                                                                    }
                                                                                    §§goto(addr691);
                                                                                    §§push(3);
                                                                                 }
                                                                                 §§goto(addr767);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    §§goto(addr676);
                                                                                 }
                                                                                 §§goto(addr632);
                                                                                 §§goto(addr669);
                                                                              }
                                                                           }
                                                                           addr734:
                                                                           §§goto(addr691);
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  §§goto(addr675);
                                                               }
                                                               addr765:
                                                               addr767:
                                                               return §§pop();
                                                               §§push(this.§%!R§);
                                                            }
                                                            §§goto(addr669);
                                                         }
                                                      }
                                                      §§goto(addr734);
                                                   }
                                                }
                                             }
                                             §§goto(addr731);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr765);
                        }
                     }
                  }
               }
               break;
               if(_loc10_ && param2)
               {
                  continue;
               }
               §§goto(addr389);
               §§push(§§pop());
            }
         }
         §§goto(addr774);
         §§push(this.§%!R§);
      }
      
      public function §@j§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §`!<§.§6!$§(param1,this.§-!#§.§!9§);
         }
      }
      
      public function §;!`§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§-!#§.material.§!^§(param1));
         if(_loc2_)
         {
            return §§pop() * this.§]!G§;
         }
      }
      
      public function §"!5§(param1:String) : Number
      {
         return this.§-!#§.material.§`!!§(param1);
      }
      
      public function §'!Q§() : String
      {
         return this.§-!#§.material.mName;
      }
      
      public function §<C§() : Number
      {
         return this.§-!#§.§]8§();
      }
      
      public function §;h§() : int
      {
         return this.§-!#§.§[!q§();
      }
      
      public function §8U§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!(_loc2_ && this))
         {
            §§push(this.§5b§().IsAwake());
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
                              §§push(this.§ !"§());
                              loop5:
                              while(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop19:
                                                                  while(_loc3_)
                                                                  {
                                                                     addr148:
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(Math.abs(this.§5b§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                           if(_loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       if(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr42);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop2;
                                                                              addr60:
                                                                           }
                                                                           loop20:
                                                                           for(; _loc3_; while(true)
                                                                           {
                                                                              §§push(Math.abs(this.§5b§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr42);
                                                                           })
                                                                           {
                                                                              addr83:
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              addr199:
                                                                              addr167:
                                                                              addr121:
                                                                              addr199:
                                                                              while(_loc3_ || _loc1_)
                                                                              {
                                                                                 continue loop11;
                                                                                 §§goto(addr83);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§pop();
                                                                                    break loop19;
                                                                                 }
                                                                                 addr189:
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr148);
                                                                              }
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr199);
                                                                     §§push(this.§%!R§ == this.§-!!§);
                                                                     continue loop10;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr121);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr60);
                                                         }
                                                      }
                                                      addr142:
                                                   }
                                                   §§goto(addr167);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr189);
                                    }
                                    if(_loc2_ && this)
                                    {
                                       continue;
                                    }
                                    §§goto(addr142);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr42:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public function §9!i§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§5b§().IsAwake());
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr41:
                     §§push(true);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr45:
                     §§push(this.isMoving());
                     if(_loc1_ || _loc2_)
                     {
                        addr54:
                        return !§§pop();
                     }
                  }
                  return §§pop();
               }
               §§goto(addr45);
            }
            §§goto(addr54);
         }
         §§goto(addr41);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§60§();
         }
         var _loc1_:int = 5;
         if(_loc3_)
         {
            §§push(Math.abs(this.§'!4§(this.§6$§[0])) < b2Settings.b2_linearSleepTolerance * _loc1_);
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
                        addr140:
                        while(true)
                        {
                           §§push(Math.abs(this.§'!4§(this.§6$§[1])) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr139:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(Math.abs(this.§'!4§(this.§6$§[2])) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(false);
                                                break loop7;
                                             }
                                             §§goto(addr140);
                                          }
                                          else
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(true);
                                          if(!_loc3_)
                                          {
                                             break loop7;
                                          }
                                          continue loop6;
                                       }
                                       addr51:
                                       return §§pop();
                                    }
                                    continue loop5;
                                    addr82:
                                 }
                                 continue loop0;
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr82);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §'!4§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc2_)
                  {
                     if(_loc4_ || param1)
                     {
                        addr74:
                        §§push(§§pop() / param1.length);
                        if(_loc4_)
                        {
                           break;
                        }
                        addr85:
                        §§push(Number(§§pop() + param1[_loc3_]));
                     }
                     _loc2_ = §§pop();
                     _loc3_++;
                     continue;
                     addr91:
                  }
                  §§goto(addr74);
               }
               §§goto(addr91);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr85);
         }
         return §§pop();
      }
      
      private function §60§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6$§[0].push(this.§5b§().GetLinearVelocity().x);
            loop0:
            while(true)
            {
               addr33:
               while(true)
               {
                  this.§6$§[1].push(this.§5b§().GetLinearVelocity().y);
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        this.§6$§[2].push(this.§5b§().GetAngularVelocity());
                        if(_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr33);
         }
         var _loc1_:* = uint(0);
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_ || this)
            {
               if(§§pop() >= 3)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     addr128:
                     this.§6$§[_loc1_].shift();
                     while(true)
                     {
                        addr108:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              addr114:
                              §§push(uint(§§pop() + 1));
                              while(true)
                              {
                                 _loc1_ = §§pop();
                              }
                              addr114:
                           }
                           §§goto(addr114);
                        }
                     }
                     addr133:
                  }
                  while(_loc2_)
                  {
                     §§goto(addr133);
                  }
                  continue;
               }
               if(this.§6$§[_loc1_].length > this.§2j§)
               {
                  §§goto(addr128);
               }
               §§goto(addr108);
            }
            §§goto(addr114);
         }
      }
      
      public function §+!4§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!G§ = param1;
         }
         do
         {
            if(this.§]!G§ > 1)
            {
               continue;
            }
            §§push(this.§?!M§);
            if(!_loc3_)
            {
               §§pop().§3!m§ = null;
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               else
               {
                  addr72:
               }
               return;
            }
            addr71:
            §§pop().§?1§();
            §§goto(addr72);
         }
         while(!(_loc2_ || _loc3_));
         
         §§goto(addr71);
         §§push(this.§?!M§);
      }
      
      public function §#!g§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!_loc3_)
         {
            §§push(this.§-!#§.§#!N§());
            loop0:
            while(true)
            {
               if(§§pop() == §0"§.§5P§)
               {
                  if(_loc4_)
                  {
                     §§push(this.§?!M§.mW);
                     loop1:
                     while(true)
                     {
                        §§push(this.§?!M§.mH);
                        if(_loc4_)
                        {
                           §§push(§§pop() * §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(§^g§.§^!S§);
                              loop16:
                              while(true)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue loop2;
                                 }
                                 addr161:
                                 loop11:
                                 for(; _loc4_ || this; §§goto(addr161))
                                 {
                                    while(true)
                                    {
                                       if(param1)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(_loc2_);
                                             loop17:
                                             while(true)
                                             {
                                                §§push(this.§<!p§());
                                                loop14:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(_loc3_ && this)
                                                         {
                                                            continue loop16;
                                                         }
                                                         §§push(Number(§§pop()));
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               while(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(this.§2I§.§>z§());
                                                                     while(_loc4_ || _loc2_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr151);
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr201);
                                                                           }
                                                                           addr199:
                                                                        }
                                                                     }
                                                                     break loop14;
                                                                     addr141:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     break loop19;
                                                                  }
                                                               }
                                                               break;
                                                               addr134:
                                                            }
                                                            addr126:
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               addr30:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§push(this.§'8§);
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        §§push(this.§'8§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           break;
                                                                        }
                                                                        addr201:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           break loop14;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr59);
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                               if(_loc4_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               addr59:
                                                               addr104:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           addr151:
                                                                           while(_loc4_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              continue loop16;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr59);
                                                                  §§goto(addr104);
                                                               }
                                                               return §§pop();
                                                               §§goto(addr126);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            break loop11;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr141);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr203);
                                                }
                                             }
                                          }
                                          §§goto(addr127);
                                       }
                                       §§goto(addr30);
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §§goto(addr104);
                                 }
                              }
                           }
                        }
                        §§goto(addr199);
                     }
                  }
                  §§goto(addr205);
               }
               else
               {
                  §§push(this.§5b§().GetMass());
               }
               §§goto(addr134);
            }
         }
         §§goto(addr179);
      }
      
      public function §<!p§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(!(_loc2_ && this))
            {
               §§push(_loc1_);
               if(_loc3_ || _loc2_)
               {
                  §§push(2);
                  if(_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc3_)
                     {
                        addr64:
                        §§push(§§pop() * Math.min(10,this.§?!M§.§;!0§ - 1));
                        if(!(_loc2_ && _loc2_))
                        {
                           addr80:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc2_)
                        {
                           addr87:
                           _loc1_ = §§pop();
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr80);
               }
               §§goto(addr64);
            }
         }
         §§goto(addr87);
      }
      
      public function § !d§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§5b§().GetLinearVelocity().x);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§5b§().GetLinearVelocity().y);
         if(!_loc6_)
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
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr104:
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     continue;
                  }
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && this))
                  {
                     addr125:
                     if(_loc7_)
                     {
                        addr128:
                        §§push(Number(§§pop()));
                        if(_loc7_ || _loc2_)
                        {
                           _loc3_ = §§pop();
                           do
                           {
                              this.§5b§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                           }
                           while(!(_loc7_ || param1));
                           
                           if(_loc6_ && _loc2_)
                           {
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc7_ || this)
                                 {
                                    §§goto(addr104);
                                 }
                                 §§goto(addr125);
                              }
                              continue;
                              addr144:
                           }
                           return;
                           addr94:
                        }
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                        addr142:
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr128);
               }
            }
            §§goto(addr142);
         }
         §§goto(addr94);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§=[§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§+F§) : void
      {
      }
      
      public function addDamageParticles(param1:§+F§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §7@§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§5b§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!_loc6_)
         {
            §§push(param2.x * param1);
            if(!(_loc6_ && param3))
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(_loc5_ || this)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc5_ || param1)
            {
               §§push(param2.y * param1);
               if(_loc5_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         do
         {
            this.§5b§().§`!'§(_loc4_);
         }
         while(_loc6_);
         
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
                  §§push(this.§2a§());
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
                           if(!(_loc7_ && this))
                           {
                              §§push(360);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop5:
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
                                          if(_loc6_)
                                          {
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      while(_loc6_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         continue loop0;
                                                         addr139:
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr149:
                                                               §§push(_loc5_);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc7_ && param2)
                                                                  {
                                                                     break loop7;
                                                                  }
                                                                  addr170:
                                                                  _loc4_ = Number(§§pop());
                                                                  loop17:
                                                                  for(; !(_loc7_ && this); while(true)
                                                                  {
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     §§goto(addr28);
                                                                  },if(§§pop())
                                                                  {
                                                                     continue loop9;
                                                                  },while(true)
                                                                  {
                                                                     §§goto(addr105);
                                                                  })
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        addr28:
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           this.§[!b§(_loc4_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(0);
                                                                                    if(!(_loc6_ || param2))
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                addr116:
                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() / 2);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(§§pop() >= §§pop())
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(param1);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || this)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr297);
                                                                                                                                    }
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    §§goto(addr170);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                          break loop17;
                                                                                                                                       }
                                                                                                                                       break loop7;
                                                                                                                                    }
                                                                                                                                    addr211:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break loop7;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr79:
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                               }
                                                                                                               break loop7;
                                                                                                            }
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            §§push(_loc4_);
                                                                                                            §§goto(addr139);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr210:
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr211);
                                                                                                   }
                                                                                                   §§goto(addr149);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      continue loop13;
                                                                                                      §§goto(addr116);
                                                                                                   }
                                                                                                   addr226:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr209:
                                                                                             }
                                                                                             §§goto(addr210);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr287:
                                                                                             §§push(param1);
                                                                                          }
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       continue loop3;
                                                                                       addr105:
                                                                                    }
                                                                                    if(!(_loc6_ || _loc3_))
                                                                                    {
                                                                                       break loop17;
                                                                                    }
                                                                                    §§push(_loc4_);
                                                                                 }
                                                                                 §§goto(addr209);
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr287);
                                                }
                                             }
                                             addr276:
                                          }
                                          break;
                                       }
                                       addr297:
                                       var _loc3_:* = §§pop();
                                       if(!_loc7_)
                                       {
                                          §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                          if(_loc6_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                       }
                                       do
                                       {
                                          this.§[!b§(_loc3_);
                                       }
                                       while(_loc7_ && param1);
                                       
                                       return;
                                    }
                                 }
                              }
                           }
                           §§goto(addr276);
                        }
                     }
                  }
               }
            }
            §§goto(addr278);
         }
         §§goto(addr222);
      }
      
      public function §&!a§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§%z§(this.§5b§().GetAngle()));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  §§push(360);
                  if(!_loc4_)
                  {
                     addr107:
                     §§push(§§pop() * §§pop());
                     if(_loc3_ || _loc3_)
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc4_)
                     {
                        addr111:
                        §§push(Number(§§pop()));
                        loop0:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(§2!n§(_loc2_));
                              if(_loc3_ || _loc2_)
                              {
                                 continue loop0;
                              }
                              addr69:
                              _loc2_ = §§pop();
                              loop2:
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§5b§().§,v§(_loc2_);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 return;
                              }
                           }
                        }
                        addr111:
                     }
                     §§goto(addr111);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr107);
            }
            §§goto(addr111);
         }
         §§goto(addr72);
      }
      
      public function §6!1§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§5b§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!(_loc15_ && param1))
         {
            §§push(§§pop() - param2.x);
            if(_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(!(_loc15_ && this))
         {
            §§push(§§pop() - param2.y);
            if(_loc14_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc15_)
         {
            §§push(_loc4_);
            if(_loc14_ || _loc3_)
            {
               §§push(0);
               if(_loc14_ || param1)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc15_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_ || param2)
                        {
                           §§pop();
                           if(_loc14_ || this)
                           {
                              addr126:
                              §§push(_loc5_);
                              if(!_loc15_)
                              {
                                 addr106:
                                 §§push(§§pop() == 0);
                              }
                              var _loc6_:* = §§pop();
                              §§push(_loc4_);
                              if(_loc14_ || _loc3_)
                              {
                                 §§push(§§pop() / _loc5_);
                                 if(_loc14_)
                                 {
                                    addr149:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(Math.atan(_loc7_) * 180);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop() / Math.PI);
                                    if(_loc14_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc8_:* = §§pop();
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       §§push(0);
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc14_ || param2)
                                             {
                                                §§push(_loc8_);
                                                if(_loc14_)
                                                {
                                                   addr200:
                                                   §§push(§§pop() + 180);
                                                   if(_loc14_)
                                                   {
                                                      §§goto(addr203);
                                                   }
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr200);
                                    }
                                    addr203:
                                    §§push(Number(§§pop()));
                                    if(!_loc15_)
                                    {
                                       addr206:
                                       _loc8_ = §§pop();
                                       addr207:
                                       §§push(_loc8_);
                                       if(!_loc14_)
                                       {
                                       }
                                       §§goto(addr216);
                                    }
                                    §§push(param1);
                                    if(_loc14_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc14_)
                                       {
                                       }
                                       §§goto(addr216);
                                    }
                                    addr216:
                                    var _loc9_:Number;
                                    §§push(_loc9_ = §§pop());
                                    if(_loc14_ || _loc3_)
                                    {
                                       §§push(§§pop() * Math.PI);
                                       if(_loc14_ || param2)
                                       {
                                          §§goto(addr236);
                                       }
                                       §§goto(addr245);
                                    }
                                    addr236:
                                    §§push(§§pop() / 180);
                                    if(_loc14_ || param1)
                                    {
                                       addr245:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(Math.sin(_loc10_) * _loc6_);
                                    if(!(_loc15_ && this))
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
                                    if(_loc14_ || param1)
                                    {
                                       this.§5b§().§`!'§(_loc13_);
                                    }
                                    return;
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr115);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc14_ || this)
                     {
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr126);
                  §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
               }
               §§goto(addr106);
            }
            §§goto(addr126);
         }
         addr115:
      }
   }
}
