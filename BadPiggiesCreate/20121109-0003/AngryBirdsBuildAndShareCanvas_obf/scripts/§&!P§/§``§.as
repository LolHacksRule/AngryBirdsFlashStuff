package §&!P§
{
   import §"J§.b2Body;
   import §"J§.b2BodyDef;
   import §"J§.b2FilterData;
   import §"J§.b2Fixture;
   import §"J§.b2World;
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §%!0§.§3!s§;
   import §+!-§.Sprite;
   import §2k§.b2PolygonShape;
   import §6]§.§,"0§;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §]";§.§!<§;
   import §]";§.§0A§;
   import §]";§.§1Y§;
   import §]";§.§34§;
   import §]";§.§4!p§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   import flash.geom.Point;
   
   public class §``§
   {
      
      public static const §]&§:uint;
      
      public static const §@!A§:uint;
      
      public static const §>!1§:uint;
      
      public static const §3!,§:uint;
      
      public static const §4M§:Boolean = true;
      
      public static const §5e§:Number = 5;
      
      public static const §=![§:Number = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §``§)
         {
            §§push(§§findproperty(§]&§));
            §§push(1);
            if(!_loc2_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§]&§ = §§pop();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§@!A§));
               §§push(1);
               if(_loc1_ || §``§)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§@!A§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(§§findproperty(§>!1§));
                  §§push(1);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§>!1§ = §§pop();
                  while(true)
                  {
                     §§push(§§findproperty(§3!,§));
                     §§push(1);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§3!,§ = §§pop();
                     continue loop1;
                     addr50:
                     while(_loc1_ || _loc2_)
                     {
                        §5e§ = 5;
                        do
                        {
                           §=![§ = 10;
                        }
                        while(!_loc1_);
                        
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 return;
                                 addr40:
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private var §5!-§:String;
      
      private var §,!&§:int;
      
      private var § !W§:int;
      
      public var §+!A§:String;
      
      public var §@F§:int;
      
      protected var §@!G§:§4!p§;
      
      private var §,8§:§^!!§;
      
      private var §;!^§:b2World;
      
      protected var §,H§:String = "";
      
      protected var §'"$§:int = 1;
      
      private var §""3§:b2Fixture;
      
      private var §,,§:b2Body;
      
      private var §7U§:b2Vec2;
      
      public var §8W§:Number;
      
      public var §%5§:Number;
      
      private var §"h§:Number;
      
      private var §%!W§:Boolean = false;
      
      private var §3P§:Number;
      
      private var §&!I§:Number;
      
      private var § ]§:Number;
      
      private var §<!f§:Number;
      
      private var § -§:Number;
      
      private var §7[§:Number;
      
      public var §9T§:Number = 1;
      
      private var §%V§:Boolean = false;
      
      public var § r§:Number = 0;
      
      public var §[",§:Number = 0;
      
      protected var §[r§:Boolean = false;
      
      public var §8C§:§0;§;
      
      private var § D§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §0!>§:Number = 0;
      
      private var §=9§:Number = 1.0;
      
      private var §!%§:Boolean = false;
      
      protected var §^!?§:§6!^§;
      
      private var §67§:Boolean = true;
      
      public function §``§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc16_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§+!A§ = param6;
               loop1:
               while(true)
               {
                  this.§@!G§ = §!<§.§[!@§(param6);
                  while(true)
                  {
                     this.§,8§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§ D§ = param2;
                        loop4:
                        while(true)
                        {
                           this.§=9§ = param10;
                           while(true)
                           {
                              this.§!%§ = param11;
                              continue loop3;
                              addr159:
                              if(_loc17_ || param2)
                              {
                                 this.§^!?§ = new §6!^§(§5e§,§=![§);
                                 loop10:
                                 for(; _loc17_; if(_loc16_ && param3)
                                 {
                                    continue;
                                 },if(false)
                                 {
                                    §§goto(addr55);
                                 },var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8),if(_loc17_ || param1)
                                 {
                                    this.§,,§ = this.§;!^§.§`0§(_loc12_);
                                    if(_loc17_)
                                    {
                                       addr251:
                                       this.§,,§.§"%§(this);
                                       if(_loc17_ || param1)
                                       {
                                          addr262:
                                          §§push(this.§ !W§);
                                          if(!_loc16_)
                                          {
                                             §§push(§1Y§.§<2§);
                                             if(!(_loc16_ && param2))
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc17_)
                                                   {
                                                      §§push(b2PolygonShape);
                                                      §§push(this.§@!G§.shape.§",§);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(param10);
                                                         if(_loc17_ || param1)
                                                         {
                                                            addr294:
                                                            §§push(§§pop() * §§pop());
                                                            §§push(this.§@!G§.shape.§%"0§);
                                                            if(_loc17_ || param1)
                                                            {
                                                               addr305:
                                                               §§push(§§pop() * param10);
                                                            }
                                                            _loc14_ = §§pop().§;"8§(§§pop(),§§pop());
                                                            if(!_loc16_)
                                                            {
                                                               this.§""3§ = this.§,,§.CreateFixture2(_loc14_,this.§@!G§.§9!-§());
                                                               if(!_loc16_)
                                                               {
                                                                  addr388:
                                                                  §§push(this.§""3§);
                                                                  if(_loc17_ || this)
                                                                  {
                                                                     §§push(this.§@!G§);
                                                                     if(!(_loc16_ && param2))
                                                                     {
                                                                        §§push(§§pop().§-!m§());
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§pop().§!!#§(§§pop());
                                                                           addr418:
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr416:
                                                                              §§push(this.§""3§);
                                                                              §§push(this.§@!G§.§+!F§());
                                                                           }
                                                                           var _loc13_:b2FilterData = new b2FilterData();
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr539:
                                                                              if(!this.§'5§())
                                                                              {
                                                                                 addr504:
                                                                                 §§push(this.§+!A§.toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(_loc17_ || param1)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr518:
                                                                                          §§pop();
                                                                                          addr519:
                                                                                          §§push(this.§+!A§);
                                                                                          if(_loc17_ || param3)
                                                                                          {
                                                                                             §§push(§§pop().toUpperCase() == "MISC_FOOD_EGG");
                                                                                             if(_loc17_ || param2)
                                                                                             {
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr482:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         _loc13_.§=6§ = §@!A§;
                                                                                                         if(_loc17_ || param2)
                                                                                                         {
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               §§goto(addr519);
                                                                                                            }
                                                                                                            §§push(_loc13_);
                                                                                                            §§push(65535);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               §§push(§§pop() & ~§]&§);
                                                                                                            }
                                                                                                            §§pop().§'"2§ = §§pop();
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr435:
                                                                                                               this.§""3§.§#!v§(_loc13_);
                                                                                                               if(!(_loc16_ && this))
                                                                                                               {
                                                                                                                  this.§"h§ = this.§@!G§.§2"3§();
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr435);
                                                                                                                     }
                                                                                                                     §§push(this.§@!G§);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§%5§);
                                                                                                                        if(_loc17_ || param2)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc17_ || param3)
                                                                                                                           {
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    addr576:
                                                                                                                                    this.§8W§ = this.§%5§ = this.§@!G§.§%5§;
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       addr714:
                                                                                                                                       if(this.§@!G§.§@F§ != §4!p§.§>_§)
                                                                                                                                       {
                                                                                                                                          addr712:
                                                                                                                                          this.§8C§.setDamagedFrame();
                                                                                                                                          addr713:
                                                                                                                                          if(this.isTexture())
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                addr700:
                                                                                                                                                addr702:
                                                                                                                                                addr701:
                                                                                                                                                if(param9 != 0)
                                                                                                                                                {
                                                                                                                                                   addr703:
                                                                                                                                                   this.§5!D§(param9);
                                                                                                                                                   addr706:
                                                                                                                                                }
                                                                                                                                                this.§'!8§();
                                                                                                                                                addr691:
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   this.§0!j§(0,1);
                                                                                                                                                   addr664:
                                                                                                                                                   if(_loc17_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc16_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc16_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§8C§);
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§[!Q§(this.§@!G§.shape);
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr713);
                                                                                                                                                                     }
                                                                                                                                                                     return;
                                                                                                                                                                     addr658:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr664);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr712);
                                                                                                                                                            }
                                                                                                                                                            addr730:
                                                                                                                                                            this.§ D§.visible = false;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr712);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr706);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr691);
                                                                                                                                                   addr693:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr703);
                                                                                                                                          }
                                                                                                                                          §§goto(addr700);
                                                                                                                                       }
                                                                                                                                       §§goto(addr730);
                                                                                                                                    }
                                                                                                                                    §§goto(addr658);
                                                                                                                                 }
                                                                                                                                 §§goto(addr693);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 this.§8W§ = this.§%5§ = Math.round(this.§9!3§(true) * this.§@!G§.§#h§());
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§8W§);
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       §§push(1);
                                                                                                                                       if(!(_loc16_ && this))
                                                                                                                                       {
                                                                                                                                          addr621:
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                this.§8W§ = this.§%5§ = 1;
                                                                                                                                                if(_loc17_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr640:
                                                                                                                                                }
                                                                                                                                                §§goto(addr700);
                                                                                                                                             }
                                                                                                                                             §§goto(addr640);
                                                                                                                                          }
                                                                                                                                          §§goto(addr714);
                                                                                                                                       }
                                                                                                                                       §§goto(addr702);
                                                                                                                                    }
                                                                                                                                    §§goto(addr701);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr703);
                                                                                                                           }
                                                                                                                           §§goto(addr621);
                                                                                                                        }
                                                                                                                        §§goto(addr700);
                                                                                                                     }
                                                                                                                     §§goto(addr714);
                                                                                                                  }
                                                                                                                  §§goto(addr640);
                                                                                                               }
                                                                                                               §§goto(addr712);
                                                                                                            }
                                                                                                            §§goto(addr576);
                                                                                                         }
                                                                                                         §§goto(addr664);
                                                                                                      }
                                                                                                      §§goto(addr700);
                                                                                                   }
                                                                                                   §§goto(addr435);
                                                                                                }
                                                                                                §§goto(addr518);
                                                                                             }
                                                                                             §§goto(addr712);
                                                                                          }
                                                                                          §§goto(addr504);
                                                                                       }
                                                                                       §§goto(addr482);
                                                                                    }
                                                                                    §§goto(addr539);
                                                                                 }
                                                                                 §§goto(addr712);
                                                                              }
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 _loc13_.§=6§ = §]&§;
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    §§push(65535);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() & ~§@!A§);
                                                                                    }
                                                                                    §§pop().§'"2§ = §§pop();
                                                                                    if(_loc17_ || param3)
                                                                                    {
                                                                                       §§goto(addr435);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr700);
                                                                              }
                                                                              §§goto(addr658);
                                                                           }
                                                                           §§goto(addr712);
                                                                        }
                                                                        §§pop().§1!2§(§§pop());
                                                                        §§goto(addr418);
                                                                     }
                                                                  }
                                                                  §§goto(addr416);
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                            §§goto(addr416);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   else
                                                   {
                                                      addr375:
                                                      this.§""3§ = this.§,,§.CreateFixture2(this.§@!G§.shape.§!Q§(param10),this.§@!G§.§9!-§());
                                                      §§goto(addr388);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.§ !W§);
                                                   if(!(_loc16_ && param1))
                                                   {
                                                      addr333:
                                                      §§push(§1Y§.§;&§);
                                                      if(!_loc16_)
                                                      {
                                                         addr337:
                                                         §§push(§§pop() == §§pop());
                                                         if(!(_loc16_ && param2))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc17_ || this)
                                                               {
                                                                  addr354:
                                                                  §§pop();
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr372:
                                                                     if(this.§ !W§ == §1Y§.§0R§)
                                                                     {
                                                                        if(_loc16_)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  §§goto(addr375);
                                                               }
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                   }
                                                   §§goto(addr372);
                                                }
                                                §§goto(addr388);
                                             }
                                             §§goto(addr337);
                                          }
                                          §§goto(addr333);
                                       }
                                       §§goto(addr388);
                                    }
                                    §§goto(addr262);
                                 },§§goto(addr251))
                                 {
                                    if(!_loc17_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc17_)
                                    {
                                       continue loop0;
                                    }
                                    this.§8C§ = new §0;§(this,param2,param4);
                                    while(true)
                                    {
                                       §§push(this.§8C§);
                                       if(!(_loc16_ && param3))
                                       {
                                          if(!§§pop().§@N§(param1.§`!G§.§00§))
                                          {
                                             if(!_loc16_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§8C§);
                                                   addr100:
                                                   while(true)
                                                   {
                                                      §§push(this.§ !W§);
                                                      addr102:
                                                      while(true)
                                                      {
                                                         §§pop().§'!m§(§§pop(),this.§@!G§.§<&§(),this.§@!G§.§6c§() / §,4§.§,^§,this.§@!G§.§<!A§() / §,4§.§,^§);
                                                      }
                                                   }
                                                }
                                                addr98:
                                             }
                                             loop12:
                                             while(_loc17_)
                                             {
                                                if(!_loc16_)
                                                {
                                                   addr55:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this.§8C§);
                                                      if(_loc17_ || this)
                                                      {
                                                         §§push(this.§ !W§);
                                                         if(!_loc16_)
                                                         {
                                                            §§pop().§^!v§(§§pop() == §1Y§.§;&§);
                                                            addr152:
                                                            while(!(_loc16_ && param2))
                                                            {
                                                               this.§;!^§ = param3;
                                                               if(!(_loc16_ && param3))
                                                               {
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                            while(!(_loc16_ && param1))
                                                            {
                                                               §§goto(addr159);
                                                               §§goto(addr73);
                                                            }
                                                            addr73:
                                                            continue loop4;
                                                            addr152:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr100);
                                                      }
                                                      §§goto(addr102);
                                                   }
                                                   continue loop10;
                                                   addr55:
                                                }
                                                else
                                                {
                                                   addr173:
                                                }
                                                while(true)
                                                {
                                                   this.§ !W§ = this.§@!G§.§6!3§();
                                                }
                                                §§goto(addr152);
                                             }
                                             continue;
                                          }
                                          §§goto(addr55);
                                       }
                                       §§goto(addr100);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public static function §%!s§(param1:int, param2:§34§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param2 == null)
            {
               if(_loc6_)
               {
                  §§goto(addr24);
               }
            }
            var _loc4_:String;
            §§push(_loc4_ = param2.§?!s§[param1]);
            if(_loc6_)
            {
               if(§§pop().length > 0)
               {
                  if(!(_loc5_ && param1))
                  {
                     §§push(param3);
                     if(!_loc5_)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(!_loc5_)
                           {
                              §§push(param2.§%`§);
                              if(_loc5_ && param2)
                              {
                              }
                           }
                           §§goto(addr82);
                        }
                        §0"#§.§<!&§(_loc4_,param3);
                     }
                     §§goto(addr82);
                  }
               }
               addr82:
               param3 = §§pop();
               §§goto(addr81);
            }
            addr81:
            if(!_loc6_)
            {
            }
            return;
         }
         addr24:
      }
      
      public static function §#!O§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!_loc2_)
         {
            §§push(180);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr52:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public static function §^t§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc4_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(!(_loc3_ && _loc2_))
            {
               addr58:
               return Number(§§pop());
            }
         }
         §§goto(addr58);
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
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
         return this.§=9§;
      }
      
      public function get front() : Boolean
      {
         return this.§!%§;
      }
      
      public function get §#n§() : Number
      {
         return this.§,,§.GetPosition().x;
      }
      
      public function get §?y§() : Number
      {
         return this.§,,§.GetPosition().y;
      }
      
      public function get §4";§() : §4!p§
      {
         return this.§@!G§;
      }
      
      public function get §5"$§() : Boolean
      {
         return this.§"h§ >= 0;
      }
      
      public function get container() : §^!!§
      {
         return this.§,8§;
      }
      
      public function get §]!@§() : Boolean
      {
         return this.§67§;
      }
      
      public function set §]!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§67§ = param1;
         }
      }
      
      public function set §!"<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!W§ = param1;
         }
      }
      
      public function set §8z§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^!?§.§8z§ = param1;
         }
      }
      
      public function get §8z§() : uint
      {
         return this.§^!?§.§8z§;
      }
      
      public function get §#!X§() : Boolean
      {
         return this.§%V§;
      }
      
      public function set §#!X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%V§ = param1;
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
         return this.§5!-§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§5!-§ = param1;
         }
      }
      
      public function §,!A§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§""3§);
            if(!(_loc2_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr60);
            }
            §§pop().§#!v§(param1);
         }
         addr60:
         if(_loc3_)
         {
            §§push(this.§""3§);
         }
      }
      
      protected function §]!I§(param1:String) : int
      {
         return §`!E§.§]!I§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr153:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            _loc3_.type = this.§@!G§.§0-§();
            loop4:
            while(true)
            {
               _loc3_.§-!3§ = true;
               while(true)
               {
                  _loc3_.§`!U§ = true;
                  loop6:
                  while(true)
                  {
                     _loc3_.§9!'§ = true;
                     while(true)
                     {
                        if(_loc5_ || param1)
                        {
                           continue loop4;
                        }
                        continue loop6;
                        addr45:
                        if(_loc5_ || this)
                        {
                           return _loc3_;
                        }
                     }
                     §§goto(addr154);
                  }
                  addr57:
                  while(!(_loc4_ && this))
                  {
                     continue loop3;
                     _loc3_.§7@§ = false;
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     §§goto(addr45);
                  }
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;!^§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§;!^§);
                     addr143:
                     while(true)
                     {
                        §§pop().§`E§(this.getBody());
                        addr146:
                        while(true)
                        {
                           this.§;!^§ = null;
                           addr120:
                           while(true)
                           {
                           }
                        }
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc2_ && _loc1_)
                        {
                           continue loop0;
                        }
                        §§push(this.§ D§);
                        loop6:
                        while(true)
                        {
                           §§pop().dispose();
                           loop7:
                           while(true)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 this.§ D§ = null;
                                 loop8:
                                 while(true)
                                 {
                                    addr51:
                                    while(true)
                                    {
                                       this.§""3§ = null;
                                       loop5:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.§7U§ = null;
                                                   do
                                                   {
                                                      this.§@!G§ = null;
                                                   }
                                                   while(!(_loc1_ || this));
                                                   
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc1_ || this)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop5;
                                                }
                                                return;
                                                addr59:
                                             }
                                             break loop3;
                                          }
                                          continue loop7;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              addr108:
                              while(_loc1_ || _loc2_)
                              {
                                 §§push(this.§ D§);
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    continue loop6;
                                 }
                                 if(§§pop())
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr51);
                              }
                              §§goto(addr120);
                           }
                        }
                     }
                     §§goto(addr146);
                  }
               }
               while(true)
               {
                  this.§8C§.dispose();
                  §§goto(addr108);
                  §§goto(addr120);
               }
            }
            §§goto(addr143);
         }
         §§goto(addr59);
      }
      
      public function §5!D§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.getBody());
            §§push(360);
            §§push(param1);
            if(!(_loc2_ && param1))
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc2_ && param1))
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§4!Y§(§§pop());
         }
      }
      
      public function §?"1§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.getBody().GetAngle());
         if(_loc2_)
         {
            §§push(180);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc2_)
               {
               }
               §§goto(addr56);
            }
            §§push(§§pop() % §§pop());
         }
         addr56:
         §§push(§§pop() / Math.PI);
         if(!_loc1_)
         {
            §§push(360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc1_ && this))
         {
            return §§pop() % 360;
         }
      }
      
      public function §;E§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.getBody().SetLinearVelocity(param1);
         }
         loop0:
         while(true)
         {
            §§push(param2);
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr34);
                        }
                        break;
                     }
                     continue loop1;
                  }
                  addr25:
               }
               if(!(_loc4_ && param2))
               {
                  this.§?!5§();
               }
               while(_loc5_)
               {
                  if(_loc5_)
                  {
                     this.§7y§();
                  }
                  if(_loc5_ || param2)
                  {
                     §§goto(addr25);
                  }
               }
               continue loop0;
               return;
            }
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§""3§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §§push(this.getBody());
            while(true)
            {
               §§push(§§pop().GetPosition());
               addr187:
               while(true)
               {
                  §§push(§§pop().x);
                  addr188:
                  while(true)
                  {
                     §§push(param3);
                     addr189:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
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
                                    addr193:
                                    while(true)
                                    {
                                       §§push(this.getBody());
                                       addr163:
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          addr164:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr165:
                                             while(true)
                                             {
                                                §§push(param4);
                                                addr166:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr192:
                              }
                              while(true)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop14:
                                    while(_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             §§pop();
                                             addr173:
                                             while(true)
                                             {
                                                §§push(this.getBody());
                                                addr101:
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop().GetPosition());
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(§§pop().y);
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               addr113:
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc6_ || param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr84);
                                                                        }
                                                                        continue loop22;
                                                                     }
                                                                     continue loop14;
                                                                     addr121:
                                                                  }
                                                                  addr131:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  §§goto(addr193);
                                                               }
                                                            }
                                                            addr112:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      addr104:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr164);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr121);
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc6_ || param3))
               {
                  continue;
               }
               §§push(§§pop().GetPosition());
               if(_loc6_)
               {
                  if(_loc6_)
                  {
                     §§push(§§pop().y);
                     if(_loc6_ || param1)
                     {
                        if(_loc6_ || param2)
                        {
                           if(_loc6_ || this)
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() <= §§pop());
                                       if(!(_loc6_ || param1))
                                       {
                                          §§goto(addr131);
                                       }
                                       addr84:
                                       return §§pop();
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr187);
               }
               §§goto(addr104);
            }
         }
         §§goto(addr173);
      }
      
      public function § >§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7U§ = param1;
         }
      }
      
      public function §8<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§7U§)
            {
               do
               {
                  this.§;E§(this.§7U§,false);
                  do
                  {
                     this.§7U§ = null;
                  }
                  while(!(_loc1_ || this));
                  
               }
               while(!(_loc1_ || _loc2_));
               
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §?!5§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!param1)
            {
               if(_loc3_)
               {
                  addr28:
                  §§push(this.getBody());
                  if(!_loc2_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr35:
                     §§push(param1.x);
                     if(_loc3_)
                     {
                        §§push(0);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc2_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§pop();
                                    §§goto(addr131);
                                 }
                              }
                           }
                           if(!§§pop())
                           {
                              §§push(this.getBody());
                              if(_loc3_ || this)
                              {
                                 §§pop().§5'§(Math.atan2(param1.x,param1.y));
                                 if(_loc3_)
                                 {
                                    if(_loc2_ && this)
                                    {
                                    }
                                 }
                              }
                           }
                           §§goto(addr131);
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr131);
               }
               addr131:
               if(!(_loc2_ && _loc3_))
               {
                  addr129:
                  §§push(param1.y == 0);
               }
               this.getBody().§5'§(0);
               return;
            }
            §§goto(addr35);
         }
         §§goto(addr28);
      }
      
      public function §7y§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(!param1)
            {
               addr26:
               param1 = this.getBody().GetLinearVelocity();
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!(_loc3_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               this.§5!D§(_loc2_);
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function §0N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.getBody().§5'§(param1);
         }
      }
      
      public function getBody() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§""3§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr58);
                  }
               }
               return null;
            }
            §§goto(addr58);
         }
         addr58:
         return this.§""3§.GetBody();
      }
      
      public function §3[§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(param1 != -9999)
            {
               loop0:
               while(true)
               {
                  this.mX = param1;
                  loop1:
                  while(true)
                  {
                     this.mY = param2;
                     addr119:
                     while(true)
                     {
                        addr77:
                        if(_loc3_ || param1)
                        {
                           if(_loc3_ || param1)
                           {
                              if(_loc3_)
                              {
                                 return;
                                 addr93:
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.getBody());
               loop4:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr98:
                  while(true)
                  {
                     §§push(this.mX);
                     addr100:
                     while(true)
                     {
                        §§push(§,4§.§,^§);
                        addr102:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr103:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               §§goto(addr119);
            }
         }
         §§goto(addr93);
      }
      
      public function §0!j§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(!_loc6_)
         {
            §§push(this.§[r§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr456:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr457:
                        while(true)
                        {
                           this.§[r§ = false;
                           addr451:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr455:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(true);
                           addr435:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr436:
                              while(true)
                              {
                              }
                           }
                        }
                        addr434:
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
                                 addr427:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr428:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr426:
                           }
                           while(true)
                           {
                              §§push(this.updateScreamingFrameAnimations(param2));
                              if(!(_loc6_ && param2))
                              {
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       addr410:
                                       loop52:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr411:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   loop54:
                                                   while(true)
                                                   {
                                                      addr368:
                                                      while(true)
                                                      {
                                                         §§push(this.updateBlinkingFrameAnimations(param2));
                                                         if(_loc5_ || param2)
                                                         {
                                                            if(_loc6_ && this)
                                                            {
                                                               continue loop52;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  addr388:
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     addr389:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               addr387:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               continue loop11;
                                                               §§goto(addr389);
                                                            }
                                                         }
                                                         §§goto(addr388);
                                                         continue loop54;
                                                      }
                                                   }
                                                   addr420:
                                                }
                                                else
                                                {
                                                   §§goto(addr455);
                                                }
                                             }
                                             §§goto(addr451);
                                          }
                                       }
                                    }
                                    addr409:
                                 }
                                 §§goto(addr368);
                              }
                              §§goto(addr410);
                           }
                           §§goto(addr435);
                        }
                     }
                  }
               }
               if(_loc6_ && this)
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr162);
               }
               this.§0!>§ = this.§ ]§;
               §§goto(addr131);
            }
         }
         §§goto(addr420);
      }
      
      public function §'!8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.getBody().GetPosition().x);
         if(!(_loc3_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.getBody().GetPosition().y);
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§7[§ = this.§ ]§;
         }
         loop0:
         while(true)
         {
            this.§<!f§ = this.§3P§;
            while(true)
            {
               this.§ -§ = this.§&!I§;
               loop2:
               while(_loc4_ || _loc2_)
               {
                  §§push(this);
                  §§push(this.getBody().GetAngle());
                  if(!_loc3_)
                  {
                     §§push(180);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * (§§pop() / Math.PI));
                        if(_loc4_)
                        {
                           addr133:
                           §§push(§§pop() % 360);
                        }
                        §§pop().§ ]§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this);
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              §§push(§§pop() / §,4§.§,^§);
                           }
                           §§pop().§3P§ = §§pop();
                           while(true)
                           {
                              §§push(this);
                              §§push(_loc2_);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(§§pop() / §,4§.§,^§);
                              }
                              §§pop().§&!I§ = §§pop();
                              loop5:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(this.§^!?§);
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().§=!'§();
                                    addr72:
                                    while(!_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                              if(_loc4_ || _loc3_)
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr133);
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
      
      public function §"" §(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
                        §§push(§,"0§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() + " overriding to 0");
                        }
                        §§pop().log(§§pop());
                        addr967:
                        while(true)
                        {
                        }
                     }
                     addr943:
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
                                 if(!_loc4_)
                                 {
                                    §§push(this.§,8§.§`!G§.§?=§.§>T§);
                                    while(true)
                                    {
                                       §§push(1000);
                                       addr936:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr937:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr938:
                                             while(true)
                                             {
                                                param2 = §§pop();
                                                addr939:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr935:
                                 }
                                 else
                                 {
                                    §§goto(addr943);
                                 }
                              }
                              §§goto(addr967);
                              addr928:
                           }
                           while(true)
                           {
                              §§push(param1);
                              while(true)
                              {
                                 §§push(-1);
                                 loop15:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop16:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop17:
                                       while(_loc3_)
                                       {
                                          param1 = §§pop();
                                          loop18:
                                          while(true)
                                          {
                                             §§push(this.§3P§);
                                             loop19:
                                             for(; _loc3_; while(true)
                                             {
                                                if(!(_loc3_ || param2))
                                                {
                                                   continue loop19;
                                                }
                                                §§goto(addr435);
                                                §§push(180);
                                             })
                                             {
                                                §§push(this.§<!f§);
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
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr914:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  addr895:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr896:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr913:
                                                         }
                                                         while(true)
                                                         {
                                                            loop28:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop95:
                                                                  while(true)
                                                                  {
                                                                     this.§ r§ = 0;
                                                                     loop96:
                                                                     while(true)
                                                                     {
                                                                        this.mX = this.§3P§;
                                                                        loop97:
                                                                        while(true)
                                                                        {
                                                                           loop31:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§&!I§);
                                                                              loop32:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§ -§);
                                                                                 loop33:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop35:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop36:
                                                                                             while(!_loc4_)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop37:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            loop39:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               loop40:
                                                                                                               while(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(param1);
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(this.§ -§);
                                                                                                                           if(!(_loc4_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - this.§&!I§);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc3_ || this)
                                                                                                                                 {
                                                                                                                                    addr761:
                                                                                                                                    §§push(§§pop() / param2);
                                                                                                                                 }
                                                                                                                                 §§pop().§[",§ = §§pop();
                                                                                                                                 loop42:
                                                                                                                                 for(; _loc3_; if(!(_loc3_ || param2))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 },§§push(this.§ ]§),if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 },§§goto(addr61))
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§&!I§);
                                                                                                                                    if(_loc3_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + this.§[",§);
                                                                                                                                    }
                                                                                                                                    §§pop().mY = §§pop();
                                                                                                                                    loop43:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop44:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§ ]§);
                                                                                                                                          loop45:
                                                                                                                                          while(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§7[§);
                                                                                                                                             loop46:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                loop47:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   loop48:
                                                                                                                                                   while(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         loop49:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            loop50:
                                                                                                                                                            while(_loc3_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1);
                                                                                                                                                                  loop51:
                                                                                                                                                                  while(!(_loc4_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     loop52:
                                                                                                                                                                     while(_loc3_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           loop54:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr683:
                                                                                                                                                                                 this.§0!>§ = this.§ ]§;
                                                                                                                                                                                 addr687:
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop37;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§7[§);
                                                                                                                                                                                 loop55:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§ ]§);
                                                                                                                                                                                    loop56:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                       loop57:
                                                                                                                                                                                       while(!(_loc4_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          while(_loc3_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr586:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§7[§);
                                                                                                                                                                                                   continue loop55;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                §§push(this.§ ]§);
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(param1);
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§7[§);
                                                                                                                                                                                                      if(_loc3_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - this.§ ]§);
                                                                                                                                                                                                         if(_loc3_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr625:
                                                                                                                                                                                                            addr626:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc3_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().§0!>§ = §§pop() + §§pop();
                                                                                                                                                                                                            return;
                                                                                                                                                                                                            addr627:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr625);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr626);
                                                                                                                                                                                             }
                                                                                                                                                                                             loop70:
                                                                                                                                                                                             for(; _loc3_ || param1; while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc3_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop70;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop48;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr374);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr312);
                                                                                                                                                                                             },continue loop49)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop71:
                                                                                                                                                                                                   for(; !(_loc4_ && param2); loop84:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_ && param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop71;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc4_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop34;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§7[§);
                                                                                                                                                                                                            while(_loc3_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr202);
                                                                                                                                                                                                               §§push(this.§ ]§);
                                                                                                                                                                                                               if(_loc4_ && this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop84;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop51;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr278);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop5;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr314);
                                                                                                                                                                                                         §§goto(addr268);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr239);
                                                                                                                                                                                                   },§§goto(addr404))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      loop72:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc3_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc3_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop97;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§7[§);
                                                                                                                                                                                                                  addr404:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop55;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc3_ || param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop45;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(this.§ ]§);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop20;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§ ]§);
                                                                                                                                                                                                                           addr560:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              continue loop5;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr558:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§[",§ = 0;
                                                                                                                                                                                                                  addr799:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.mY = this.§&!I§;
                                                                                                                                                                                                                        break loop72;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop96;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr796:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                         loop80:
                                                                                                                                                                                                         while(!(_loc4_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc3_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop95;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§ ]§);
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§7[§);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc4_ && _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr278:
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                 addr278:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              loop82:
                                                                                                                                                                                                                              while(_loc3_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(180);
                                                                                                                                                                                                                                 while(_loc3_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                          continue loop71;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop39;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop52;
                                                                                                                                                                                                                                    if(_loc4_ && param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc4_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr239:
                                                                                                                                                                                                                                          while(_loc3_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   continue loop80;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      continue loop70;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop28;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                                                                                addr517:
                                                                                                                                                                                                                                                addr374:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop71;
                                                                                                                                                                                                                                          addr239:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr103:
                                                                                                                                                                                                                                                if(!(_loc3_ || param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop42;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr442:
                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                      §§push(this.§ ]§);
                                                                                                                                                                                                                                                      if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§7[§);
                                                                                                                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - 360);
                                                                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - this.§ ]§);
                                                                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr488:
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(param2);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().§0!>§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr490);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr488);
                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr488);
                                                                                                                                                                                                                                                      §§goto(addr103);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop82;
                                                                                                                                                                                                                                                   addr249:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop50;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                                                                         §§push(this.§ ]§);
                                                                                                                                                                                                                                                         if(_loc3_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                                                                            if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§7[§);
                                                                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + 360);
                                                                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - this.§ ]§);
                                                                                                                                                                                                                                                                     if(!(_loc4_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr174:
                                                                                                                                                                                                                                                                        addr164:
                                                                                                                                                                                                                                                                        addr175:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param2);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().§0!>§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr687);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr490:
                                                                                                                                                                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr914);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr314:
                                                                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop80;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                                                                           §§push(this.§ ]§);
                                                                                                                                                                                                                                                                           if(!(_loc4_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(param1);
                                                                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§7[§);
                                                                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() - this.§ ]§);
                                                                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr344:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr342:
                                                                                                                                                                                                                                                                                          §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§pop().§0!>§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                       addr345:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr342);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr344);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr174);
                                                                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr164);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr174);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr175);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr558);
                                                                                                                                                                                                                                                               §§push(this.§7[§);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr683);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr660:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr683);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr588);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr345);
                                                                                                                                                                                                                                                §§goto(addr490);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr174);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr625);
                                                                                                                                                                                                                                          addr99:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc3_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop49;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr441:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§7[§);
                                                                                                                                                                                                                                                      while(_loc3_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§ ]§);
                                                                                                                                                                                                                                                         while(_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop1;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                                                                      addr351:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr442);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                continue loop70;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc4_ && param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop40;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr586);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr913);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr914);
                                                                                                                                                                                                                                          addr577:
                                                                                                                                                                                                                                          addr217:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr442);
                                                                                                                                                                                                                                       §§goto(addr249);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr896);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop6;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr439:
                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr441);
                                                                                                                                                                                                                                          §§goto(addr439);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc3_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr577);
                                                                                                                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr936);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr569:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr914);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr360);
                                                                                                                                                                                                                           addr202:
                                                                                                                                                                                                                           while(!(_loc4_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr209:
                                                                                                                                                                                                                              if(_loc3_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr217);
                                                                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr517);
                                                                                                                                                                                                                                    §§goto(addr209);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr516:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(this.§7[§);
                                                                                                                                                                                                                              if(_loc4_ && param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc4_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop46;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr560);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr417);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                        addr268:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr351);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr278);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr799);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr627);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(_loc3_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop44;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr440);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop47;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr625);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop15;
                                                                                                                                                                     if(!(_loc3_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr79);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr967);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr939);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr681);
                                                                                                                                                   }
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    §§goto(addr928);
                                                                                                                                 }
                                                                                                                                 addr834:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr761);
                                                                                                                     }
                                                                                                                     §§goto(addr796);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop36;
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr895);
                                                                                                   }
                                                                                                   §§goto(addr938);
                                                                                                }
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                          §§goto(addr794);
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
                                                                  §§push(this);
                                                                  §§push(param1);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(this.§<!f§);
                                                                     if(!(_loc4_ && param2))
                                                                     {
                                                                        §§push(§§pop() - this.§3P§);
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              addr877:
                                                                              §§push(§§pop() / param2);
                                                                           }
                                                                           §§pop().§ r§ = §§pop();
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr877);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr937);
                                          }
                                       }
                                       §§goto(addr935);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc4_ && param2)
               {
                  continue;
               }
               §§goto(addr35);
            }
         }
         §§goto(addr554);
      }
      
      public function get §]!z§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§4M§)
            {
            }
         }
         return null;
      }
      
      public function §'5§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§@F§);
            if(_loc2_)
            {
               §§push(§4!p§.§8!§);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           addr69:
                           return this.§@F§ == §4!p§.§?!o§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §>!r§() : Boolean
      {
         return this.§@F§ == §4!p§.§^"0§;
      }
      
      public function §!0§() : Boolean
      {
         return this.§@F§ == §4!p§.§?!$§;
      }
      
      public function §9!W§() : Boolean
      {
         return this.§@F§ == §4!p§.§?!o§;
      }
      
      public function §0!8§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§@F§ == §4!p§.§ z§;
      }
      
      public function isGround() : Boolean
      {
         return this.§@F§ == §4!p§.§>_§;
      }
      
      public function §^_§() : Boolean
      {
         return this.§@F§ == §4!p§.§#!U§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§@F§ == §4!p§.§+Q§;
      }
      
      public function §`!m§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§+!A§);
            loop0:
            while(true)
            {
               §§push(§§pop() == "MISC_EXPLOSIVE_TNT");
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || this)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr80:
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              §§push(false);
                              if(!(_loc1_ || this))
                              {
                                 break loop2;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 break loop1;
                              }
                           }
                        }
                        return §§pop();
                        addr60:
                     }
                     return §§pop();
                  }
               }
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §8N§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§>!r§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr155:
                           while(true)
                           {
                              §§push(this.§^_§());
                              addr131:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr132:
                                 while(_loc2_)
                                 {
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr154:
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
                                 addr148:
                                 addr89:
                                 while(true)
                                 {
                                    §§push(this.isMiscBlock());
                                    addr66:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop9;
                                    }
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       if(_loc2_)
                                       {
                                          if(!(_loc1_ && this))
                                          {
                                             §§pop();
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                break;
                                             }
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(this.§#!X§);
                                                if(_loc2_ || this)
                                                {
                                                   continue;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr154);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr148);
                              }
                           }
                           while(true)
                           {
                              continue loop8;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr148);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §[!_§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!_loc9_)
         {
            §§push(this.§!0§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,8§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§ !'§());
                        loop3:
                        while(!_loc9_)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§"h§);
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
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(param6);
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         addr560:
                                                         if(_loc9_ && param2)
                                                         {
                                                            continue;
                                                         }
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop29:
                                                               while(_loc10_)
                                                               {
                                                                  §§push(int(Math.min(this.§8W§,int(param1))));
                                                                  while(true)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        §§push(§,4§.§]O§.getValue());
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * _loc7_);
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 loop35:
                                                                                 while(!(_loc9_ && param2))
                                                                                 {
                                                                                    §§push(param5);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§,8§);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop().§`!G§);
                                                                                             §§push(_loc8_);
                                                                                             §§push(§3!s§.§ !?§);
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                §§push(this.§8W§ > param1);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         addr449:
                                                                                                         §§pop();
                                                                                                         §§push(param3);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().addScore(§§pop(),§§pop(),§§pop(),this.getBody().GetPosition().x,this.getBody().GetPosition().y,§`!E§.§6!%§(this.§+!A§));
                                                                                                   loop42:
                                                                                                   for(; _loc10_ || param3; while(_loc10_ || param1)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr320);
                                                                                                         §§push(this.§%!W§);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr625);
                                                                                                      }
                                                                                                      §§goto(addr588);
                                                                                                   })
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param5);
                                                                                                         loop44:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  if(_loc9_ && param3)
                                                                                                                  {
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  loop45:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop46:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param3))
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§8W§);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - param1);
                                                                                                                                    }
                                                                                                                                    §§pop().§8W§ = §§pop();
                                                                                                                                    loop52:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc10_ || param3)
                                                                                                                                       {
                                                                                                                                          loop53:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§8W§);
                                                                                                                                             loop54:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         loop55:
                                                                                                                                                         for(; !(_loc9_ && this); §§push(1),if(_loc9_ && this)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         },if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr164);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr174);
                                                                                                                                                            }
                                                                                                                                                            this.§^!x§(§34§.§do§);
                                                                                                                                                            §§goto(addr86);
                                                                                                                                                         },§§goto(addr702))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop6;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                               loop56:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc10_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop57:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc10_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr281:
                                                                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc10_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc9_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             loop58:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc10_ || this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop57;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop29;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§'5§());
                                                                                                                                                                                                   if(!(_loc10_ || param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop60:
                                                                                                                                                                                                               while(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§8W§ = 1;
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr800:
                                                                                                                                                                                                                           §§push(this.§8W§);
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§8W§);
                                                                                                                                                                                                                           loop63:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc9_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc9_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr686:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§"h§);
                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() / 2);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr692:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop() >= §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break loop42;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr642:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§'5§());
                                                                                                                                                                                                                                                addr645:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                   addr646:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc10_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                            break loop56;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop7;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr694:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       loop83:
                                                                                                                                                                                                                                       while(!(_loc10_ || param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop55;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr718:
                                                                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break loop52;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(§§pop() > 3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr724:
                                                                                                                                                                                                                                                this.§^!x§(§34§.§7-§);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc10_ || param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr724);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr728:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop83;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr718);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       return §§pop();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr632:
                                                                                                                                                                                                                              addr604:
                                                                                                                                                                                                                              addr632:
                                                                                                                                                                                                                              addr629:
                                                                                                                                                                                                                              while(!(_loc9_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 while(_loc10_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    param1 = §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param2);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                          break loop58;
                                                                                                                                                                                                                                          addr545:
                                                                                                                                                                                                                                          loop26:
                                                                                                                                                                                                                                          while(_loc10_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                             while(!(_loc9_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr560);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr752:
                                                                                                                                                                                                                                                   §§push(param1);
                                                                                                                                                                                                                                                   break loop52;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr659:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(param1);
                                                                                                                                                                                                                                                   break loop54;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr553);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr553:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc9_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc10_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         continue loop42;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr645);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                                                                                §§goto(addr281);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr634:
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.§%5§);
                                                                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§8W§ = §§pop();
                                                                                                                                                                                                                                                addr641:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break loop63;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr720);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr633);
                                                                                                                                                                                                                              §§push(§§pop() == this.§%5§);
                                                                                                                                                                                                                              §§goto(addr720);
                                                                                                                                                                                                                              addr67:
                                                                                                                                                                                                                              §§push(this.§8W§);
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr31:
                                                                                                                                                                                                                                    if(!(_loc9_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       return §§pop();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr505:
                                                                                                                                                                                                                                    while(_loc10_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                                                                       §§goto(addr31);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop54;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr587:
                                                                                                                                                                                                                     addr164:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr545);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc9_ && param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     this.§8W§ = 0;
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc10_ || param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr659);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §``§.§%!s§(§34§.§,!t§,this.§@!G§.§9Y§,"ChannelDestroyed");
                                                                                                                                                                                                                              continue loop58;
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr330:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc10_ || param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop53;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr641);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop60;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     this.§^!x§(§34§.§do§);
                                                                                                                                                                                                                     §§goto(addr702);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop52;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr127);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr212:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr210:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop56;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr724);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                addr585:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      §§goto(addr587);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr646);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr586);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr386);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                       continue loop45;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr320:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop31;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr212);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop46;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop45;
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  break loop44;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr632);
                                                                                                                                                            }
                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                            {
                                                                                                                                                               break loop35;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr740);
                                                                                                                                                            §§push(param1);
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr742);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr720);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§"h§);
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr604);
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr694);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr795);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr604);
                                                                                                                                                   addr590:
                                                                                                                                                }
                                                                                                                                                §§goto(addr612);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc10_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§"h§);
                                                                                                                                                   if(!(_loc9_ && param2))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr678);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr590);
                                                                                                                                                            addr625:
                                                                                                                                                         }
                                                                                                                                                         addr588:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr632);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop5;
                                                                                                                                             }
                                                                                                                                             §§goto(addr692);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr752);
                                                                                                                                    }
                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr761);
                                                                                                                                       §§push(30);
                                                                                                                                    }
                                                                                                                                    §§goto(addr802);
                                                                                                                                 }
                                                                                                                                 §§goto(addr330);
                                                                                                                              }
                                                                                                                              addr328:
                                                                                                                           }
                                                                                                                           §§goto(addr386);
                                                                                                                        }
                                                                                                                        §§goto(addr585);
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr553);
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         §§goto(addr658);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         this.§^!x§(§34§.§7-§);
                                                                                                         §§goto(addr701);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr728);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr449);
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr478);
                                                                                    }
                                                                                 }
                                                                                 this.§^!x§(§34§.§,!t§);
                                                                                 break loop29;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(_loc9_ && param2)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr505);
                                                                     §§push(§§pop() * §,4§.§7!3§);
                                                                  }
                                                               }
                                                               §§goto(addr702);
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr751);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr795);
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr800);
            }
         }
         §§goto(addr685);
      }
      
      public function §^!x§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §``§.§%!s§(param1,this.§@!G§.§9Y§);
         }
      }
      
      public function §6J§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§@!G§.material.§7!D§(param1));
         if(!(_loc3_ && this))
         {
            return §§pop() * this.§9T§;
         }
      }
      
      public function §><§(param1:String) : Number
      {
         return this.§@!G§.material.§^y§(param1);
      }
      
      public function §2@§() : String
      {
         return this.§@!G§.material.mName;
      }
      
      public function §>"6§() : Number
      {
         return this.§@!G§.§#h§();
      }
      
      public function §]"2§() : int
      {
         return this.§@!G§.§`!c§();
      }
      
      public function §=!8§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!_loc3_)
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
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr216:
                        loop4:
                        while(true)
                        {
                           §§push(this.§'5§());
                           loop5:
                           while(_loc2_ || _loc3_)
                           {
                              if(_loc3_ && _loc3_)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr190:
                                       while(true)
                                       {
                                          §§pop();
                                          addr191:
                                          while(true)
                                          {
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                continue loop4;
                                             }
                                             §§push(this.§8W§ == this.§%5§);
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                       addr190:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr167:
                                                while(true)
                                                {
                                                   §§push(Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                }
                                             }
                                             addr166:
                                          }
                                          while(true)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop14:
                                                      while(_loc2_)
                                                      {
                                                         §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  §§push(Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                  if(!_loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        §§goto(addr161);
                                                                        addr112:
                                                                        §§push(Math.abs(this.getBody().§[A§()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                     }
                                                                     continue;
                                                                     addr87:
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc3_ && _loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop13;
                                                                        addr70:
                                                                     }
                                                                     §§goto(addr190);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr166);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr70);
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr190);
                           }
                           continue loop3;
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr216);
      }
      
      public function §+!>§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.getBody().IsAwake());
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr41:
                     §§push(true);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr45:
                     §§push(this.§7!]§());
                     if(!(_loc2_ && this))
                     {
                        addr64:
                        return !§§pop();
                     }
                  }
                  return §§pop();
               }
               §§goto(addr45);
            }
            §§goto(addr64);
         }
         §§goto(addr41);
      }
      
      protected function §7!]§() : Boolean
      {
         return this.§^!?§.§7!]§();
      }
      
      public function §+!<§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§9T§ = param1;
         }
         for(; this.§9T§ <= 1; if(_loc3_ && this)
         {
            continue;
         },§§goto(addr24))
         {
            §§push(this.§8C§);
            if(_loc2_ || this)
            {
               §§pop().§9!K§ = null;
               if(_loc2_ || _loc3_)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  continue;
               }
               addr24:
               return;
               addr87:
            }
            §§pop().§0X§();
            §§goto(addr87);
         }
         §§goto(addr86);
         §§push(this.§8C§);
      }
      
      public function §9!3§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc3_ || this)
         {
            §§push(this.§@!G§.§0-§());
            loop0:
            while(true)
            {
               if(§§pop() != §0A§.§7"=§)
               {
                  §§push(this.getBody().GetMass());
                  loop1:
                  while(true)
                  {
                     §§push(this.§""3§.§^3§());
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 if(param1)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          if(_loc3_)
                                          {
                                             §§push(this.§-1§());
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr123:
                                                loop19:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop18:
                                                      while(!(_loc4_ && _loc3_))
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr147:
                                                            _loc2_ = §§pop();
                                                            while(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(this.§=9§);
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     addr72:
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                               }
                                                               continue loop2;
                                                               §§goto(addr147);
                                                            }
                                                            continue loop5;
                                                            addr148:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr204:
                                                               while(true)
                                                               {
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr109:
                                                                     while(true)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            addr203:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            _loc2_ = §§pop();
                                                            if(!(_loc4_ && this))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr202:
                                                   while(true)
                                                   {
                                                   }
                                                   §§goto(addr203);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr196:
                                             while(true)
                                             {
                                             }
                                             addr196:
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr123);
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr41);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr170);
            }
         }
         §§goto(addr109);
      }
      
      public function §-1§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(_loc2_ || this)
            {
               §§push(_loc1_);
               if(_loc2_ || this)
               {
                  §§push(2);
                  if(_loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc2_)
                     {
                        addr53:
                        §§push(§§pop() * Math.min(10,this.§8C§.§@i§ - 1));
                        if(!(_loc3_ && this))
                        {
                           addr69:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           _loc1_ = §§pop();
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr69);
               }
               §§goto(addr53);
            }
            §§goto(addr93);
         }
         addr93:
         return _loc1_;
      }
      
      public function §#!d§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.getBody().GetLinearVelocity().x);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.getBody().GetLinearVelocity().y);
         if(_loc7_ || _loc3_)
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
         if(_loc7_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_ || this)
         {
            §§push(_loc2_);
            if(!(_loc6_ && _loc2_))
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr152:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr151:
            }
            loop2:
            while(true)
            {
               _loc2_ = §§pop();
               loop3:
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(_loc5_);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc7_)
                        {
                           addr118:
                           if(!_loc7_)
                           {
                              continue loop2;
                           }
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        do
                        {
                           if(!(_loc6_ && this))
                           {
                              continue;
                           }
                           continue loop3;
                        }
                        while(this.getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_)), !_loc7_);
                        
                        return;
                        addr102:
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr118);
               }
               §§goto(addr152);
            }
         }
         §§goto(addr102);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§6!Q§) : void
      {
      }
      
      public function addDamageParticles(param1:§6!Q§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §!h§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(_loc6_ || this)
         {
            §§push(param2.x * param1);
            if(!_loc5_)
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
            if(!_loc5_)
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
               this.getBody().§8" §(_loc4_);
            }
            while(!(_loc6_ || param2));
            
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
                  §§push(this.§?"1§());
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
                           if(!_loc7_)
                           {
                              §§push(360);
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr248:
                                 while(true)
                                 {
                                    §§push(360);
                                    addr249:
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                       addr250:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                              }
                              addr247:
                           }
                           loop8:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop9:
                              while(true)
                              {
                                 §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                 if(_loc6_)
                                 {
                                    if(_loc7_ && param2)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 loop10:
                                 while(true)
                                 {
                                    if(_loc7_ && _loc3_)
                                    {
                                       continue loop8;
                                    }
                                    _loc4_ = §§pop();
                                    loop11:
                                    while(true)
                                    {
                                       §§push(Number(0));
                                       loop12:
                                       while(!_loc7_)
                                       {
                                          _loc5_ = §§pop();
                                          while(!_loc7_)
                                          {
                                             continue loop0;
                                             loop21:
                                             while(_loc6_ || param1)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop11;
                                                }
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      §§push(param1);
                                                      if(_loc6_ || param2)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() / 2);
                                                         loop23:
                                                         for(; !_loc7_; if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc6_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr72);
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                            break loop22;
                                                         })
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     §§push(§§pop() - _loc5_);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr263:
                                                                     addr263:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        break loop22;
                                                                     }
                                                                  }
                                                                  §§goto(addr263);
                                                               }
                                                               else
                                                               {
                                                                  addr72:
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§5!D§(_loc4_);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                §§push(this.§?"1§());
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§goto(addr263);
                                                                                                   §§push(param1);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr253:
                                                                                             }
                                                                                             continue;
                                                                                             break loop22;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    addr120:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       addr121:
                                                                                       addr176:
                                                                                       while(!_loc7_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§push(_loc5_);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   _loc4_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         break loop24;
                                                                                                      }
                                                                                                      addr137:
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         §§goto(addr36);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            addr166:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1);
                                                                                                               break loop23;
                                                                                                            }
                                                                                                            §§goto(addr137);
                                                                                                         }
                                                                                                         addr165:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr267);
                                                                                             }
                                                                                             while(!_loc7_)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      §§goto(addr165);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr247);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr249);
                                                                                             }
                                                                                             continue loop10;
                                                                                             addr129:
                                                                                             addr147:
                                                                                          }
                                                                                          §§goto(addr263);
                                                                                       }
                                                                                       while(_loc6_ || _loc3_)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          break loop24;
                                                                                       }
                                                                                       §§goto(addr248);
                                                                                    }
                                                                                    §§goto(addr263);
                                                                                 }
                                                                                 §§goto(addr135);
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr166);
                                                                     }
                                                                     §§goto(addr121);
                                                                  }
                                                                  §§goto(addr129);
                                                               }
                                                            }
                                                            §§goto(addr120);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() % §§pop());
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   break;
                                                }
                                                addr267:
                                                var _loc3_:* = §§pop();
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc3_ = §§pop();
                                                }
                                                do
                                                {
                                                   this.§5!D§(_loc3_);
                                                }
                                                while(_loc7_ && param2);
                                                
                                                return;
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          continue loop9;
                                       }
                                       §§goto(addr250);
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr253);
         }
         §§goto(addr209);
      }
      
      public function §'n§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§#!O§(this.getBody().GetAngle()));
         if(!(_loc4_ && _loc3_))
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
                  if(!(_loc4_ && param1))
                  {
                     addr114:
                     §§push(§§pop() * §§pop());
                     if(_loc3_)
                     {
                        §§push(1000);
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
                           while(true)
                           {
                              §§push(§^t§(_loc2_));
                              if(_loc3_)
                              {
                                 if(_loc4_ && param1)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              if(_loc3_)
                              {
                                 _loc2_ = §§pop();
                                 do
                                 {
                                    this.getBody().§4!Y§(_loc2_);
                                 }
                                 while(!_loc3_);
                                 
                                 if(!(_loc4_ && this))
                                 {
                                    return;
                                    addr61:
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr114);
            }
         }
         §§goto(addr61);
      }
      
      public function §>"?§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || _loc3_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.getBody().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!(_loc14_ && param2))
         {
            §§push(§§pop() - param2.x);
            if(!_loc14_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(!_loc14_)
            {
               §§push(§§pop() - param2.y);
               if(!_loc14_)
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc14_)
               {
                  §§push(_loc4_);
                  if(_loc15_)
                  {
                     §§push(0);
                     if(!_loc14_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!(_loc14_ && param2))
                        {
                           if(§§pop())
                           {
                              if(_loc15_ || param1)
                              {
                                 addr85:
                                 §§pop();
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(_loc5_);
                                    if(_loc15_)
                                    {
                                       addr98:
                                       if(§§pop() == 0)
                                       {
                                          if(!_loc14_)
                                          {
                                             §§goto(addr101);
                                          }
                                       }
                                    }
                                    addr112:
                                    var _loc6_:* = §§pop();
                                    §§push(_loc4_);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() / _loc5_);
                                       if(!(_loc14_ && param2))
                                       {
                                          addr125:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(Math.atan(_loc7_) * 180);
                                       if(_loc15_)
                                       {
                                          §§push(§§pop() / Math.PI);
                                          if(!_loc14_)
                                          {
                                             addr149:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          if(!(_loc14_ && param2))
                                          {
                                             §§push(_loc5_);
                                             if(_loc15_)
                                             {
                                                §§push(0);
                                                if(_loc15_ || param2)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc15_ || param2)
                                                      {
                                                         addr177:
                                                         §§push(_loc8_);
                                                         if(_loc15_)
                                                         {
                                                            addr181:
                                                            §§push(§§pop() + 180);
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc14_ && param2))
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  addr198:
                                                                  §§push(_loc8_);
                                                                  if(_loc15_)
                                                                  {
                                                                     addr201:
                                                                     §§push(param1);
                                                                     if(_loc15_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr213:
                                                                           §§push(Number(§§pop()));
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr213);
                                                                     }
                                                                     var _loc9_:* = §§pop();
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        §§push(§§pop() * Math.PI);
                                                                        if(!(_loc14_ && this))
                                                                        {
                                                                           addr232:
                                                                           §§push(§§pop() / 180);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(Math.sin(_loc10_) * _loc6_);
                                                                        if(!_loc14_)
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
                                                                        if(_loc15_)
                                                                        {
                                                                           this.getBody().§8" §(_loc13_);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                   }
                                                   §§goto(addr198);
                                                }
                                                §§goto(addr181);
                                             }
                                             §§goto(addr201);
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr112);
                                 §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                              }
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr112);
               }
               addr101:
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr47);
      }
   }
}
