package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §"x§.§-8§;
   import §#V§.b2Body;
   import §#V§.b2BodyDef;
   import §#V§.b2FilterData;
   import §#V§.b2Fixture;
   import §#V§.b2World;
   import §,C§.b2PolygonShape;
   import §-d§.§%d§;
   import §-d§.§-C§;
   import §-d§.§3!F§;
   import §-d§.§7]§;
   import §-d§.§>r§;
   import §2_§.§'u§;
   import §2_§.§@!6§;
   import §3!m§.b2Settings;
   import §5!c§.§9'§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import flash.geom.Point;
   
   public class §`!_§
   {
      
      public static const §@!X§:uint;
      
      public static const §?!l§:uint;
      
      public static const §#!]§:uint;
      
      public static const §7k§:uint;
      
      public static const §<!<§:Boolean = true;
      
      public static const §=![§:Number = 5;
      
      public static const §3!`§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§§findproperty(§@!X§));
            §§push(1);
            if(_loc2_ || §`!_§)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§@!X§ = §§pop();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§?!l§));
               §§push(1);
               if(!_loc1_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§?!l§ = §§pop();
               while(true)
               {
                  §§push(§§findproperty(§#!]§));
                  §§push(1);
                  if(_loc2_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§#!]§ = §§pop();
                  loop2:
                  while(!_loc1_)
                  {
                     §§push(§§findproperty(§7k§));
                     §§push(1);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§7k§ = §§pop();
                     do
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop2;
                        }
                        §<!<§ = true;
                        loop4:
                        while(true)
                        {
                           §=![§ = 5;
                           while(true)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                     while(_loc1_);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr32);
      }
      
      private var §79§:String;
      
      private var §2!X§:int;
      
      private var §&0§:int;
      
      public var §^r§:String;
      
      public var §]!g§:int;
      
      private var §1`§:§>r§;
      
      private var § t§:§>!e§;
      
      private var mWorld:b2World;
      
      protected var §&;§:String = "";
      
      protected var §7#§:int = 1;
      
      private var §9W§:b2Fixture;
      
      private var §40§:b2Body;
      
      private var §4!p§:b2Vec2;
      
      public var §&!>§:Number;
      
      public var §]l§:Number;
      
      private var §>!D§:Number;
      
      private var §[@§:Boolean = false;
      
      private var §9!z§:Number;
      
      private var §@<§:Number;
      
      private var §`e§:Number;
      
      private var §"!A§:Number;
      
      private var §3!D§:Number;
      
      private var §8!T§:Number;
      
      public var §9!&§:Number = 1;
      
      private var §5!>§:Boolean = false;
      
      public var §'S§:Number = 0;
      
      public var §0_§:Number = 0;
      
      protected var §&V§:Boolean = false;
      
      public var §7![§:§ 6§;
      
      private var §2O§:Sprite;
      
      private var §#!u§:Number = 0;
      
      private var §<h§:Number = 0;
      
      private var §`!j§:Number = 0;
      
      private var §'!I§:Number = 1.0;
      
      private var §,!p§:Boolean = false;
      
      protected var §[!e§:§!K§;
      
      private var §&!l§:Boolean = true;
      
      public function §`!_§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(_loc17_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§^r§ = param6;
               while(true)
               {
                  this.§1`§ = §%d§.§4!^§(param6);
                  loop2:
                  while(true)
                  {
                     this.§ t§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§2O§ = param2;
                        loop4:
                        while(true)
                        {
                           this.§'!I§ = param10;
                           loop5:
                           while(!_loc16_)
                           {
                              this.§,!p§ = param11;
                              while(true)
                              {
                                 this.§2!X§ = param5;
                                 continue loop2;
                                 addr166:
                                 loop8:
                                 for(; _loc17_ || this; if(!(_loc17_ || this))
                                 {
                                    continue;
                                 },if(!_loc17_)
                                 {
                                    continue loop2;
                                 },while(true)
                                 {
                                    §§goto(addr54);
                                 })
                                 {
                                    this.§&0§ = this.§1`§.§0E§();
                                    while(true)
                                    {
                                       this.§[!e§ = new §!K§(§=![§,§3!`§);
                                       continue loop4;
                                       addr43:
                                       if(!(_loc17_ || this))
                                       {
                                          continue;
                                       }
                                       if(_loc16_)
                                       {
                                          continue loop5;
                                       }
                                       if(false)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§push(this.§7![§);
                                             if(_loc17_)
                                             {
                                                §§push(this.§&0§);
                                                if(_loc17_ || param3)
                                                {
                                                   §§pop().§^u§(§§pop() == §7]§.§"!D§);
                                                   while(_loc17_ || param2)
                                                   {
                                                      this.mWorld = param3;
                                                      if(_loc16_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc16_ && param2))
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            §§goto(addr43);
                                                         }
                                                         else
                                                         {
                                                            while(_loc17_)
                                                            {
                                                               §§push(this.§7![§);
                                                               while(true)
                                                               {
                                                                  §§push(this.§&0§);
                                                                  addr101:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§9!F§(§§pop(),this.§1`§.§#h§(),this.§1`§.§29§() / §'u§.§18§,this.§1`§.§=!F§() / §'u§.§18§);
                                                                  }
                                                               }
                                                            }
                                                            continue loop3;
                                                            addr95:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc16_)
                                                         {
                                                            break loop13;
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§7![§);
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         if(§§pop().§[9§(param1.§#!3§.animationManager))
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                      §§goto(addr99);
                                                      §§goto(addr72);
                                                   }
                                                   addr72:
                                                   addr137:
                                                }
                                                §§goto(addr101);
                                             }
                                             §§goto(addr99);
                                          }
                                          continue loop4;
                                          addr54:
                                       }
                                       var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                                       if(_loc17_ || param1)
                                       {
                                          this.§40§ = this.mWorld.§!!$§(_loc12_);
                                          if(!_loc16_)
                                          {
                                             this.§40§.§2[§(this);
                                             if(_loc17_)
                                             {
                                                §§push(this.§&0§);
                                                if(!(_loc16_ && param1))
                                                {
                                                   §§push(§7]§.§?!S§);
                                                   if(_loc17_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            addr273:
                                                            §§push(b2PolygonShape);
                                                            §§push(this.§1`§.shape.§2!d§);
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               §§push(param10);
                                                               if(!_loc16_)
                                                               {
                                                                  addr289:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(this.§1`§.shape.§@@§);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     §§push(§§pop() * param10);
                                                                  }
                                                               }
                                                               _loc14_ = §§pop().§+!'§(§§pop(),§§pop());
                                                               if(_loc17_)
                                                               {
                                                                  this.§9W§ = this.§40§.CreateFixture2(_loc14_,this.§1`§.§!!r§());
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr398:
                                                                     §§push(this.§9W§);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(this.§1`§);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop().§5!v§());
                                                                           if(!(_loc16_ && param3))
                                                                           {
                                                                              §§pop().§?!§(§§pop());
                                                                              if(!(_loc16_ && this))
                                                                              {
                                                                                 addr427:
                                                                                 this.§9W§.§6+§(this.§1`§.§[!d§());
                                                                              }
                                                                              var _loc13_:b2FilterData = new b2FilterData();
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 addr564:
                                                                                 if(!this.§#!1§())
                                                                                 {
                                                                                    addr529:
                                                                                    §§push(this.§^r§.toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                    if(!(this.§^r§.toUpperCase() == "MISC_WHITE_BIRD_EGG"))
                                                                                    {
                                                                                       addr531:
                                                                                       §§pop();
                                                                                       if(_loc17_ || this)
                                                                                       {
                                                                                          §§push(this.§^r§);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(§§pop().toUpperCase() == "MISC_FOOD_EGG");
                                                                                             if(_loc17_ || this)
                                                                                             {
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   if(!(_loc16_ && param2))
                                                                                                   {
                                                                                                      if(_loc16_ && param1)
                                                                                                      {
                                                                                                         §§goto(addr564);
                                                                                                      }
                                                                                                      addr513:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr515:
                                                                                                         _loc13_.§8K§ = §?!l§;
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            §§push(65535);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(§§pop() & ~§@!X§);
                                                                                                            }
                                                                                                            §§pop().§'!7§ = §§pop();
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr457:
                                                                                                               this.§9W§.§6!U§(_loc13_);
                                                                                                               if(_loc17_ || param2)
                                                                                                               {
                                                                                                                  this.§>!D§ = this.§1`§.§<!A§();
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr457);
                                                                                                                        }
                                                                                                                        §§push(this.§1`§);
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§]l§);
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc17_ || param2)
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc17_ || param2)
                                                                                                                                    {
                                                                                                                                       this.§&!>§ = this.§]l§ = this.§1`§.§]l§;
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          addr769:
                                                                                                                                          if(this.§1`§.§]!g§ != §>r§.§&"§)
                                                                                                                                          {
                                                                                                                                             addr767:
                                                                                                                                             this.§7![§.setDamagedFrame();
                                                                                                                                             addr720:
                                                                                                                                             if(this.isTexture())
                                                                                                                                             {
                                                                                                                                                addr724:
                                                                                                                                                if(_loc16_ && param1)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr720);
                                                                                                                                                addr779:
                                                                                                                                             }
                                                                                                                                             addr733:
                                                                                                                                             addr732:
                                                                                                                                             if(param9 != 0)
                                                                                                                                             {
                                                                                                                                                if(_loc17_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr751:
                                                                                                                                                   this.§8Z§(param9);
                                                                                                                                                }
                                                                                                                                                addr754:
                                                                                                                                                if(_loc17_ || param1)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                this.§2O§.visible = false;
                                                                                                                                                §§goto(addr779);
                                                                                                                                             }
                                                                                                                                             this.§5!I§();
                                                                                                                                             addr717:
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                this.§'!A§(0,1);
                                                                                                                                                addr706:
                                                                                                                                                if(_loc17_ || param3)
                                                                                                                                                {
                                                                                                                                                   addr713:
                                                                                                                                                   §§push(this.§7![§);
                                                                                                                                                   if(!(_loc16_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§pop().§@!k§(this.§1`§.shape);
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc17_ || param3))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr754);
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr717);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr706);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr767);
                                                                                                                                                   addr713:
                                                                                                                                                }
                                                                                                                                                §§goto(addr724);
                                                                                                                                             }
                                                                                                                                             addr768:
                                                                                                                                             §§goto(addr768);
                                                                                                                                          }
                                                                                                                                          §§goto(addr754);
                                                                                                                                       }
                                                                                                                                       §§goto(addr713);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    this.§&!>§ = this.§]l§ = Math.round(this.§;a§(true) * this.§1`§.§9!!§());
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       addr629:
                                                                                                                                       §§push(this.§&!>§);
                                                                                                                                       if(_loc17_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          if(!(_loc16_ && param3))
                                                                                                                                          {
                                                                                                                                             addr646:
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc17_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr654:
                                                                                                                                                   this.§&!>§ = this.§]l§ = 1;
                                                                                                                                                   if(_loc17_ || param3)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr769);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr713);
                                                                                                                                                }
                                                                                                                                                §§goto(addr751);
                                                                                                                                             }
                                                                                                                                             §§goto(addr769);
                                                                                                                                          }
                                                                                                                                          §§goto(addr733);
                                                                                                                                       }
                                                                                                                                       §§goto(addr732);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr754);
                                                                                                                              }
                                                                                                                              §§goto(addr646);
                                                                                                                           }
                                                                                                                           §§goto(addr767);
                                                                                                                        }
                                                                                                                        §§goto(addr769);
                                                                                                                     }
                                                                                                                     §§goto(addr515);
                                                                                                                  }
                                                                                                                  §§goto(addr713);
                                                                                                                  addr469:
                                                                                                               }
                                                                                                               §§goto(addr754);
                                                                                                            }
                                                                                                            §§goto(addr654);
                                                                                                         }
                                                                                                         §§goto(addr629);
                                                                                                      }
                                                                                                      §§goto(addr457);
                                                                                                   }
                                                                                                   §§goto(addr529);
                                                                                                }
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                             §§goto(addr720);
                                                                                          }
                                                                                          §§goto(addr529);
                                                                                       }
                                                                                       §§goto(addr724);
                                                                                    }
                                                                                    §§goto(addr513);
                                                                                 }
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    _loc13_.§8K§ = §@!X§;
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       §§push(65535);
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          §§push(§§pop() & ~§?!l§);
                                                                                       }
                                                                                       §§pop().§'!7§ = §§pop();
                                                                                       if(!(_loc16_ && param3))
                                                                                       {
                                                                                          §§goto(addr457);
                                                                                       }
                                                                                       §§goto(addr654);
                                                                                    }
                                                                                    §§goto(addr724);
                                                                                 }
                                                                                 §§goto(addr751);
                                                                              }
                                                                              §§goto(addr469);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr427);
                                                                     addr318:
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                         else
                                                         {
                                                            addr385:
                                                            this.§9W§ = this.§40§.CreateFixture2(this.§1`§.shape.§7!H§(param10),this.§1`§.§!!r§());
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§&0§);
                                                         if(_loc17_ || this)
                                                         {
                                                            addr328:
                                                            §§push(§7]§.§"!D§);
                                                            if(_loc17_ || param2)
                                                            {
                                                               addr337:
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc17_ || this)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        addr354:
                                                                        §§pop();
                                                                        if(!(_loc16_ && param1))
                                                                        {
                                                                           addr366:
                                                                           §§push(this.§&0§ == §7]§.§&&§);
                                                                        }
                                                                        §§goto(addr398);
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc17_ || param2)
                                                                     {
                                                                        §§goto(addr385);
                                                                     }
                                                                  }
                                                                  §§goto(addr398);
                                                               }
                                                               §§goto(addr354);
                                                            }
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                      §§goto(addr398);
                                                   }
                                                   §§goto(addr337);
                                                }
                                                §§goto(addr328);
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr366);
                                       }
                                       §§goto(addr273);
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  if(_loc16_ && param3)
                  {
                     continue;
                  }
                  this.§]!g§ = this.§1`§.§]!g§;
                  §§goto(addr166);
               }
            }
         }
         §§goto(addr128);
      }
      
      public static function §08§(param1:int, param2:§-C§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param2 == null)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§#!V§[param1]);
         if(!(_loc6_ && param2))
         {
            if(§§pop().length > 0)
            {
               if(!_loc6_)
               {
                  §§push(param3);
                  if(_loc5_)
                  {
                     addr66:
                     if(§§pop().length <= 0)
                     {
                        if(_loc5_)
                        {
                           addr71:
                           §§push(param2.§'!$§);
                           if(!_loc5_)
                           {
                           }
                           §§goto(addr76);
                        }
                     }
                     §9'§.§!!`§(_loc4_,param3);
                  }
                  §§goto(addr76);
               }
               §§goto(addr71);
            }
            addr76:
            param3 = §§pop();
            if(_loc5_ || param3)
            {
            }
            return;
         }
         §§goto(addr66);
      }
      
      public static function §#!7§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(180);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§goto(addr41);
               }
            }
            §§goto(addr46);
         }
         addr41:
         §§push(§§pop() / Math.PI);
         if(!_loc3_)
         {
            addr46:
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc2_)
         {
            return §§pop() % 360;
         }
      }
      
      public static function §+5§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc3_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc3_ || _loc2_)
            {
               addr52:
               return Number(§§pop());
            }
         }
         §§goto(addr52);
      }
      
      public function get sprite() : Sprite
      {
         return this.§2O§;
      }
      
      public function get x() : Number
      {
         return this.§#!u§;
      }
      
      public function get y() : Number
      {
         return this.§<h§;
      }
      
      public function get scale() : Number
      {
         return this.§'!I§;
      }
      
      public function get front() : Boolean
      {
         return this.§,!p§;
      }
      
      public function get §7E§() : Number
      {
         return this.§40§.GetPosition().x;
      }
      
      public function get §1u§() : Number
      {
         return this.§40§.GetPosition().y;
      }
      
      public function get §'!-§() : §>r§
      {
         return this.§1`§;
      }
      
      public function get §'h§() : Boolean
      {
         return this.§>!D§ >= 0;
      }
      
      public function get §]1§() : §>!e§
      {
         return this.§ t§;
      }
      
      public function get §`!-§() : Boolean
      {
         return this.§&!l§;
      }
      
      public function set §`!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§&!l§ = param1;
         }
      }
      
      public function set §?!P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[@§ = param1;
         }
      }
      
      public function set §&Y§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!e§.§&Y§ = param1;
         }
      }
      
      public function get §&Y§() : uint
      {
         return this.§[!e§.§&Y§;
      }
      
      public function get §4N§() : Boolean
      {
         return this.§5!>§;
      }
      
      public function set §4N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!>§ = param1;
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
         return this.§79§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§79§ = param1;
         }
      }
      
      public function §3g§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9W§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr29);
            }
            §§pop().§6!U§(param1);
         }
         addr29:
         if(_loc2_)
         {
            §§push(this.§9W§);
         }
      }
      
      protected function §'!4§(param1:String) : int
      {
         return §9!B§.§'!4§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc5_ || this)
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr128:
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.mWorld);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr153:
                     while(true)
                     {
                        §§pop().§`f§(this.§3J§());
                        addr156:
                        while(true)
                        {
                           this.mWorld = null;
                           addr140:
                           while(true)
                           {
                           }
                        }
                     }
                     addr113:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     this.§2O§ = null;
                     loop7:
                     while(_loc1_ || _loc2_)
                     {
                        addr94:
                        while(true)
                        {
                           this.§9W§ = null;
                           addr82:
                           loop11:
                           while(true)
                           {
                              this.§4!p§ = null;
                              while(_loc1_ || _loc1_)
                              {
                                 this.§1`§ = null;
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop11;
                                 }
                              }
                              continue loop7;
                           }
                           return;
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr140);
                  }
               }
               while(true)
               {
                  this.§7![§.dispose();
                  §§goto(addr135);
                  §§goto(addr140);
               }
            }
            §§goto(addr153);
         }
         §§goto(addr82);
      }
      
      public function §8Z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§3J§());
            §§push(360);
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!_loc2_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§=!y§(§§pop());
         }
      }
      
      public function §8c§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(360);
         §§push(this.§3J§().GetAngle());
         if(_loc1_)
         {
            §§push(180);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc1_ || this)
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc2_ && this))
                  {
                     addr63:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc1_)
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §=!`§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§3J§().SetLinearVelocity(param1);
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
                     this.§9!T§();
                     addr72:
                     while(!_loc5_)
                     {
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§9W§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§3J§());
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
                                 while(true)
                                 {
                                    §§pop();
                                    addr182:
                                    loop18:
                                    while(true)
                                    {
                                       §§push(this.§3J§());
                                       addr156:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§§pop().GetPosition());
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
                                                   addr162:
                                                   while(!_loc6_)
                                                   {
                                                   }
                                                   continue loop18;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop8:
                                 while(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          loop10:
                                          while(!_loc6_)
                                          {
                                             §§push(this.§3J§());
                                             loop11:
                                             while(_loc5_ || param2)
                                             {
                                                §§push(§§pop().GetPosition());
                                                while(true)
                                                {
                                                   if(_loc5_ || param3)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                         addr92:
                                                      }
                                                      §§push(§§pop().y);
                                                      while(true)
                                                      {
                                                         if(_loc5_ || param2)
                                                         {
                                                            if(_loc6_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            §§push(param1);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               addr108:
                                                               while(!(_loc6_ && param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc6_ && param3))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           break;
                                                                           addr125:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§pop();
                                                                              if(_loc6_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(this.§3J§());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr24);
                                                                              continue loop11;
                                                                           }
                                                                           §§goto(addr162);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr159);
                                                   addr24:
                                                   §§push(§§pop().GetPosition());
                                                   if(!(_loc5_ || param2))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(param2);
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc6_ && param3)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop() <= §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc6_ && param2)
                                                               {
                                                                  §§goto(addr108);
                                                               }
                                                               §§goto(addr57);
                                                            }
                                                            §§goto(addr125);
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr107);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr92);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                    §§goto(addr115);
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr182);
      }
      
      public function §?l§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!p§ = param1;
         }
      }
      
      public function §;b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§4!p§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.§=!`§(this.§4!p§,false);
                  do
                  {
                     this.§4!p§ = null;
                  }
                  while(!_loc2_);
                  
                  addr71:
               }
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §9!T§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!param1)
            {
               if(!_loc2_)
               {
                  addr28:
                  §§push(this.§3J§());
                  if(!(_loc2_ && _loc2_))
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr40:
                     §§push(param1.x);
                     if(_loc3_ || this)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§pop();
                                    §§goto(addr130);
                                 }
                              }
                           }
                           if(!§§pop())
                           {
                              §§push(this.§3J§());
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().§^j§(Math.atan2(param1.x,param1.y));
                                 addr99:
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       §§goto(addr130);
                                    }
                                    else
                                    {
                                       addr138:
                                       this.§3J§().§^j§(0);
                                       addr140:
                                       addr136:
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr99);
               }
               addr130:
               if(_loc3_ || param1)
               {
                  addr134:
                  §§push(param1.y == 0);
               }
               return;
            }
            §§goto(addr40);
         }
         §§goto(addr28);
      }
      
      public function §<n§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               param1 = this.§3J§().GetLinearVelocity();
               addr20:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(_loc3_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               this.§8Z§(_loc2_);
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function §=c§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3J§().§^j§(param1);
         }
      }
      
      public function §3J§() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9W§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr43);
                  }
               }
               return null;
            }
            §§goto(addr43);
         }
         addr43:
         return this.§9W§.GetBody();
      }
      
      public function §,!"§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param1 != -9999)
            {
               loop0:
               while(true)
               {
                  this.§#!u§ = param1;
                  while(true)
                  {
                     this.§<h§ = param2;
                     while(_loc4_)
                     {
                        continue loop0;
                        if(!(_loc3_ && param2))
                        {
                           return;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§3J§());
               loop4:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr100:
                  while(true)
                  {
                     §§push(this.§#!u§);
                     addr102:
                     while(true)
                     {
                        §§push(§'u§.§18§);
                        addr104:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr105:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function §'!A§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(_loc6_)
         {
            §§push(this.§&V§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr447:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr448:
                        while(true)
                        {
                           this.§&V§ = false;
                           addr442:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr446:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  if(_loc6_ || this)
                  {
                     if(!(_loc5_ && param1))
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
                                 }
                              }
                           }
                           addr435:
                        }
                        loop7:
                        while(true)
                        {
                           §§push(this.updateFlyingFrameAnimations(param2));
                           loop8:
                           while(_loc6_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    addr404:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr405:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr354:
                                    if(!(_loc6_ || param1))
                                    {
                                       continue;
                                    }
                                    loop24:
                                    while(true)
                                    {
                                       §§push(this.§9!&§);
                                       loop25:
                                       while(true)
                                       {
                                          §§push(§§pop() > 1);
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                if(§§pop())
                                                {
                                                   loop43:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(this.§7![§);
                                                                  loop45:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop().§1O§));
                                                                     loop46:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(4);
                                                                                       §§push(this.§7![§.§1O§.blurX - 4);
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() / 20);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() % 28);
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop25;
                                                                                       }
                                                                                       addr296:
                                                                                       _loc4_ = §§pop();
                                                                                       loop28:
                                                                                       while(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.§7![§);
                                                                                          loop29:
                                                                                          while(!_loc5_)
                                                                                          {
                                                                                             §§pop().§1O§.blurX = _loc4_;
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop28;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(this.§7![§);
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§pop().§1O§.blurY = _loc4_;
                                                                                                               while(!(_loc5_ && param2))
                                                                                                               {
                                                                                                                  continue loop31;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                               addr200:
                                                                                                            }
                                                                                                            continue loop45;
                                                                                                         }
                                                                                                         continue loop45;
                                                                                                      }
                                                                                                      §§goto(addr442);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr362:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.updateBlinkingFrameAnimations(param2));
                                                                                                         break loop43;
                                                                                                      }
                                                                                                   }
                                                                                                   addr395:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§7![§);
                                                                                                   break loop29;
                                                                                                }
                                                                                             }
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   §§goto(addr354);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      break loop23;
                                                                                                   }
                                                                                                   addr393:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                §§goto(addr395);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§2!m§();
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr339:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             addr341:
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                                continue loop43;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§goto(addr297);
                                                                                       }
                                                                                       addr297:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr435);
                                                                                    }
                                                                                    §§goto(addr436);
                                                                                 }
                                                                                 continue loop25;
                                                                              }
                                                                              §§goto(addr177);
                                                                              continue loop46;
                                                                           }
                                                                           addr252:
                                                                        }
                                                                        §§goto(addr377);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   while(!_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr369);
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   §§goto(addr404);
                                                   addr321:
                                                }
                                                §§goto(addr252);
                                             }
                                             §§goto(addr394);
                                          }
                                          §§goto(addr321);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.updateScreamingFrameAnimations(param2));
                                 if(!(_loc5_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr393);
                                    }
                                    §§goto(addr362);
                                 }
                                 §§goto(addr347);
                                 §§goto(addr405);
                              }
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr447);
                  }
                  §§goto(addr436);
               }
            }
         }
         §§goto(addr176);
      }
      
      public function §5!I§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§3J§().GetPosition().x);
         if(_loc3_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§3J§().GetPosition().y);
         if(!(_loc4_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            this.§8!T§ = this.§`e§;
            while(true)
            {
               this.§"!A§ = this.§9!z§;
               loop1:
               while(true)
               {
                  this.§3!D§ = this.§@<§;
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§3J§().GetAngle());
                     if(!_loc4_)
                     {
                        §§push(180);
                        if(_loc3_)
                        {
                           addr180:
                           §§push(§§pop() * (§§pop() / Math.PI));
                           if(!(_loc4_ && this))
                           {
                              §§push(360);
                           }
                           §§pop().§`e§ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(this);
                              §§push(_loc1_);
                              if(_loc3_)
                              {
                                 §§push(§§pop() / §'u§.§18§);
                              }
                              §§pop().§9!z§ = §§pop();
                              while(true)
                              {
                                 §§push(this);
                                 §§push(_loc2_);
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §§push(§§pop() / §'u§.§18§);
                                 }
                                 §§pop().§@<§ = §§pop();
                                 while(_loc3_ || _loc3_)
                                 {
                                    continue loop1;
                                    if(_loc3_ || _loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        §§push(§§pop() % §§pop());
                     }
                     §§goto(addr180);
                     if(!_loc4_)
                     {
                        return;
                        addr95:
                     }
                  }
               }
               if(!(_loc3_ || _loc1_))
               {
                  continue;
               }
               §§push(this.§[!e§);
               loop6:
               while(true)
               {
                  §§pop().§+!K§();
                  addr100:
                  while(true)
                  {
                     §§push(this.§[!e§);
                     if(_loc4_)
                     {
                        continue loop6;
                     }
                     §§pop().§8!X§(this.§3J§());
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr95);
               }
            }
         }
         §§goto(addr100);
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
      
      public function §;!C§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
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
                        §§push(§-8§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + param1);
                           if(_loc4_)
                           {
                              addr932:
                              §§push(§§pop() + " overriding to 0");
                           }
                           §§pop().log(§§pop());
                           while(true)
                           {
                              addr883:
                              while(true)
                              {
                                 §§push(param2);
                                 continue loop0;
                              }
                              addr772:
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              this.§<h§ = this.§@<§;
                              loop38:
                              while(_loc4_)
                              {
                                 loop39:
                                 while(true)
                                 {
                                    §§push(this.§`e§);
                                    loop40:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(this.§8!T§);
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop42:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop43:
                                                while(_loc4_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop44:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop45:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            loop46:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop47:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  loop48:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           loop49:
                                                                           while(!§§pop())
                                                                           {
                                                                              §§push(this.§8!T§);
                                                                              loop50:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§`e§);
                                                                                 loop51:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                    loop52:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop53:
                                                                                       while(_loc4_ || this)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop54:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr642:
                                                                                                addr855:
                                                                                                loop55:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(this.§8!T§);
                                                                                                      loop56:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(this.§`e§);
                                                                                                               loop57:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  loop58:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(180);
                                                                                                                     loop59:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                 loop60:
                                                                                                                                 while(_loc4_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr579:
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(this.§`e§);
                                                                                                                                          if(_loc4_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(param1);
                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(this.§8!T§);
                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - this.§`e§);
                                                                                                                                                   if(!(_loc3_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr621:
                                                                                                                                                      addr616:
                                                                                                                                                      addr622:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param2);
                                                                                                                                                      }
                                                                                                                                                      §§pop().§`!j§ = §§pop() + §§pop();
                                                                                                                                                      return;
                                                                                                                                                      addr623:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr621);
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr616);
                                                                                                                                             }
                                                                                                                                             §§goto(addr621);
                                                                                                                                          }
                                                                                                                                          §§goto(addr622);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(this.§8!T§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§`e§);
                                                                                                                                             continue loop57;
                                                                                                                                          }
                                                                                                                                          addr531:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop66:
                                                                                                                                    while(_loc4_ || this)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop67:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§8!T§);
                                                                                                                                          loop68:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                continue loop50;
                                                                                                                                             }
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr430:
                                                                                                                                                if(_loc3_ && param1)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(this.§`e§);
                                                                                                                                                loop69:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   loop70:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ || this))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(180);
                                                                                                                                                         loop71:
                                                                                                                                                         while(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                               loop72:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop66;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop44;
                                                                                                                                                                  }
                                                                                                                                                                  loop73:
                                                                                                                                                                  while(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§8!T§);
                                                                                                                                                                     loop74:
                                                                                                                                                                     for(; _loc4_; if(_loc4_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr83:
                                                                                                                                                                        §§push(180);
                                                                                                                                                                        if(_loc4_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop71;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr98:
                                                                                                                                                                                 if(!(_loc3_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr105:
                                                                                                                                                                                    if(!(_loc3_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc4_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr119);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr542);
                                                                                                                                                                                       §§goto(addr105);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr541:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr409);
                                                                                                                                                                                    §§goto(addr98);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr408:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr224);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr244);
                                                                                                                                                                        }
                                                                                                                                                                        while(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr311);
                                                                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                                                                           §§goto(addr83);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop47;
                                                                                                                                                                        addr308:
                                                                                                                                                                     })
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc4_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop40;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              break loop59;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(this.§`e§);
                                                                                                                                                                           continue loop69;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-1);
                                                                                                                                                                           addr879:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              addr880:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr881:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    param1 = §§pop();
                                                                                                                                                                                    addr882:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§9!z§);
                                                                                                                                                                                       loop14:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§"!A§);
                                                                                                                                                                                          loop15:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                                                                             loop16:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                addr873:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop18:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr875:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               addr859:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr41:
                                                                                                                                                                                                               if(!(_loc4_ || param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr48:
                                                                                                                                                                                                               §§push(this.§8!T§);
                                                                                                                                                                                                               if(_loc4_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc3_ && this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop57;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr72:
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop86:
                                                                                                                                                                                                                        while(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§`e§);
                                                                                                                                                                                                                           loop87:
                                                                                                                                                                                                                           while(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc4_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop72;
                                                                                                                                                                                                                                          addr311:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(!(_loc3_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc3_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc4_ || _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop54;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc3_ && param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop52;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc3_ && this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop72;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§`e§);
                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr34:
                                                                                                                                                                                                                                                                        if(!(_loc4_ || this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                    addr751:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr752:
                                                                                                                                                                                                                                                                                       while(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§0_§ = 0;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr765:
                                                                                                                                                                                                                                                                                             if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr772);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§ t§.§#!3§.mLevelEngine.§'e§);
                                                                                                                                                                                                                                                                                                   addr916:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(1000);
                                                                                                                                                                                                                                                                                                      addr917:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         break loop59;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr765);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr911:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr780:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.§@<§);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr758);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr758:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break loop60;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§3!D§);
                                                                                                                                                                                                                                                                                 addr785:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                                    addr786:
                                                                                                                                                                                                                                                                                    addr861:
                                                                                                                                                                                                                                                                                    while(!_loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       break loop43;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§'S§ = 0;
                                                                                                                                                                                                                                                                                             break loop38;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr862:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                                                                                                                          if(_loc4_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this.§"!A§);
                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() - this.§9!z§);
                                                                                                                                                                                                                                                                                                if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr838:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   if(_loc4_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr847:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§pop().§'S§ = §§pop();
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                                                                      §§push(this.§9!z§);
                                                                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + this.§'S§);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().§#!u§ = §§pop();
                                                                                                                                                                                                                                                                                                      §§goto(addr811);
                                                                                                                                                                                                                                                                                                      addr478:
                                                                                                                                                                                                                                                                                                      if(!(_loc4_ || param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                                                                      §§push(this.§`e§);
                                                                                                                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§8!T§);
                                                                                                                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() - 360);
                                                                                                                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr501:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - this.§`e§);
                                                                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr506:
                                                                                                                                                                                                                                                                                                                     addr517:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr515:
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§pop().§`!j§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                                     if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr525:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr669:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr621);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr515);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr506);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr501);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr515);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr517);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr847);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr838);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr847);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr34);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop14;
                                                                                                                                                                                                                                                                           addr740:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr41);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr72);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break loop48;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop39;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr418:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop2;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(this.§`e§);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr579);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr623);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§8!T§);
                                                                                                                                                                                                                                                               break loop87;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr289:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr315:
                                                                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                                                                            §§push(this.§`e§);
                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(param1);
                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§8!T§);
                                                                                                                                                                                                                                                                  if(_loc4_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - this.§`e§);
                                                                                                                                                                                                                                                                     if(_loc4_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr342:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(_loc4_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr351:
                                                                                                                                                                                                                                                                           §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().§`!j§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr351);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr342);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr351);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr342);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop67;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr506);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr786);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                                                                                addr244:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr119:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                                                                               §§push(this.§`e§);
                                                                                                                                                                                                                                                               if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§8!T§);
                                                                                                                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + 360);
                                                                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr162:
                                                                                                                                                                                                                                                                           §§push(§§pop() - this.§`e§);
                                                                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr177:
                                                                                                                                                                                                                                                                              addr178:
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().§`!j§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                              if(_loc3_ && this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop73;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc4_ || param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop55;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop49;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr722);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr177);
                                                                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr162);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr177);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr178);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break loop55;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr621);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr275);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr354);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr177);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr621);
                                                                                                                                                                                                                                             §§goto(addr722);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop66;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop73;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr542:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr313:
                                                                                                                                                                                                                                             while(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§8!T§);
                                                                                                                                                                                                                                                continue loop86;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr409:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr315);
                                                                                                                                                                                                                                       §§goto(addr313);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop53;
                                                                                                                                                                                                                                    addr224:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop15;
                                                                                                                                                                                                                              §§goto(addr48);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    break loop86;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop69;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop68;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop70;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop74;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr289);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr785);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr212);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr861);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop56;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop38;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr478);
                                                                                                                                                               }
                                                                                                                                                               continue loop45;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr750);
                                                                                                                                                         }
                                                                                                                                                         continue loop59;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr531);
                                                                                                                                                   }
                                                                                                                                                   continue loop58;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr880);
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop48;
                                                                                                                              }
                                                                                                                              §§goto(addr917);
                                                                                                                           }
                                                                                                                           §§goto(addr879);
                                                                                                                        }
                                                                                                                        §§goto(addr859);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        break loop56;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop46;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param2 = §§pop();
                                                                                                         §§goto(addr920);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr862);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr780);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr577);
                                                                                       }
                                                                                       continue loop43;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           this.§`!j§ = this.§`e§;
                                                                           §§goto(addr669);
                                                                           addr663:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           break loop48;
                                                                        }
                                                                        addr792:
                                                                     }
                                                                     §§goto(addr752);
                                                                  }
                                                                  while(!(_loc3_ && this))
                                                                  {
                                                                     §§goto(addr740);
                                                                     §§push(param1);
                                                                  }
                                                                  §§goto(addr875);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr663);
                                                }
                                                while(_loc4_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr792);
                                                   }
                                                   §§goto(addr751);
                                                }
                                                §§goto(addr873);
                                             }
                                          }
                                       }
                                       §§goto(addr916);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§#!u§ = this.§9!z§;
                                 §§goto(addr855);
                              }
                           }
                        }
                        §§goto(addr932);
                     }
                  }
                  §§goto(addr883);
               }
            }
         }
         §§goto(addr525);
      }
      
      public function get §<1§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§<!<§)
            {
            }
         }
         return null;
      }
      
      public function §#!1§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§]!g§);
            if(_loc1_ || this)
            {
               §§push(§>r§.§;!?§);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           addr68:
                           return this.§]!g§ == §>r§.§0=§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §#!t§() : Boolean
      {
         return this.§]!g§ == §>r§.§`!s§;
      }
      
      public function §?!%§() : Boolean
      {
         return this.§]!g§ == §>r§.§+P§;
      }
      
      public function §=!5§() : Boolean
      {
         return this.§]!g§ == §>r§.§0=§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§]!g§ == §>r§.§>t§;
      }
      
      public function isGround() : Boolean
      {
         return this.§]!g§ == §>r§.§&"§;
      }
      
      public function §-!F§() : Boolean
      {
         return this.§]!g§ == §>r§.§7b§;
      }
      
      public function §^!U§() : Boolean
      {
         return this.§]!g§ == §>r§.§@!g§;
      }
      
      public function §65§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§^r§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr92:
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc2_ || _loc1_)
                           {
                              break loop1;
                           }
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                           addr58:
                           if(_loc2_ || _loc1_)
                           {
                              continue;
                           }
                           addr102:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                              §§goto(addr58);
                           }
                           addr102:
                        }
                        §§push(false);
                        if(!(_loc1_ && _loc2_))
                        {
                           return §§pop();
                        }
                        addr85:
                        addr85:
                        return §§pop();
                        addr75:
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr85);
            }
            addr91:
         }
         while(true)
         {
            §§push(this.§^r§);
            if(_loc2_)
            {
               §§push("POWERUP_BOMB");
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     §§goto(addr58);
                  }
                  §§goto(addr85);
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
            §§goto(addr102);
         }
      }
      
      public function §4!g§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§#!t§());
            if(!_loc2_)
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
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§-!F§());
                           if(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§pop();
                                             addr120:
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§^!U§());
                                                if(_loc1_ || this)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(_loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr73:
                                                      if(_loc1_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     break;
                                                                     addr84:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           §§push(this.§4N§);
                                                                           if(_loc1_)
                                                                           {
                                                                              if(!(_loc1_ || _loc1_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc1_ || _loc2_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 break;
                                                                              }
                                                                              §§goto(addr73);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop7;
                                                         }
                                                         return §§pop();
                                                         addr77:
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr84);
                                             }
                                          }
                                          addr119:
                                       }
                                       §§goto(addr77);
                                    }
                                 }
                              }
                              addr116:
                           }
                           §§goto(addr119);
                        }
                     }
                  }
                  §§goto(addr116);
               }
            }
         }
         §§goto(addr120);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §!u§() : Number
      {
         return Number(Math.sqrt(this.§3J§().GetLinearVelocity().x * this.§3J§().GetLinearVelocity().x + this.§3J§().GetLinearVelocity().y * this.§3J§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc10_)
         {
            §§push(this.§?!%§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§ t§);
                     while(true)
                     {
                        §§push(§§pop().§1!_§());
                        loop3:
                        while(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§>!D§);
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
                                                addr740:
                                                while(true)
                                                {
                                                   §§push(param6);
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      addr600:
                                                      if(_loc10_ || param2)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             loop13:
                                             while(!§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop15:
                                                   while(_loc10_)
                                                   {
                                                      §§push(this.§>!D§);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(this.§>!D§);
                                                                     if(_loc10_)
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           loop17:
                                                                           for(; _loc10_; if(_loc10_ || this)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              continue loop15;
                                                                           })
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop18:
                                                                              while(!(_loc9_ && this))
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                    loop19:
                                                                                    while(_loc10_ || this)
                                                                                    {
                                                                                       §§push(param2);
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      loop24:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ && this)
                                                                                                         {
                                                                                                            addr635:
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               addr642:
                                                                                                               if(param1 >= this.§>!D§ / 2)
                                                                                                               {
                                                                                                                  break loop19;
                                                                                                               }
                                                                                                               §§goto(addr597);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(this.§4!g§());
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_ && param2)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               if(_loc9_ && param2)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(!_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc10_ || this)
                                                                                                                        {
                                                                                                                           if(_loc10_ || param3)
                                                                                                                           {
                                                                                                                              §§push(int(Math.min(this.§&!>§,int(param1))));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 loop30:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop16;
                                                                                                                                    }
                                                                                                                                    §§push(§'u§.§@`§.getValue());
                                                                                                                                    if(!(_loc9_ && param3))
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * _loc7_);
                                                                                                                                       loop31:
                                                                                                                                       while(!(_loc9_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          loop45:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                             {
                                                                                                                                                if(_loc9_ && param3)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(1);
                                                                                                                                                loop46:
                                                                                                                                                while(_loc10_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                   loop47:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc10_ || param1))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            loop48:
                                                                                                                                                            while(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               addr275:
                                                                                                                                                               if(_loc10_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc10_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     loop49:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§#!1§());
                                                                                                                                                                        if(_loc10_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop47;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop48;
                                                                                                                                                                        }
                                                                                                                                                                        addr212:
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop51:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§&!>§ = 1;
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§&!>§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc9_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr573:
                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                      if(_loc9_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc9_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr184);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§+!G§(§-C§.§,&§);
                                                                                                                                                                                                               §§goto(addr92);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr726:
                                                                                                                                                                                                            if(§§pop() <= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param1);
                                                                                                                                                                                                               break loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr727);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr694:
                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr695:
                                                                                                                                                                                                            this.§+!G§(§-C§.§,&§);
                                                                                                                                                                                                            §§goto(addr699);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr680:
                                                                                                                                                                                                            §§goto(addr681);
                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                            §§push(3);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr657);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr681);
                                                                                                                                                                                                      continue loop46;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§&!>§);
                                                                                                                                                                                                   addr73:
                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr681:
                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop24;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr147:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr699:
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop1;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr731:
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr657:
                                                                                                                                                                                          §§push(this.§&!>§);
                                                                                                                                                                                          if(_loc10_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr755);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr125:
                                                                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop49;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop30;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr314:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_ && this)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop51;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop45;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr94:
                                                                                                                                                                                 if(_loc9_ && param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr101:
                                                                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.addDamageParticles(this.§ t§.§#!3§.particles,param1);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr647:
                                                                                                                                                                                       addr357:
                                                                                                                                                                                       loop57:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc9_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr125);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop57;
                                                                                                                                                                                                }
                                                                                                                                                                                                this.§&!>§ = 0;
                                                                                                                                                                                                while(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §`!_§.§08§(§-C§.§&!=§,this.§1`§.§;!"§,"ChannelDestroyed");
                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr740);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr184:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§[@§);
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr296:
                                                                                                                                                                                                   if(_loc10_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         break loop48;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr617:
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr336:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         addr337:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop22;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr312:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr314);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr330:
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(this.§&!>§);
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - param1);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().§&!>§ = §§pop();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr101);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr330:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr236);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr296);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr336:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr586:
                                                                                                                                                                                                   addr585:
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr619:
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      §§push(this.§&!>§);
                                                                                                                                                                                                      break loop18;
                                                                                                                                                                                                      addr620:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr587:
                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr620);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                      §§push(this.§]l§);
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().§&!>§ = §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr573);
                                                                                                                                                                                                   §§push(this.§&!>§);
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop48;
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr426:
                                                                                                                                                                                          loop34:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr331:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param5);
                                                                                                                                                                                                addr333:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr336);
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   §§goto(addr275);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr586);
                                                                                                                                                                                                continue loop34;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr336);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc10_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop14;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc10_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop3;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr600);
                                                                                                                                                                                       §§push(this.§#!1§());
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr330);
                                                                                                                                                                              }
                                                                                                                                                                              addr727:
                                                                                                                                                                              this.§+!G§(§-C§.§&!=§);
                                                                                                                                                                              §§goto(addr731);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr147);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop47;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr333);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr619);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr312);
                                                                                                                                                            }
                                                                                                                                                            continue loop26;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr214);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr337);
                                                                                                                                                   }
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       §§goto(addr451);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr753:
                                                                                                                              §§push(this.§&!>§);
                                                                                                                           }
                                                                                                                           addr755:
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        §§goto(addr695);
                                                                                                                     }
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  §§goto(addr331);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         §§goto(addr597);
                                                                                                      }
                                                                                                      this.§+!G§(§-C§.§8-§);
                                                                                                      §§goto(addr686);
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§goto(addr483);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    this.§+!G§(§-C§.§8-§);
                                                                                    §§goto(addr647);
                                                                                 }
                                                                                 §§goto(addr680);
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr582:
                                                                                 §§push(this.§]l§);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§goto(addr585);
                                                                                    §§push(§§pop() == §§pop());
                                                                                 }
                                                                                 §§goto(addr642);
                                                                              }
                                                                              §§goto(addr657);
                                                                           }
                                                                           §§goto(addr748);
                                                                        }
                                                                        §§goto(addr642);
                                                                     }
                                                                     §§goto(addr582);
                                                                  }
                                                                  §§goto(addr642);
                                                               }
                                                               §§goto(addr552);
                                                            }
                                                         }
                                                         §§goto(addr635);
                                                      }
                                                      §§goto(addr642);
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      addr715:
                                                      §§goto(addr726);
                                                      §§push(30);
                                                   }
                                                   §§goto(addr694);
                                                }
                                             }
                                             §§goto(addr715);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr748:
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr753);
      }
      
      public function §+!G§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §`!_§.§08§(param1,this.§1`§.§;!"§);
         }
      }
      
      public function §[0§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§1`§.material.§[$§(param1));
         if(_loc2_)
         {
            return §§pop() * this.§9!&§;
         }
      }
      
      public function §;!4§(param1:String) : Number
      {
         return this.§1`§.material.§70§(param1);
      }
      
      public function §1!+§() : String
      {
         return this.§1`§.material.mName;
      }
      
      public function §19§() : Number
      {
         return this.§1`§.§9!!§();
      }
      
      public function §3!n§() : int
      {
         return this.§1`§.§7!I§();
      }
      
      public function §"o§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!_loc3_)
         {
            §§push(this.§3J§().IsAwake());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr208:
               while(true)
               {
                  §§push(§§pop());
                  addr209:
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                     }
                  }
                  §§goto(addr34);
               }
               loop5:
               while(true)
               {
                  if(_loc3_ && _loc3_)
                  {
                     continue loop0;
                  }
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
                           while(true)
                           {
                              §§pop();
                              addr203:
                              while(true)
                              {
                                 §§push(this.§&!>§ == this.§]l§);
                              }
                           }
                           addr202:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              loop12:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§pop();
                                                   while(_loc2_)
                                                   {
                                                      §§push(Math.abs(this.§3J§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                      while(!_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop17:
                                                            for(; _loc2_; while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc3_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  addr34:
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr69);
                                                            })
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr145:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(Math.abs(this.§3J§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!(_loc2_ || this))
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     §§goto(addr203);
                                                                  }
                                                               }
                                                            }
                                                            continue loop12;
                                                         }
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                      continue loop5;
                                                      if(!(_loc2_ || _loc1_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr211:
                                                }
                                                else
                                                {
                                                   §§goto(addr208);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr202);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr210);
                                       }
                                       §§goto(addr139);
                                    }
                                    break;
                                 }
                                 continue loop7;
                              }
                              §§goto(addr209);
                              if(_loc2_)
                              {
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr211);
      }
      
      public function §^!R§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§3J§().IsAwake());
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr37:
                     §§push(true);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr45);
                     }
                  }
                  else
                  {
                     addr46:
                     §§push(this.§5&§());
                     if(_loc2_ || this)
                     {
                        return !§§pop();
                     }
                  }
                  return §§pop();
               }
               §§goto(addr46);
            }
            addr45:
            return §§pop();
         }
         §§goto(addr37);
      }
      
      protected function §5&§() : Boolean
      {
         return this.§[!e§.§5&§();
      }
      
      public function §=!K§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9!&§ = param1;
            do
            {
               if(this.§9!&§ <= 1)
               {
                  §§push(this.§7![§);
                  if(!_loc2_)
                  {
                     §§pop().§1O§ = null;
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        §§goto(addr20);
                     }
                     addr63:
                     §§push(this.§7![§);
                  }
                  §§pop().§1L§();
                  continue;
               }
               §§goto(addr63);
            }
            while(_loc2_ && _loc3_);
            
         }
         addr20:
      }
      
      public function §;a§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§1`§.§7i§());
            if(!(_loc3_ && param1))
            {
               if(§§pop() != §3!F§.§!!k§)
               {
                  §§push(this.§3J§().GetMass());
                  if(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§9W§.§9q§());
                        loop0:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr182:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           loop5:
                           while(true)
                           {
                              if(!(_loc4_ || this))
                              {
                                 continue loop0;
                              }
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          while(true)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§push(this.§'!I§);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(this.§'!I§);
                                                      if(_loc4_)
                                                      {
                                                         addr62:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               loop11:
                                                               while(_loc4_ || _loc3_)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              addr111:
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr117:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop12;
                                                                                    §§goto(addr111);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!param1)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    §§goto(addr117);
                                                                                 }
                                                                                 addr117:
                                                                                 addr184:
                                                                                 addr28:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr117);
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§goto(addr184);
                                                                              }
                                                                              if(_loc3_ && _loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§7![§.mW);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§push(this.§7![§.mH);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       addr221:
                                                                                    }
                                                                                    addr222:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§'u§.§18§);
                                                                                       addr224:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§'u§.§18§);
                                                                                          addr226:
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr227:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr228:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr229:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr230:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr28);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr208:
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 §§push(this.§&!E§());
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        §§goto(addr228);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        §§goto(addr117);
                                                                     }
                                                                     addr183:
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               §§goto(addr182);
                                                               addr67:
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr62);
                                                }
                                                §§goto(addr67);
                                             }
                                          }
                                          addr167:
                                       }
                                       §§goto(addr230);
                                    }
                                 }
                              }
                              §§goto(addr227);
                           }
                        }
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr183);
               }
               §§goto(addr208);
            }
            §§goto(addr222);
         }
         §§goto(addr167);
      }
      
      public function §&!E§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(_loc2_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && this))
            {
               §§push(_loc1_);
               if(!(_loc3_ && this))
               {
                  §§push(2);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        §§push(§§pop() * Math.min(10,this.§7![§.§1!N§ - 1));
                        if(!(_loc3_ && _loc2_))
                        {
                           addr78:
                           §§push(§§pop() / 10);
                        }
                        §§push(§§pop() - §§pop());
                        if(!_loc3_)
                        {
                           addr83:
                           §§push(Number(§§pop()));
                           if(_loc2_)
                           {
                              _loc1_ = §§pop();
                              addr87:
                              return _loc1_;
                           }
                        }
                     }
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr83);
         }
         §§goto(addr87);
      }
      
      public function §1;§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§3J§().GetLinearVelocity().x);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§3J§().GetLinearVelocity().y);
         if(_loc7_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && _loc2_))
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(_loc5_);
               addr161:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr162:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr163:
                     while(true)
                     {
                        _loc2_ = §§pop();
                     }
                  }
               }
               addr138:
               if(!(_loc7_ || param1))
               {
                  continue;
               }
               §§push(_loc5_);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || _loc3_)
                  {
                     addr156:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  do
                  {
                     this.§3J§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                  }
                  while(!(_loc7_ || this));
                  
                  if(!_loc7_)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && param1))
                        {
                           if(!_loc6_)
                           {
                              if(_loc7_ || param1)
                              {
                                 §§goto(addr138);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr156);
                     }
                     addr164:
                  }
                  return;
               }
               §§goto(addr161);
            }
         }
         §§goto(addr164);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§^z§) : void
      {
      }
      
      public function addDamageParticles(param1:§^z§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §"q§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§3J§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!(_loc6_ && param3))
         {
            §§push(param2.x * param1);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(_loc5_ || param1)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc5_ || param1)
            {
               §§push(param2.y * param1);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         do
         {
            this.§3J§().§>!Y§(_loc4_);
         }
         while(!_loc5_);
         
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  §§push(this.§8c§());
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
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    §§push(360);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc7_)
                                          {
                                             _loc4_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   _loc4_ = §§pop();
                                                   continue loop9;
                                                   addr97:
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr120:
                                                            if(_loc7_ || param2)
                                                            {
                                                               addr24:
                                                               this.§8Z§(_loc4_);
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        addr34:
                                                                        §§goto(addr24);
                                                                     }
                                                                     addr294:
                                                                     §§push(this.§8c§());
                                                                     if(!_loc6_)
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     break;
                                                                  }
                                                                  loop19:
                                                                  while(_loc7_ || _loc3_)
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(param1);
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() / 2);
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc7_ || this))
                                                                                       {
                                                                                          break loop8;
                                                                                       }
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!(_loc6_ && this))
                                                                                             {
                                                                                                §§push(§§pop() - _loc5_);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr302:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      break loop10;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr299:
                                                                                                }
                                                                                                continue;
                                                                                                break loop10;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr252:
                                                                                       addr252:
                                                                                       while(_loc7_ || this)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             break loop21;
                                                                                             addr90:
                                                                                             if(_loc6_ && param1)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr97);
                                                                                          }
                                                                                       }
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          addr202:
                                                                                          while(_loc7_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc7_ || _loc3_)
                                                                                                {
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       addr215:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr199:
                                                                                       §§goto(addr34);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                              if(_loc6_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc7_ || param2)
                                                                              {
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§goto(addr90);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr198:
                                                                                    _loc4_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr199);
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() % §§pop());
                                                                              if(!(_loc7_ || this))
                                                                              {
                                                                                 break loop8;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                              while(_loc7_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 continue loop19;
                                                                                 if(!(_loc7_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr198);
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr202);
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                                  addr236:
                                                               }
                                                               §§goto(addr120);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc3_ = §§pop();
                                                   do
                                                   {
                                                      this.§8Z§(_loc3_);
                                                   }
                                                   while(_loc6_ && param2);
                                                   
                                                }
                                                return;
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr299);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr294);
         }
         §§goto(addr252);
      }
      
      public function §^! §(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§#!7§(this.§3J§().GetAngle()));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(360);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc4_)
                     {
                        addr103:
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() - §§pop());
                     loop0:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr106:
                        loop1:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr107:
                           while(true)
                           {
                              §§push(§+5§(_loc2_));
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc4_)
                              {
                                 _loc2_ = §§pop();
                                 while(_loc3_ || param1)
                                 {
                                    this.§3J§().§=!y§(_loc2_);
                                    if(_loc3_ || this)
                                    {
                                       return;
                                    }
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr106);
         }
         §§goto(addr107);
      }
      
      public function §5!"§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§3J§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!_loc15_)
         {
            §§push(§§pop() - param2.x);
            if(_loc14_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc14_ || this)
         {
            §§push(§§pop() - param2.y);
            if(!(_loc15_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc14_)
         {
            §§push(_loc4_);
            if(!_loc15_)
            {
               §§push(0);
               if(_loc14_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc15_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           addr79:
                           §§pop();
                           if(!_loc15_)
                           {
                              addr106:
                              §§push(_loc5_);
                              if(_loc14_)
                              {
                                 addr86:
                                 §§push(§§pop() == 0);
                              }
                              var _loc6_:* = §§pop();
                              §§push(_loc4_);
                              if(!_loc15_)
                              {
                                 §§push(§§pop() / _loc5_);
                                 if(_loc14_ || param1)
                                 {
                                    addr129:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(Math.atan(_loc7_) * 180);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() / Math.PI);
                                    if(_loc14_ || this)
                                    {
                                       addr148:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    if(_loc14_)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc15_)
                                       {
                                          §§push(0);
                                          if(!_loc15_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc14_)
                                                {
                                                   addr161:
                                                   §§push(_loc8_);
                                                   if(_loc14_ || param2)
                                                   {
                                                      addr170:
                                                      §§push(§§pop() + 180);
                                                      if(_loc14_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc14_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            addr177:
                                                            §§push(_loc8_);
                                                            if(!_loc14_)
                                                            {
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§push(param1);
                                                         if(_loc14_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc15_)
                                                            {
                                                               addr186:
                                                               addr187:
                                                               var _loc9_:*;
                                                               §§push(_loc9_ = §§pop());
                                                               if(_loc14_ || param2)
                                                               {
                                                                  §§push(§§pop() * Math.PI);
                                                                  if(!(_loc15_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() / 180);
                                                                     if(!_loc14_)
                                                                     {
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               addr211:
                                                               var _loc10_:* = §§pop();
                                                               §§push(Math.sin(_loc10_) * _loc6_);
                                                               if(!(_loc15_ && param1))
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
                                                               if(!_loc15_)
                                                               {
                                                                  this.§3J§().§>!Y§(_loc13_);
                                                               }
                                                               return;
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   §§goto(addr187);
                                                }
                                             }
                                             §§goto(addr177);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr95);
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc15_ && this))
                        {
                           addr95:
                           return;
                        }
                     }
                     §§goto(addr106);
                     §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                  }
                  §§goto(addr79);
               }
               §§goto(addr86);
            }
            §§goto(addr106);
         }
         §§goto(addr79);
      }
   }
}
