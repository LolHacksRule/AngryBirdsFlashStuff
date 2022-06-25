package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2Body;
   import §#I§.b2BodyDef;
   import §#I§.b2FilterData;
   import §#I§.b2Fixture;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §0S§.§ L§;
   import §0S§.§4K§;
   import §0S§.§6!D§;
   import §0S§.§6R§;
   import §0S§.§7!Z§;
   import §1!B§.§<m§;
   import §3b§.b2PolygonShape;
   import §40§.§-!8§;
   import §40§.§5G§;
   import §@!3§.b2Settings;
   import §[!b§.§-!Q§;
   import §`g§.Sprite;
   import flash.geom.Point;
   
   public class §!u§
   {
      
      public static const §`z§:uint;
      
      public static const §<!z§:uint;
      
      public static const §3d§:uint;
      
      public static const §6!3§:uint;
      
      public static const §[!o§:Boolean = true;
      
      public static const §6!X§:Number = 5;
      
      public static const §0!V§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§§findproperty(§`z§));
            §§push(1);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§`z§ = §§pop();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§<!z§));
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§<!z§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(§§findproperty(§3d§));
                  §§push(1);
                  if(!_loc1_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§3d§ = §§pop();
                  while(true)
                  {
                     §§push(§§findproperty(§6!3§));
                     §§push(1);
                     if(!(_loc1_ && §!u§))
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§6!3§ = §§pop();
                     loop3:
                     while(true)
                     {
                        §[!o§ = true;
                        while(_loc2_)
                        {
                           §6!X§ = 5;
                           continue loop1;
                           if(!(_loc1_ && _loc2_))
                           {
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                     if(!(_loc1_ && §!u§))
                     {
                        return;
                        addr66:
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      private var §5I§:String;
      
      private var §6!M§:int;
      
      private var §#"#§:int;
      
      public var §-!>§:String;
      
      public var §-!o§:int;
      
      protected var §,!;§:§4K§;
      
      private var §>0§:§ 4§;
      
      private var mWorld:b2World;
      
      protected var §?!T§:String = "";
      
      protected var §&!-§:int = 1;
      
      private var §]""§:b2Fixture;
      
      private var §@4§:b2Body;
      
      private var §[$§:b2Vec2;
      
      public var §0M§:Number;
      
      public var §]!3§:Number;
      
      private var §=!X§:Number;
      
      private var §<!;§:Boolean = false;
      
      private var § !@§:Number;
      
      private var §,!k§:Number;
      
      private var §7!<§:Number;
      
      private var §+! §:Number;
      
      private var §4Q§:Number;
      
      private var §]!Z§:Number;
      
      public var §,z§:Number = 1;
      
      private var §'!T§:Boolean = false;
      
      public var §4j§:Number = 0;
      
      public var §@Z§:Number = 0;
      
      protected var §,![§:Boolean = false;
      
      public var §+!j§:§7!r§;
      
      protected var §]2§:Sprite;
      
      private var §#!!§:Number = 0;
      
      private var §!!3§:Number = 0;
      
      private var §2F§:Number = 0;
      
      protected var §?z§:Number = 1.0;
      
      private var §4!!§:Boolean = false;
      
      protected var §1!7§:§[!8§;
      
      private var §!+§:Boolean = true;
      
      public function §!u§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc17_ && this))
         {
            super();
            while(true)
            {
               this.§-!>§ = param6;
               loop1:
               while(true)
               {
                  this.§,!;§ = §7!Z§.§`!H§(param6);
                  loop2:
                  while(true)
                  {
                     this.§>0§ = param1;
                     while(true)
                     {
                        this.§]2§ = param2;
                        while(true)
                        {
                           this.§?z§ = param10;
                           loop5:
                           while(true)
                           {
                              this.§4!!§ = param11;
                              addr193:
                              while(true)
                              {
                                 this.§6!M§ = param5;
                                 addr177:
                                 while(_loc16_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop5;
                              }
                           }
                           addr144:
                           while(_loc16_ || this)
                           {
                              continue loop2;
                           }
                        }
                        addr129:
                        loop11:
                        for(; !(_loc17_ && param3); if(!(_loc16_ || param2))
                        {
                           continue;
                        },§§goto(addr85))
                        {
                           §§push(this.§+!j§);
                           while(true)
                           {
                              if(!§§pop().§]J§(param1.§#!U§.animationManager))
                              {
                                 while(_loc16_)
                                 {
                                    §§push(this.§+!j§);
                                    loop14:
                                    while(true)
                                    {
                                       §§push(this.§#"#§);
                                       addr100:
                                       while(true)
                                       {
                                          §§pop().§3![§(§§pop(),this.§,!;§.§-l§(),this.§,!;§.§%!Q§() / §5G§.§6+§,this.§,!;§.§]§() / §5G§.§6+§);
                                          addr116:
                                          addr172:
                                          while(_loc16_)
                                          {
                                             if(!_loc17_)
                                             {
                                                continue loop14;
                                             }
                                             §§goto(addr177);
                                          }
                                          while(true)
                                          {
                                             this.§#"#§ = this.§,!;§.§7!X§();
                                             while(true)
                                             {
                                                this.§1!7§ = new §[!8§(§6!X§,§0!V§);
                                                §§goto(addr144);
                                                addr37:
                                                if(!(_loc16_ || this))
                                                {
                                                   continue;
                                                }
                                                while(false)
                                                {
                                                   continue loop14;
                                                }
                                                var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                                                if(_loc16_ || this)
                                                {
                                                   this.§@4§ = this.mWorld.§4!H§(_loc12_);
                                                   if(!(_loc17_ && this))
                                                   {
                                                      this.§@4§.§%V§(this);
                                                      if(_loc16_ || param2)
                                                      {
                                                         §§push(this.§#"#§);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§6R§.§&!'§);
                                                            if(!_loc17_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                     addr277:
                                                                     §§push(b2PolygonShape);
                                                                     §§push(this.§,!;§.shape.§3!8§);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(param10);
                                                                        if(_loc16_)
                                                                        {
                                                                           addr288:
                                                                           §§push(§§pop() * §§pop());
                                                                           §§push(this.§,!;§.shape.§0!Q§);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(§§pop() * param10);
                                                                           }
                                                                        }
                                                                        _loc14_ = §§pop().§!!@§(§§pop(),§§pop());
                                                                        if(!(_loc17_ && param2))
                                                                        {
                                                                           this.§]""§ = this.§@4§.CreateFixture2(_loc14_,this.§,!;§.§7"§());
                                                                           if(_loc16_ || param3)
                                                                           {
                                                                              addr382:
                                                                              §§push(this.§]""§);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(this.§,!;§);
                                                                                 if(!(_loc17_ && param3))
                                                                                 {
                                                                                    §§push(§§pop().§4Z§());
                                                                                    if(!(_loc17_ && param2))
                                                                                    {
                                                                                       §§pop().§+k§(§§pop());
                                                                                       if(!(_loc17_ && this))
                                                                                       {
                                                                                          addr416:
                                                                                          this.§]""§.§5!,§(this.§,!;§.§]!&§());
                                                                                       }
                                                                                       var _loc13_:b2FilterData = new b2FilterData();
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          §§push(this.§]!?§());
                                                                                          loop20:
                                                                                          for(; !§§pop(); if(!(_loc16_ || param2))
                                                                                          {
                                                                                             continue;
                                                                                          },§§pop(),if(!_loc17_)
                                                                                          {
                                                                                             if(!(_loc17_ && param3))
                                                                                             {
                                                                                                §§goto(addr525);
                                                                                             }
                                                                                             break;
                                                                                          },§§goto(addr733))
                                                                                          {
                                                                                             §§push(this.§-!>§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                                addr499:
                                                                                                addr476:
                                                                                                while(!§§pop())
                                                                                                {
                                                                                                   if(!(_loc17_ && param2))
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   addr712:
                                                                                                   addr712:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc16_ || param3)
                                                                                                      {
                                                                                                         addr720:
                                                                                                         §§push(param9);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            addr722:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() != §§pop())
                                                                                                               {
                                                                                                                  addr733:
                                                                                                                  loop28:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§4I§(param9);
                                                                                                                     addr736:
                                                                                                                     addr759:
                                                                                                                     while(!_loc17_)
                                                                                                                     {
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§]2§.visible = false;
                                                                                                                        addr763:
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr709:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr712);
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr733:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§>!d§();
                                                                                                                  addr699:
                                                                                                                  addr708:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc16_ || param3)
                                                                                                                     {
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc16_ || this)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr709);
                                                                                                                              }
                                                                                                                              addr752:
                                                                                                                           }
                                                                                                                           §§goto(addr763);
                                                                                                                        }
                                                                                                                        addr745:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr733);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§?!5§(0,1);
                                                                                                                     addr695:
                                                                                                                     loop24:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§+!j§);
                                                                                                                        if(_loc16_ || param3)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        addr744:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().setDamagedFrame();
                                                                                                                           break loop24;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr745);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr721:
                                                                                                      }
                                                                                                      §§goto(addr736);
                                                                                                   }
                                                                                                   §§goto(addr720);
                                                                                                }
                                                                                                addr525:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      _loc13_.§[!k§ = §<!z§;
                                                                                                      if(!(_loc17_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         §§push(65535);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(§§pop() & ~§`z§);
                                                                                                         }
                                                                                                         §§pop().§?!K§ = §§pop();
                                                                                                         if(!(_loc17_ && param3))
                                                                                                         {
                                                                                                            addr434:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§]""§.§?!o§(_loc13_);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  this.§=!X§ = this.§,!;§.§@!`§();
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(this.§,!;§);
                                                                                                                     if(!(_loc17_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop().§]!3§);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    this.§0M§ = this.§]!3§ = this.§,!;§.§]!3§;
                                                                                                                                    if(!(_loc17_ && param1))
                                                                                                                                    {
                                                                                                                                       addr753:
                                                                                                                                       if(this.§,!;§.§-!o§ != §4K§.§&!8§)
                                                                                                                                       {
                                                                                                                                          §§goto(addr744);
                                                                                                                                          §§push(this.§+!j§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr759);
                                                                                                                                       addr588:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr613:
                                                                                                                                       §§push(this.§0M§);
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          addr617:
                                                                                                                                          §§push(1);
                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc17_ && param3))
                                                                                                                                                {
                                                                                                                                                   addr633:
                                                                                                                                                   this.§0M§ = this.§]!3§ = 1;
                                                                                                                                                   if(_loc16_ || param2)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr695);
                                                                                                                                             }
                                                                                                                                             §§goto(addr753);
                                                                                                                                          }
                                                                                                                                          §§goto(addr722);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr721);
                                                                                                                                 }
                                                                                                                                 §§goto(addr695);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 this.§0M§ = this.§]!3§ = Math.round(this.§^!e§(true) * this.§,!;§.§2!H§());
                                                                                                                                 if(_loc16_ || param3)
                                                                                                                                 {
                                                                                                                                    §§goto(addr613);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr752);
                                                                                                                           }
                                                                                                                           §§goto(addr722);
                                                                                                                        }
                                                                                                                        §§goto(addr617);
                                                                                                                     }
                                                                                                                     §§goto(addr753);
                                                                                                                  }
                                                                                                                  §§goto(addr613);
                                                                                                               }
                                                                                                               §§goto(addr733);
                                                                                                            }
                                                                                                            addr434:
                                                                                                         }
                                                                                                         §§goto(addr613);
                                                                                                      }
                                                                                                      §§goto(addr633);
                                                                                                   }
                                                                                                   §§goto(addr588);
                                                                                                }
                                                                                                §§goto(addr434);
                                                                                                §§push(this.§-!>§);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§§pop().toUpperCase() == "MISC_FOOD_EGG");
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   if(_loc17_ && param3)
                                                                                                   {
                                                                                                      §§goto(addr499);
                                                                                                   }
                                                                                                   §§goto(addr476);
                                                                                                }
                                                                                                §§goto(addr712);
                                                                                             }
                                                                                          }
                                                                                          _loc13_.§[!k§ = §`z§;
                                                                                          if(!(_loc17_ && param1))
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             §§push(65535);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() & ~§<!z§);
                                                                                             }
                                                                                             §§pop().§?!K§ = §§pop();
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§goto(addr434);
                                                                                                addr537:
                                                                                             }
                                                                                             §§goto(addr708);
                                                                                          }
                                                                                          §§goto(addr689);
                                                                                       }
                                                                                       §§goto(addr537);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr416);
                                                                           }
                                                                        }
                                                                        §§goto(addr416);
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr346:
                                                                     if(this.§#"#§ == §6R§.§#""§)
                                                                     {
                                                                        if(!(_loc17_ && this))
                                                                        {
                                                                           this.§]""§ = this.§@4§.CreateFixture2(this.§,!;§.shape.§'!k§(param10),this.§,!;§.§7"§());
                                                                           addr359:
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr382);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§#"#§);
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr327:
                                                                     §§push(§6R§.§9!Z§);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc16_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr338:
                                                                                 §§pop();
                                                                                 if(!(_loc17_ && param2))
                                                                                 {
                                                                                    §§goto(addr346);
                                                                                 }
                                                                                 §§goto(addr359);
                                                                              }
                                                                           }
                                                                           §§goto(addr346);
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr359);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr193);
                                 addr94:
                              }
                              §§goto(addr46);
                              if(!(_loc16_ || param2))
                              {
                                 continue;
                              }
                              §§push(this.§#"#§);
                              if(!_loc17_)
                              {
                                 §§pop().§^!o§(§§pop() == §6R§.§9!Z§);
                                 while(true)
                                 {
                                    if(!(_loc17_ && param3))
                                    {
                                       continue loop11;
                                    }
                                    §§goto(addr94);
                                    addr85:
                                    this.mWorld = param3;
                                    if(!_loc17_)
                                    {
                                       if(_loc16_)
                                       {
                                          if(_loc16_)
                                          {
                                             §§goto(addr37);
                                          }
                                          §§goto(addr144);
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr100);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public static function §5F§(param1:int, param2:§6!D§, param3:String = "") : void
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
            var _loc4_:String;
            §§push(_loc4_ = param2.§2!?§[param1]);
            if(_loc5_ || param2)
            {
               if(§§pop().length > 0)
               {
                  if(!_loc6_)
                  {
                     §§push(param3);
                     if(_loc5_ || param2)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc5_ || param2)
                           {
                              §§push(param2.§8!F§);
                              if(_loc6_)
                              {
                              }
                              addr86:
                              param3 = §§pop();
                              if(!_loc6_)
                              {
                                 addr89:
                                 §-!Q§.§7"$§(_loc4_,param3);
                              }
                              §§goto(addr93);
                           }
                           addr93:
                           return;
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr86);
                     §§push(§§pop());
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr86);
         }
         addr23:
      }
      
      public static function §=!P§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc2_)
         {
            §§push(180);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_ || param1)
                  {
                     addr52:
                     §§push(§§pop() % 360);
                  }
               }
               §§push(§§pop() - §§pop());
               if(_loc2_)
               {
                  return §§pop() % 360;
               }
            }
         }
         §§goto(addr52);
      }
      
      public static function §[!R§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() / (180 / Math.PI));
            if(!_loc4_)
            {
               return Number(§§pop());
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]2§;
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function get front() : Boolean
      {
         return this.§4!!§;
      }
      
      public function get §`!v§() : Number
      {
         return this.§@4§.GetPosition().x;
      }
      
      public function get §&x§() : Number
      {
         return this.§@4§.GetPosition().y;
      }
      
      public function get §2f§() : §4K§
      {
         return this.§,!;§;
      }
      
      public function get §5d§() : Boolean
      {
         return this.§=!X§ >= 0;
      }
      
      public function get §^!W§() : § 4§
      {
         return this.§>0§;
      }
      
      public function get §6]§() : Boolean
      {
         return this.§!+§;
      }
      
      public function set §6]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!+§ = param1;
         }
      }
      
      public function set §+!z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§<!;§ = param1;
         }
      }
      
      public function set §;c§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1!7§.§;c§ = param1;
         }
      }
      
      public function get §;c§() : uint
      {
         return this.§1!7§.§;c§;
      }
      
      public function get §1!U§() : Boolean
      {
         return this.§'!T§;
      }
      
      public function set §1!U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§'!T§ = param1;
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
         return this.§5I§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5I§ = param1;
         }
      }
      
      public function §-!w§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§]""§);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr54);
            }
            §§pop().§?!o§(param1);
         }
         addr54:
         if(_loc2_ || _loc3_)
         {
            §§push(this.§]""§);
         }
      }
      
      protected function §=!f§(param1:String) : int
      {
         return §>p§.§=!f§(param1);
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
               addr133:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            addr132:
         }
         loop2:
         while(true)
         {
            §§push(_loc3_.position);
            if(_loc5_)
            {
               §§push(param2);
               if(_loc5_ || this)
               {
                  §§pop().y = §§pop();
                  while(true)
                  {
                     _loc3_.type = this.§,!;§.§4!a§();
                     loop4:
                     while(true)
                     {
                        _loc3_.§]#§ = true;
                        loop5:
                        while(_loc5_)
                        {
                           _loc3_.§6!@§ = true;
                           do
                           {
                              _loc3_.§-!A§ = true;
                              while(_loc5_ || param2)
                              {
                                 continue loop4;
                              }
                              continue loop5;
                           }
                           while(!(_loc5_ || _loc3_));
                           
                           return _loc3_;
                        }
                        continue loop2;
                     }
                  }
               }
            }
            else
            {
               §§goto(addr132);
            }
            §§goto(addr133);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.mWorld);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr138:
                     this.mWorld.§],§(this.§63§());
                  }
                  while(true)
                  {
                     this.mWorld = null;
                     addr128:
                     while(true)
                     {
                        loop5:
                        for(; !(_loc2_ && _loc1_); while(!(_loc2_ && _loc2_))
                        {
                           this.§,!;§ = null;
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr39);
                        })
                        {
                           while(true)
                           {
                              this.§]""§ = null;
                              do
                              {
                                 this.§[$§ = null;
                                 continue loop5;
                              }
                              while(!_loc1_);
                              
                              addr41:
                              if(_loc2_)
                              {
                                 addr118:
                                 while(true)
                                 {
                                    this.§]2§ = null;
                                    continue loop5;
                                    §§goto(addr41);
                                 }
                                 addr118:
                              }
                              §§goto(addr43);
                           }
                        }
                     }
                     addr98:
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     addr117:
                     this.§]2§.dispose();
                     §§goto(addr118);
                  }
               }
               while(true)
               {
                  this.§+!j§.dispose();
                  while(true)
                  {
                     §§push(this.§]2§);
                     if(!(_loc2_ && this))
                     {
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr66);
                     }
                     break;
                  }
                  §§goto(addr117);
                  §§goto(addr128);
               }
            }
            §§goto(addr138);
         }
         addr43:
      }
      
      public function §4I§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§63§());
            §§push(360);
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§?!=§(§§pop());
         }
      }
      
      public function §3C§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§63§().GetAngle());
         if(!_loc1_)
         {
            §§push(180);
            if(!_loc1_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc1_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc1_ && _loc2_))
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
            }
         }
         §§goto(addr49);
      }
      
      public function §5!;§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§63§().SetLinearVelocity(param1);
            while(true)
            {
               §§push(param2);
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§<"#§();
                  }
               }
               if(_loc5_ && param1)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         while(true)
         {
            §§goto(addr23);
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§]""§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§63§());
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
                                 loop13:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop14:
                                    while(_loc5_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§pop();
                                                loop16:
                                                while(true)
                                                {
                                                   if(_loc6_ && param2)
                                                   {
                                                      break loop15;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§63§());
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break loop16;
                                                         }
                                                         §§push(§§pop().GetPosition());
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(§§pop().y);
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(!(_loc5_ || param1))
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(§§pop() >= §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc5_ || param2)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(this.§63§());
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop().GetPosition());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(param2);
                                                                                                         if(_loc5_ || param3)
                                                                                                         {
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§goto(addr43);
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      addr121:
                                                                                                      while(_loc5_ || this)
                                                                                                      {
                                                                                                         §§push(param4);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       while(!(_loc6_ && param1))
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop3;
                                                                                 addr96:
                                                                              }
                                                                              addr43:
                                                                              return §§pop();
                                                                           }
                                                                           continue loop14;
                                                                           addr91:
                                                                        }
                                                                        §§goto(addr96);
                                                                     }
                                                                     §§goto(addr129);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop21;
                                                               }
                                                               addr120:
                                                            }
                                                            §§goto(addr121);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             addr176:
                                             while(true)
                                             {
                                                §§pop();
                                                break loop15;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this.§63§());
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr91);
                                    }
                                    continue loop5;
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
         §§goto(addr167);
      }
      
      public function §'y§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[$§ = param1;
         }
      }
      
      public function §]!u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§[$§)
            {
               loop0:
               while(true)
               {
                  this.§5!;§(this.§[$§,false);
                  addr76:
                  while(true)
                  {
                     this.§[$§ = null;
                     if(!(_loc1_ && this))
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr35);
               }
            }
            addr35:
            return;
         }
         §§goto(addr76);
      }
      
      public function §<"#§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               if(_loc2_)
               {
                  §§push(this.§63§());
                  if(!(_loc3_ && param1))
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr34:
                     §§push(param1.x);
                     if(!(_loc3_ && this))
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_ || this)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr73:
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       addr124:
                                       if(param1.y != 0)
                                       {
                                          §§push(this.§63§());
                                          if(!_loc3_)
                                          {
                                             §§pop().§&e§(Math.atan2(param1.x,param1.y));
                                             addr88:
                                             if(_loc2_ || _loc3_)
                                             {
                                                if(_loc3_ && param1)
                                                {
                                                   addr127:
                                                   this.§63§().§&e§(0);
                                                   addr129:
                                                   addr125:
                                                }
                                                else
                                                {
                                                   addr119:
                                                }
                                                return;
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr127);
                                       }
                                       §§goto(addr125);
                                       addr76:
                                    }
                                    §§goto(addr127);
                                 }
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr88);
               }
               §§goto(addr119);
            }
            §§goto(addr34);
         }
         §§goto(addr76);
      }
      
      public function §,!!§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               param1 = this.§63§().GetLinearVelocity();
               addr20:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(_loc3_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               this.§4I§(_loc2_);
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function §!!g§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§63§().§&e§(param1);
         }
      }
      
      public function §63§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§]""§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§goto(addr44);
                  }
               }
               return null;
            }
            §§goto(addr44);
         }
         addr44:
         return this.§]""§.GetBody();
      }
      
      public function §9H§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param1 != -9999)
            {
               while(true)
               {
                  this.§#!!§ = param1;
                  addr112:
                  while(true)
                  {
                     this.§!!3§ = param2;
                     addr105:
                     while(true)
                     {
                     }
                  }
               }
               addr109:
            }
            loop1:
            while(true)
            {
               §§push(this.§63§());
               loop2:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  loop3:
                  while(true)
                  {
                     §§push(this.§#!!§);
                     loop4:
                     while(true)
                     {
                        §§push(§5G§.§6+§);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop6:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              while(!_loc3_)
                              {
                                 §§push(this.§63§());
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop().GetPosition());
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(this.§!!3§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(§5G§.§6+§);
                                    if(!_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 if(_loc3_ && param1)
                                 {
                                    continue loop6;
                                 }
                                 §§pop().y = §§pop();
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop1;
                                 }
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                                 §§goto(addr109);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function §?!5§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(!(_loc5_ && param2))
         {
            §§push(this.§,![§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop3:
                        while(true)
                        {
                           this.§,![§ = false;
                           while(true)
                           {
                              addr250:
                              if(_loc5_ && this)
                              {
                                 continue;
                              }
                              addr257:
                              §§push(4);
                              §§push(this.§+!j§.§2!G§.blurX - 4);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(param2);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(§§pop() / 20);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() % 28);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc5_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 loop37:
                                 while(true)
                                 {
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(this.§+!j§);
                                       while(!_loc5_)
                                       {
                                          §§pop().§2!G§.blurX = _loc4_;
                                          loop39:
                                          while(true)
                                          {
                                             §§push(this.§+!j§);
                                             loop40:
                                             while(true)
                                             {
                                                §§pop().§2!G§.blurY = _loc4_;
                                                addr203:
                                                while(_loc6_ || param2)
                                                {
                                                   addr210:
                                                   if(_loc6_ || this)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop40;
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            while(true)
                                                            {
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(this.updateBlinkingFrameAnimations(param2));
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr378:
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr386:
                                                                              while(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(true);
                                                                                    loop55:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       addr395:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             addr402:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                addr325:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ && param2))
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   continue loop55;
                                                                                                }
                                                                                                continue loop55;
                                                                                                §§goto(addr402);
                                                                                             }
                                                                                             addr323:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                addr411:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.updateFlyingFrameAnimations(param2));
                                                                                                   addr425:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr426:
                                                                                                         loop12:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  break loop21;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            addr440:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               break loop12;
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         addr426:
                                                                                                         addr441:
                                                                                                      }
                                                                                                      addr403:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.updateScreamingFrameAnimations(param2));
                                                                                                         addr407:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop20;
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
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr403);
                                                                                 §§goto(addr386);
                                                                              }
                                                                              addr386:
                                                                              addr434:
                                                                           }
                                                                           §§goto(addr323);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  while(!_loc5_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     §§goto(addr434);
                                                                     §§goto(addr378);
                                                                  }
                                                                  addr439:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr440);
                                                                     }
                                                                     §§goto(addr411);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr347);
                                                }
                                                loop32:
                                                while(true)
                                                {
                                                   §§push(this.§+!j§);
                                                   addr242:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop().§2!G§));
                                                      addr244:
                                                      while(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               continue loop40;
                                                            }
                                                            while(_loc6_)
                                                            {
                                                               §§goto(addr250);
                                                            }
                                                            §§goto(addr395);
                                                         }
                                                      }
                                                      addr185:
                                                      §§goto(addr306);
                                                      if(_loc5_ && param2)
                                                      {
                                                         continue;
                                                      }
                                                      §§pop().§=7§(param2);
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§[!o§);
                                                            if(_loc6_ || this)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§2F§ = this.§7!<§;
                                                                     loop44:
                                                                     while(true)
                                                                     {
                                                                        this.§#!!§ = this.§ !@§;
                                                                        addr140:
                                                                        while(_loc6_)
                                                                        {
                                                                           this.§!!3§ = this.§,!k§;
                                                                           continue loop44;
                                                                        }
                                                                        continue loop39;
                                                                     }
                                                                  }
                                                                  §§goto(addr165);
                                                               }
                                                               §§goto(addr441);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr244);
                                                            }
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§pop();
                                                            continue loop32;
                                                         }
                                                         §§goto(addr407);
                                                      }
                                                      §§goto(addr425);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().§=!2§();
                                          break loop37;
                                       }
                                    }
                                    break;
                                    if(!(_loc5_ && this))
                                    {
                                       return;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       §§goto(addr301);
                                    }
                                    §§goto(addr386);
                                 }
                              }
                              §§goto(addr304);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr439);
               }
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr317);
               }
               §§goto(addr246);
            }
         }
         §§goto(addr393);
      }
      
      public function §>!d§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§63§().GetPosition().x);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§63§().GetPosition().y);
         if(_loc3_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.§]!Z§ = this.§7!<§;
            while(true)
            {
               this.§+! § = this.§ !@§;
               addr188:
               while(true)
               {
                  this.§4Q§ = this.§,!k§;
               }
            }
            addr193:
         }
         loop2:
         while(true)
         {
            §§push(this);
            §§push(this.§63§().GetAngle());
            if(_loc3_ || _loc1_)
            {
               §§push(180);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() * (§§pop() / Math.PI));
                  if(_loc3_)
                  {
                     addr172:
                     §§push(§§pop() % 360);
                  }
                  §§pop().§7!<§ = §§pop();
                  loop3:
                  while(_loc3_)
                  {
                     §§push(this);
                     §§push(_loc1_);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() / §5G§.§6+§);
                     }
                     §§pop().§ !@§ = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(this);
                        §§push(_loc2_);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() / §5G§.§6+§);
                        }
                        §§pop().§,!k§ = §§pop();
                        loop5:
                        for(; !_loc4_; while(true)
                        {
                           if(_loc3_ || _loc1_)
                           {
                              continue loop4;
                           }
                           continue loop5;
                        },continue loop2)
                        {
                           §§push(this.§1!7§);
                           while(true)
                           {
                              §§pop().§+!R§();
                              §§push(this.§1!7§);
                              addr102:
                              continue loop5;
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              §§pop().§4k§(this.§63§());
                              if(!_loc3_)
                              {
                                 continue loop5;
                              }
                              if(_loc3_)
                              {
                                 return;
                              }
                              §§goto(addr193);
                           }
                        }
                        continue loop3;
                        if(!(_loc4_ && this))
                        {
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr188);
               }
            }
            §§goto(addr172);
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
      
      public function §]!4§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(param1);
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
                        §§push(§<m§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() + param1);
                           if(_loc3_)
                           {
                              §§push(§§pop() + " overriding to 0");
                           }
                        }
                        §§pop().log(§§pop());
                        addr959:
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
                                 §§push(this.§>0§.§#!U§.mLevelEngine.§8l§);
                                 addr935:
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
                              }
                              addr920:
                           }
                           while(true)
                           {
                              §§push(param1);
                              loop14:
                              while(true)
                              {
                                 §§push(-1);
                                 loop15:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop16:
                                    while(!_loc4_)
                                    {
                                       §§push(Number(§§pop()));
                                       loop17:
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          loop18:
                                          while(!_loc4_)
                                          {
                                             §§push(this.§ !@§);
                                             loop19:
                                             while(true)
                                             {
                                                §§push(this.§+! §);
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
                                                         if(§§pop())
                                                         {
                                                            loop24:
                                                            while(true)
                                                            {
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(this);
                                                                     §§push(param1);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.§+! §);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop() - this.§ !@§);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr866:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 §§push(param2);
                                                                              }
                                                                              §§pop().§4j§ = §§pop();
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§ !@§);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + this.§4j§);
                                                                                    }
                                                                                    §§pop().§#!!§ = §§pop();
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§,!k§);
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§4Q§);
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop32:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop33:
                                                                                                         while(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  addr793:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                  }
                                                                                                                  addr413:
                                                                                                                  if(!(_loc4_ && param2))
                                                                                                                  {
                                                                                                                     §§push(this.§7!<§);
                                                                                                                     loop64:
                                                                                                                     while(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                        loop65:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 loop66:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_ || param2)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          loop67:
                                                                                                                                          for(; _loc3_; if(_loc4_ && param2)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          },if(_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop66;
                                                                                                                                          },§§goto(addr690))
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             while(!(_loc4_ && param2))
                                                                                                                                             {
                                                                                                                                                if(_loc4_ && param1)
                                                                                                                                                {
                                                                                                                                                   return;
                                                                                                                                                   addr335:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr24:
                                                                                                                                                   addr641:
                                                                                                                                                }
                                                                                                                                                §§push(this.§7!<§);
                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§]!Z§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                   }
                                                                                                                                                   addr334:
                                                                                                                                                }
                                                                                                                                                while(!(_loc4_ && param2))
                                                                                                                                                {
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                                continue loop29;
                                                                                                                                             }
                                                                                                                                             loop80:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§]!Z§);
                                                                                                                                                addr474:
                                                                                                                                                loop81:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§7!<§);
                                                                                                                                                   loop82:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      loop83:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc3_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(180);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                  break loop65;
                                                                                                                                                               }
                                                                                                                                                               addr494:
                                                                                                                                                            }
                                                                                                                                                            loop55:
                                                                                                                                                            while(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(180);
                                                                                                                                                               loop56:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc3_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     loop57:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop33;
                                                                                                                                                                        }
                                                                                                                                                                        loop58:
                                                                                                                                                                        while(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§]!Z§);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§7!<§);
                                                                                                                                                                              loop60:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                 if(_loc3_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       break loop66;
                                                                                                                                                                                    }
                                                                                                                                                                                    loop51:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr666:
                                                                                                                                                                                       addr904:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc4_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(this.§]!Z§);
                                                                                                                                                                                             loop53:
                                                                                                                                                                                             for(; _loc3_; if(_loc4_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             },addr98:,§§push(180),if(!(_loc4_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc4_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop56;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                   if(_loc3_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop65;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr298);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr494);
                                                                                                                                                                                             },while(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr361);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr548);
                                                                                                                                                                                                §§goto(addr98);
                                                                                                                                                                                             },while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop6;
                                                                                                                                                                                             })
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§7!<§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop55;
                                                                                                                                                                                                   addr69:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc4_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr77:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(!(_loc4_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr84:
                                                                                                                                                                                                      if(!(_loc4_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop53;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr411:
                                                                                                                                                                                                      while(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr413);
                                                                                                                                                                                                         §§goto(addr84);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop47:
                                                                                                                                                                                                      while(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§7!<§);
                                                                                                                                                                                                         while(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               addr655:
                                                                                                                                                                                                               loop50:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop51;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr711:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr712:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           addr713:
                                                                                                                                                                                                                           addr781:
                                                                                                                                                                                                                           while(!(_loc4_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 addr679:
                                                                                                                                                                                                                                 while(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr690:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§]!Z§);
                                                                                                                                                                                                                                                continue loop47;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§2F§ = this.§7!<§;
                                                                                                                                                                                                                                                addr697:
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop18;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr24);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§!!3§ = this.§,!k§;
                                                                                                                                                                                                                                                            addr875:
                                                                                                                                                                                                                                                            loop91:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§#!!§ = this.§ !@§;
                                                                                                                                                                                                                                                                     break loop91;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr894:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr789:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop28;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr787:
                                                                                                                                                                                                                                                            addr875:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr920);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr799:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§7!<§);
                                                                                                                                                                                                                                                      break loop55;
                                                                                                                                                                                                                                                      §§goto(addr789);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr736:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr689:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr936);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop15;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                              §§push(this.§,!k§);
                                                                                                                                                                                                                              if(!(_loc4_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + this.§@Z§);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§!!3§ = §§pop();
                                                                                                                                                                                                                              §§goto(addr736);
                                                                                                                                                                                                                              §§goto(addr713);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr712:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr689);
                                                                                                                                                                                                                     continue loop50;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop22;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc3_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc4_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                  if(!(_loc4_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop67;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr361:
                                                                                                                                                                                                                     while(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§]!Z§);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc3_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop14;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop81;
                                                                                                                                                                                                                           §§goto(addr77);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop34;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr298:
                                                                                                                                                                                                                  addr298:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc4_ && _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                           addr308:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr307:
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc3_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§7!<§);
                                                                                                                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc3_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc4_ && _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop83;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr56:
                                                                                                                                                                                                                                                §§push(this.§]!Z§);
                                                                                                                                                                                                                                                if(!(_loc4_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop82;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop60;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr69);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop64;
                                                                                                                                                                                                                                                      if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop64;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr249);
                                                                                                                                                                                                                                                      §§goto(addr56);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr334);
                                                                                                                                                                                                                                                   addr240:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr678);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr679);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr335);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr77);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.§@Z§ = 0;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr796:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr799);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr691);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr697);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr548:
                                                                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr713);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr24);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr307);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop83;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                  §§goto(addr712);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr711);
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr712);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                               addr705:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop1;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr222);
                                                                                                                                                                                                   §§goto(addr712);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr937);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr787);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr574:
                                                                                                                                                                                 while(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    continue loop80;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr654);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop57;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(this.§7!<§);
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§]!Z§);
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - this.§7!<§);
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr639:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§2F§ = §§pop() + §§pop();
                                                                                                                                                                                          §§goto(addr641);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr639);
                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr639);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr959);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr875);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop34;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr679);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr793);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr705);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr556);
                                                                                                                                                      }
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr796);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(param1);
                                                                                                                                                if(_loc3_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§4Q§);
                                                                                                                                                   if(_loc3_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - this.§,!k§);
                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr779:
                                                                                                                                                            §§push(§§pop() / param2);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§@Z§ = §§pop();
                                                                                                                                                         §§goto(addr781);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr779);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr795:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr360);
                                                                                                                                       }
                                                                                                                                       §§goto(addr474);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop());
                                                                                                                                    break;
                                                                                                                                    if(!(_loc3_ || this))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(!(_loc4_ && param2))
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          while(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && param2))
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop34;
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§7!<§);
                                                                                                                                                               if(!(_loc4_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§]!Z§);
                                                                                                                                                                     if(!(_loc4_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + 360);
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           addr187:
                                                                                                                                                                           §§push(§§pop() - this.§7!<§);
                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr207:
                                                                                                                                                                              addr208:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc3_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§2F§ = §§pop() + §§pop();
                                                                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr603);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr207);
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr187);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr207);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr208);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr666);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr506:
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            continue loop26;
                                                                                                                                                         }
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(this.§7!<§);
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1);
                                                                                                                                                            if(!(_loc4_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§]!Z§);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - 360);
                                                                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - this.§7!<§);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr547:
                                                                                                                                                                     §§pop().§2F§ = §§pop() + §§pop() / §§pop();
                                                                                                                                                                     addr546:
                                                                                                                                                                     §§goto(addr548);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param2);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr546);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr547);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr446);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr398:
                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr943);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr959);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr308);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr207);
                                                                                                                                          }
                                                                                                                                          §§goto(addr24);
                                                                                                                                          addr130:
                                                                                                                                       }
                                                                                                                                       §§goto(addr298);
                                                                                                                                    }
                                                                                                                                    §§goto(addr655);
                                                                                                                                 }
                                                                                                                                 while(_loc3_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       §§goto(addr574);
                                                                                                                                    }
                                                                                                                                    while(!§§pop())
                                                                                                                                    {
                                                                                                                                       §§goto(addr411);
                                                                                                                                       §§push(this.§]!Z§);
                                                                                                                                       if(!(_loc4_ && param2))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    §§goto(addr506);
                                                                                                                                    §§goto(addr435);
                                                                                                                                 }
                                                                                                                                 addr435:
                                                                                                                                 continue loop32;
                                                                                                                              }
                                                                                                                              addr903:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr904);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           if(!(_loc3_ || param2))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr130);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr497);
                                                                                                                           }
                                                                                                                           §§goto(addr574);
                                                                                                                        }
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr795);
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
                                                                                    while(true)
                                                                                    {
                                                                                       this.§4j§ = 0;
                                                                                    }
                                                                                    addr891:
                                                                                 }
                                                                                 §§goto(addr894);
                                                                              }
                                                                           }
                                                                           §§goto(addr866);
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr866);
                                                                  }
                                                                  §§goto(addr891);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr903);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr939);
                                       }
                                    }
                                    §§goto(addr938);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr357);
               §§push(180);
            }
         }
         §§goto(addr904);
      }
      
      public function get §]!k§() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!§[!o§)
            {
            }
         }
         return null;
      }
      
      public function §]!?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§-!o§);
            if(!_loc1_)
            {
               §§push(§4K§.§6r§);
               if(!_loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           §§pop();
                           addr54:
                           return this.§-!o§ == §4K§.§5-§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §^A§() : Boolean
      {
         return this.§-!o§ == §4K§.§8!J§;
      }
      
      public function §'!j§() : Boolean
      {
         return this.§-!o§ == §4K§.§,<§;
      }
      
      public function §1!b§() : Boolean
      {
         return this.§-!o§ == §4K§.§5-§;
      }
      
      public function §=C§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§-!o§ == §4K§.§9A§;
      }
      
      public function isGround() : Boolean
      {
         return this.§-!o§ == §4K§.§&!8§;
      }
      
      public function §,!y§() : Boolean
      {
         return this.§-!o§ == §4K§.§^!Q§;
      }
      
      public function §]q§() : Boolean
      {
         return this.§-!o§ == §4K§.§!!U§;
      }
      
      public function §-!?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§-!>§);
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr94:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  §§goto(addr95);
               }
            }
            addr93:
         }
         while(true)
         {
            §§push(this.§-!>§);
            if(!(_loc1_ && this))
            {
               §§push("POWERUP_BOMB");
               if(!(_loc1_ && this))
               {
                  §§goto(addr78);
                  §§push(§§pop() == §§pop());
               }
               else
               {
                  §§goto(addr94);
               }
               addr95:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 §§push(true);
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(_loc1_ && this)
                        {
                           break;
                        }
                        if(_loc2_ || this)
                        {
                           return §§pop();
                        }
                        addr78:
                        while(_loc1_)
                        {
                        }
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
               return §§pop();
            }
            §§goto(addr93);
            §§goto(addr94);
         }
      }
      
      public function §2b§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§^A§());
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§,!y§());
                              if(!_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                addr130:
                                                while(_loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§]q§());
                                                      if(!_loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                      if(!(_loc1_ || this))
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             addr129:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc2_)
                                             {
                                                if(_loc1_ || _loc2_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop2;
                                             }
                                             continue loop9;
                                          }
                                          addr37:
                                          return §§pop();
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr129);
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr126);
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
      
      public function §6!E§() : Number
      {
         return Number(Math.sqrt(this.§63§().GetLinearVelocity().x * this.§63§().GetLinearVelocity().x + this.§63§().GetLinearVelocity().y * this.§63§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!(_loc9_ && param1))
         {
            §§push(this.§'!j§());
            loop0:
            for(; !§§pop(); while(!(_loc9_ && param1))
            {
               §§goto(addr809);
            })
            {
               loop1:
               while(true)
               {
                  §§push(this.§>0§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§ h§());
                     loop3:
                     while(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§=!X§);
                           loop5:
                           while(true)
                           {
                              §§push(0);
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
                                       if(!§§pop())
                                       {
                                          loop13:
                                          while(!§§pop())
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop15:
                                                while(_loc10_ || param3)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§push(this.§=!X§);
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               while(_loc10_ || this)
                                                               {
                                                                  §§push(this.§=!X§);
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     while(!(_loc9_ && param3))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           param1 = §§pop();
                                                                           addr672:
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(param2);
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr631:
                                                                                                loop67:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      loop68:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ && param2)
                                                                                                         {
                                                                                                            break loop13;
                                                                                                         }
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            break loop3;
                                                                                                         }
                                                                                                         §§push(this.§2b§());
                                                                                                         loop69:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            addr596:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop23:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop24:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(int(Math.min(this.§0M§,int(param1))));
                                                                                                                        loop25:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           loop26:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§5G§.§'!4§.getValue());
                                                                                                                              if(_loc10_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * _loc7_);
                                                                                                                                 while(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr845);
                                                                                                                              }
                                                                                                                              loop28:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 loop29:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop68;
                                                                                                                                    }
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(param5);
                                                                                                                                       loop30:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             loop31:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §5G§.§ !T§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      addr46:
                                                                                                                                                      if(_loc9_ && param2)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr53);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(!(_loc9_ && param3))
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr124:
                                                                                                                                                      if(!(_loc10_ || param2))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc9_ && this)
                                                                                                                                                      {
                                                                                                                                                         continue loop24;
                                                                                                                                                      }
                                                                                                                                                      if(_loc10_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr145:
                                                                                                                                                         §§push(this.§0M§);
                                                                                                                                                         if(_loc10_ || param3)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ && param2)
                                                                                                                                                            {
                                                                                                                                                               loop47:
                                                                                                                                                               while(!(_loc9_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ && param2)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop5;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  loop48:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                     loop49:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc9_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop69;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc9_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    loop50:
                                                                                                                                                                                    while(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       loop51:
                                                                                                                                                                                       for(; !_loc9_; while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc10_ || param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr261);
                                                                                                                                                                                       },§§goto(addr441))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(this.§]!?§());
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop50;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc9_ && param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop49;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr298:
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr305:
                                                                                                                                                                                                   if(_loc10_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop30;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr465:
                                                                                                                                                                                                   loop38:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      addr466:
                                                                                                                                                                                                      while(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr801:
                                                                                                                                                                                                            loop40:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc10_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     while(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§<!;§);
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr749:
                                                                                                                                                                                                                     §§push(this.§0M§);
                                                                                                                                                                                                                     break loop15;
                                                                                                                                                                                                                     addr479:
                                                                                                                                                                                                                     addr773:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop3;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop67;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                               break loop50;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr801:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr405:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc10_ || param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop31;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr706:
                                                                                                                                                                                                                        §§push(Boolean(this.§]!?§()));
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop49;
                                                                                                                                                                                                                           §§goto(addr706);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr694:
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop51;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        return this.§0M§;
                                                                                                                                                                                                                        addr673:
                                                                                                                                                                                                                        addr748:
                                                                                                                                                                                                                        addr693:
                                                                                                                                                                                                                        addr707:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr824:
                                                                                                                                                                                                                        this.§'!S§(§6!D§.§84§);
                                                                                                                                                                                                                        §§goto(addr749);
                                                                                                                                                                                                                        addr828:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr406:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(this.§0M§);
                                                                                                                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - param1);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().§0M§ = §§pop();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr261:
                                                                                                                                                                                                                     if(!(_loc10_ || this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc9_ && param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§0M§ = 0;
                                                                                                                                                                                                                        loop61:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §!u§.§5F§(§6!D§.§84§,this.§,!;§.§9!M§,"ChannelDestroyed");
                                                                                                                                                                                                                           addr204:
                                                                                                                                                                                                                           while(_loc9_ && param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop61;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr102:
                                                                                                                                                                                                                                 this.§+!j§.setDamagedFrame();
                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr108:
                                                                                                                                                                                                                                    if(_loc9_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop57:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc10_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.addDamageParticles(this.§>0§.§#!U§.particles,param1);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc10_ || this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop51;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc9_ && this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr729:
                                                                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                                                                         break loop47;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr102);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr204);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr673);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                                                                             addr154:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr321:
                                                                                                                                                                                                                                             addr541:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(!(_loc9_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§0M§ = 1;
                                                                                                                                                                                                                                                while(_loc10_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§0M§);
                                                                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc9_ && param3)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr124);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr479);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr837:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr801);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop57;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(!(_loc9_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param5);
                                                                                                                                                                                                                                                if(_loc9_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop38;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                      continue loop38;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop7;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr836:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   §§goto(addr837);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr321);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr321:
                                                                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                                                                          §§goto(addr694);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr187:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr115);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr154);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break loop0;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr406);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr762:
                                                                                                                                                                                                                        if(_loc10_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§'!S§(§6!D§.§<j§);
                                                                                                                                                                                                                           §§goto(addr773);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr798:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr749);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr441:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop47;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop49;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop21;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr396);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr706);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr298);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                       §§push(this.§]!3§);
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§0M§ = §§pop();
                                                                                                                                                                                       §§goto(addr702);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr319:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr321);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr221);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr465);
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr466);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr405);
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop8;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr712:
                                                                                                                                                                           §§push(this.§0M§);
                                                                                                                                                                           addr685:
                                                                                                                                                                           §§push(this.§]!3§);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc10_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§'!S§(§6!D§.§<j§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr748);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr706);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr736:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr711:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr693);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§push(this.§=!X§);
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr734:
                                                                                                                                                                  §§push(§§pop() / 2);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr736);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr46);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr224);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr828);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                             continue loop28;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§>0§);
                                                                                                                                             if(!(_loc10_ || param3))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop().§#!U§);
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             §§push(§-!8§.§6!K§);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§0M§ > param1);
                                                                                                                                                if(!(_loc9_ && this))
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr518:
                                                                                                                                                         §§pop();
                                                                                                                                                         §§push(param3);
                                                                                                                                                         if(_loc10_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§63§().GetPosition().x,this.§63§().GetPosition().y,§>p§.§?`§(this.§-!>§));
                                                                                                                                                   §§goto(addr541);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr518);
                                                                                                                                          }
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr712);
                                                                                                                                 }
                                                                                                                                 continue loop68;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr442);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr801);
                                                                                                }
                                                                                                addr631:
                                                                                             }
                                                                                             §§goto(addr596);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr631);
                                                                                    }
                                                                                    §§goto(addr707);
                                                                                 }
                                                                                 §§goto(addr711);
                                                                              }
                                                                              §§goto(addr631);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr812:
                                                                     §§goto(addr823);
                                                                     §§push(30);
                                                                  }
                                                                  §§goto(addr685);
                                                               }
                                                               continue loop15;
                                                            }
                                                         }
                                                         §§goto(addr729);
                                                      }
                                                      §§goto(addr734);
                                                   }
                                                   §§goto(addr758);
                                                }
                                                return §§pop();
                                             }
                                          }
                                          §§goto(addr812);
                                          §§push(param1);
                                          addr809:
                                       }
                                       §§goto(addr836);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr845:
                     return §§pop();
                  }
               }
            }
            §§goto(addr852);
            §§push(this.§0M§);
         }
         §§goto(addr672);
      }
      
      public function §'!S§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §!u§.§5F§(param1,this.§,!;§.§9!M§);
         }
      }
      
      public function §%v§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§,!;§.material.§3G§(param1));
         if(!_loc3_)
         {
            return §§pop() * this.§,z§;
         }
      }
      
      public function §-!K§(param1:String) : Number
      {
         return this.§,!;§.material.§%!+§(param1);
      }
      
      public function §#7§() : String
      {
         return this.§,!;§.material.mName;
      }
      
      public function §`&§() : Number
      {
         return this.§,!;§.§2!H§();
      }
      
      public function § !0§() : int
      {
         return this.§,!;§.§>x§();
      }
      
      public function §&V§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!_loc3_)
         {
            §§push(this.§63§().IsAwake());
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
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§]!?§());
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(_loc2_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr203:
                                             while(true)
                                             {
                                                §§push(this.§0M§ == this.§]!3§);
                                             }
                                          }
                                          addr202:
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop18:
                                                               while(!(_loc3_ && this))
                                                               {
                                                                  §§push(Math.abs(this.§63§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                  if(_loc2_)
                                                                  {
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr50);
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        continue loop11;
                                                                        addr75:
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        if(!(_loc2_ || this))
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§pop();
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        addr106:
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           if(!(_loc2_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr188:
                                                                        while(true)
                                                                        {
                                                                           §§push(Math.abs(this.§63§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                           §§goto(addr106);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           if(!(_loc2_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        addr168:
                                                                        while(!_loc3_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         §§goto(addr75);
                                                      }
                                                   }
                                                }
                                                §§goto(addr168);
                                             }
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     addr50:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr203);
      }
      
      public function §,1§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§63§().IsAwake());
            if(_loc1_)
            {
               if(!§§pop())
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
                     addr45:
                     §§push(this.§""#§());
                     if(_loc1_ || _loc1_)
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
         §§goto(addr45);
      }
      
      protected function §""#§() : Boolean
      {
         return this.§1!7§.§""#§();
      }
      
      public function §7N§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,z§ = param1;
         }
         do
         {
            if(this.§,z§ > 1)
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§push(this.§+!j§);
            }
            else
            {
               §§push(this.§+!j§);
               if(!(_loc2_ && this))
               {
                  §§pop().§2!G§ = null;
                  if(_loc3_ || this)
                  {
                     §§goto(addr20);
                  }
                  continue;
               }
            }
            §§pop().§[5§();
         }
         while(!(_loc3_ || _loc3_));
         
         addr20:
      }
      
      public function §^!e§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§,!;§.§4!a§());
            loop0:
            while(true)
            {
               if(§§pop() != § L§.§@8§)
               {
                  §§push(this.§63§().GetMass());
                  if(_loc4_ || _loc2_)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§]""§.§1!v§());
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr189:
                           loop15:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop14:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop10:
                                 while(_loc4_ || param1)
                                 {
                                    if(param1)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(_loc2_);
                                          while(true)
                                          {
                                             §§push(this.§<!@§());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                for(; _loc4_; continue loop12)
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr167:
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               addr56:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!(_loc4_ || _loc2_))
                                                                  {
                                                                     addr141:
                                                                     addr148:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  addr141:
                                                                  §§goto(addr28);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr224);
                                                               }
                                                            }
                                                            addr169:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§+!j§.mW);
                                                               break loop7;
                                                            }
                                                            addr215:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr221);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr229:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      break loop10;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr56);
                                 }
                                 while(true)
                                 {
                                    addr28:
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop7;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(this.§?z§);
                                          if(!_loc3_)
                                          {
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop12;
                                             }
                                             if(!_loc3_)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§push(this.§?z§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr123:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc3_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr132:
                                                         §§push(§§pop() / §§pop());
                                                         continue loop6;
                                                      }
                                                      addr224:
                                                      while(true)
                                                      {
                                                         §§push(§5G§.§6+§);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      break loop13;
                                                   }
                                                   addr221:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                break loop5;
                                             }
                                          }
                                          §§goto(addr123);
                                       }
                                       break loop13;
                                    }
                                    continue loop11;
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   break;
                                                }
                                                continue loop15;
                                             }
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       §§goto(addr141);
                                       §§goto(addr148);
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr229);
                  }
                  §§goto(addr189);
               }
               §§goto(addr215);
            }
         }
         §§goto(addr169);
      }
      
      public function §<!@§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(_loc2_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(_loc1_);
               if(!(_loc3_ && this))
               {
                  §§push(2);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc3_ && _loc1_)
                     {
                     }
                     §§goto(addr75);
                  }
                  §§push(§§pop() / §§pop());
               }
               addr75:
               §§push(§§pop() * Math.min(10,this.§+!j§.§-!+§ - 1));
               if(!_loc3_)
               {
                  §§push(10);
               }
               §§push(§§pop() - §§pop());
               if(_loc2_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                     addr81:
                     _loc1_ = §§pop();
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function § !H§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§63§().GetLinearVelocity().x);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§63§().GetLinearVelocity().y);
         if(!(_loc6_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(_loc7_ || param1)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(_loc7_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_ || param1)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(_loc5_);
               addr149:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr159:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || this)
                        {
                           continue loop2;
                        }
                        addr145:
                        _loc3_ = §§pop();
                     }
                  }
               }
               if(_loc6_)
               {
                  continue;
               }
               §§push(_loc5_);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr145);
               }
               §§goto(addr149);
            }
         }
         while(true)
         {
            this.§63§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
            if(_loc6_)
            {
               continue;
            }
            if(!_loc6_)
            {
               break;
            }
            §§goto(addr159);
         }
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§=!%§) : void
      {
      }
      
      public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §=!7§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = this.§63§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!_loc5_)
         {
            §§push(param2.x * param1);
            if(!(_loc5_ && param2))
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
            if(_loc6_ || param1)
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
               this.§63§().§22§(_loc4_);
            }
            while(!_loc6_);
            
         }
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  §§push(this.§3C§());
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        loop2:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(360);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    §§push(360);
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                    }
                                    addr264:
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr266:
                                    loop7:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                          loop9:
                                          for(; _loc6_; while(true)
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                §§push(param1);
                                                if(!_loc7_)
                                                {
                                                   addr219:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      _loc5_ = §§pop();
                                                      §§goto(addr225);
                                                   }
                                                   addr292:
                                                   var _loc3_:* = §§pop();
                                                   if(_loc6_)
                                                   {
                                                      §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc3_ = §§pop();
                                                      do
                                                      {
                                                         this.§4I§(_loc3_);
                                                      }
                                                      while(!_loc6_);
                                                      
                                                   }
                                                   return;
                                                   §§push(§§pop() % §§pop());
                                                }
                                                break;
                                             }
                                             continue loop9;
                                          },§§goto(addr288))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc6_)
                                             {
                                                _loc4_ = §§pop();
                                                loop10:
                                                while(!_loc7_)
                                                {
                                                   §§push(Number(0));
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc7_ && param2)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                           continue loop2;
                                                                        }
                                                                        addr174:
                                                                        addr174:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr175:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc6_ || param2))
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    addr47:
                                                                                    while(true)
                                                                                    {
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§4I§(_loc4_);
                                                                                          if(_loc7_ && param2)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                             continue loop12;
                                                                                             addr117:
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop26;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr154:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc6_ || _loc3_))
                                                                                                {
                                                                                                   break loop21;
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                             addr225:
                                                                                             while(!_loc7_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                       }
                                                                                       addr288:
                                                                                       §§push(§§pop() + param1);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr291:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           §§goto(addr219);
                                                                        }
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  continue loop9;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr264);
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                continue loop8;
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
                     §§goto(addr291);
                  }
               }
            }
            §§push(this.§3C§());
            if(!(_loc7_ && this))
            {
               §§goto(addr288);
            }
            §§goto(addr291);
         }
         §§goto(addr193);
      }
      
      public function §@!v§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§=!P§(this.§63§().GetAngle()));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(360);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc3_ && this))
                     {
                        addr114:
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() - §§pop());
                     loop1:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(§[!R§(_loc2_));
                              if(_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       this.§63§().§?!=§(_loc2_);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    return;
                                    addr92:
                                 }
                                 break;
                              }
                              addr79:
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr92);
      }
      
      public function §42§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || param1)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§63§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!(_loc14_ && _loc3_))
         {
            §§push(§§pop() - param2.x);
            if(!(_loc14_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc15_ || param2)
         {
            §§push(§§pop() - param2.y);
            if(!(_loc14_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!(_loc14_ && param1))
         {
            §§push(_loc4_);
            if(_loc15_)
            {
               §§push(0);
               if(!_loc14_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc14_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc15_ || param1)
                        {
                           §§pop();
                           if(!_loc14_)
                           {
                              §§push(_loc5_);
                              if(_loc15_ || _loc3_)
                              {
                                 addr118:
                                 if(§§pop() == 0)
                                 {
                                    if(!(_loc15_ || param2))
                                    {
                                       addr147:
                                       var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                                       addr127:
                                       §§push(_loc4_);
                                       if(_loc15_ || param2)
                                       {
                                          §§push(§§pop() / _loc5_);
                                          if(!_loc14_)
                                          {
                                             addr160:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(Math.atan(_loc7_) * 180);
                                          if(!(_loc14_ && this))
                                          {
                                             §§push(§§pop() / Math.PI);
                                             if(!_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc8_:* = §§pop();
                                          if(_loc15_ || param1)
                                          {
                                             §§push(_loc5_);
                                             if(_loc15_)
                                             {
                                                §§push(0);
                                                if(_loc15_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc15_ || param2)
                                                      {
                                                         addr202:
                                                         §§push(_loc8_);
                                                         if(_loc15_ || _loc3_)
                                                         {
                                                            §§goto(addr211);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   §§goto(addr218);
                                                }
                                                addr211:
                                                §§push(§§pop() + 180);
                                                if(_loc15_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc14_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      addr218:
                                                      §§push(_loc8_);
                                                      if(_loc15_)
                                                      {
                                                         §§goto(addr221);
                                                      }
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr221);
                                             }
                                             addr221:
                                             §§push(param1);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc15_)
                                                {
                                                   addr228:
                                                   §§push(Number(§§pop()));
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr228);
                                             }
                                             var _loc9_:* = §§pop();
                                             if(!(_loc14_ && param1))
                                             {
                                                §§push(§§pop() * Math.PI);
                                                if(!_loc14_)
                                                {
                                                   §§push(§§pop() / 180);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
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
                                             if(!_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc12_:* = §§pop();
                                             var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                             if(_loc15_ || param2)
                                             {
                                                this.§63§().§22§(_loc13_);
                                             }
                                             return;
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr160);
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr147);
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr118);
            }
         }
         §§goto(addr147);
      }
   }
}
