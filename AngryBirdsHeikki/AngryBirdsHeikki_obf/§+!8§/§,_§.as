package §+!8§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§ !;§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2Body;
   import §3!R§.b2BodyDef;
   import §3!R§.b2FilterData;
   import §3!R§.b2Fixture;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   import §7q§.b2PolygonShape;
   import §@0§.§ $§;
   import §@0§.§!k§;
   import §@0§.§3U§;
   import §@0§.§56§;
   import §@0§.§`>§;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import §^P§.b2Settings;
   import flash.geom.Point;
   
   public class §,_§
   {
      
      public static const §2P§:uint;
      
      public static const §2!<§:uint;
      
      public static const §[!B§:uint;
      
      public static const §]! §:uint;
      
      public static const §6!b§:Boolean = true;
      
      public static const §^2§:Number = 5;
      
      public static const §?n§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§§findproperty(§2P§));
            §§push(1);
            if(_loc2_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§2P§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§2!<§));
               §§push(1);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§2!<§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(§§findproperty(§[!B§));
                  §§push(1);
                  if(_loc2_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§[!B§ = §§pop();
                  while(true)
                  {
                     §§push(§§findproperty(§]! §));
                     §§push(1);
                     if(_loc2_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§]! § = §§pop();
                     addr42:
                     while(!(_loc1_ && §,_§))
                     {
                        §?n§ = 10;
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              return;
                           }
                           loop4:
                           while(true)
                           {
                              if(!(_loc1_ && §,_§))
                              {
                                 continue loop1;
                              }
                              addr89:
                              while(true)
                              {
                                 §6!b§ = true;
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      private var §7!+§:String;
      
      private var §=!N§:int;
      
      private var §'R§:int;
      
      public var §>R§:String;
      
      public var §7!?§:int;
      
      private var §0!b§:§ $§;
      
      private var §6!"§:§-!N§;
      
      private var mWorld:b2World;
      
      protected var §<b§:String = "";
      
      protected var §"$§:int = 1;
      
      private var §!8§:b2Fixture;
      
      private var §?'§:b2Body;
      
      private var §?-§:b2Vec2;
      
      public var §[h§:Number;
      
      public var §'!V§:Number;
      
      private var §[!$§:Number;
      
      private var §9!-§:Boolean = false;
      
      private var §4d§:Number;
      
      private var §>d§:Number;
      
      private var §5D§:Number;
      
      private var §'!_§:Number;
      
      private var §@!2§:Number;
      
      private var §finally§:Number;
      
      public var §^!O§:Number = 1;
      
      private var §?^§:Boolean = false;
      
      public var §=H§:Number = 0;
      
      public var §]g§:Number = 0;
      
      protected var §"!^§:Boolean = false;
      
      public var §[r§:§&!_§;
      
      private var §;=§:Sprite;
      
      private var §"!d§:Number = 0;
      
      private var §,!W§:Number = 0;
      
      private var §^Y§:Number = 0;
      
      private var get:Number = 1.0;
      
      private var §class§:Boolean = false;
      
      protected var §!w§:§^w§;
      
      private var §2E§:Boolean = true;
      
      public function §,_§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc16_ && param1))
         {
            super();
            while(true)
            {
               this.§>R§ = param6;
               loop1:
               for(; _loc17_; if(_loc16_ && param2)
               {
                  continue;
               },§§goto(addr70))
               {
                  this.§0!b§ = §`>§.§<!>§(param6);
                  loop2:
                  while(true)
                  {
                     this.§6!"§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§;=§ = param2;
                        loop4:
                        while(true)
                        {
                           this.get = param10;
                           addr142:
                           if(_loc16_ && param1)
                           {
                              continue;
                           }
                           §§push(this.§[r§);
                           if(!(_loc16_ && this))
                           {
                              if(!§§pop().§`!3§(param1.§=!V§.§?!O§))
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(!(_loc16_ && param3))
                                    {
                                       if(_loc17_)
                                       {
                                          addr95:
                                          if(!(_loc17_ || this))
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       addr207:
                                       addr171:
                                       while(_loc17_ || param3)
                                       {
                                          this.§!w§ = new §^w§(§^2§,§?n§);
                                       }
                                       while(true)
                                       {
                                          this.§class§ = param11;
                                          break loop12;
                                          §§goto(addr171);
                                       }
                                       addr171:
                                    }
                                    addr157:
                                    addr190:
                                    while(!(_loc16_ && param3))
                                    {
                                       this.§[r§ = new §&!_§(this,param2,param4);
                                       while(true)
                                       {
                                          if(!_loc16_)
                                          {
                                             §§goto(addr142);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§'R§ = this.§0!b§.§2!N§();
                                                §§goto(addr171);
                                             }
                                             addr185:
                                          }
                                       }
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       this.§7!?§ = this.§0!b§.§7!?§;
                                       §§goto(addr185);
                                       §§goto(addr157);
                                    }
                                 }
                                 continue loop3;
                                 addr86:
                              }
                              loop13:
                              while(true)
                              {
                                 §§push(this.§[r§);
                                 if(_loc17_ || param1)
                                 {
                                    §§push(this.§'R§);
                                    if(!(_loc16_ && this))
                                    {
                                       §§pop().§9p§(§§pop() == §3U§.§=P§);
                                       do
                                       {
                                          if(_loc17_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr86);
                                          this.mWorld = param3;
                                       }
                                       while(!_loc17_);
                                       
                                       if(_loc17_)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                                          if(!_loc16_)
                                          {
                                             this.§?'§ = this.mWorld.§#m§(_loc12_);
                                             if(_loc17_ || this)
                                             {
                                                this.§?'§.§-N§(this);
                                                if(!_loc16_)
                                                {
                                                   §§push(this.§'R§);
                                                   if(!(_loc16_ && param2))
                                                   {
                                                      §§push(§3U§.§1!7§);
                                                      if(!_loc16_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               §§push(b2PolygonShape);
                                                               §§push(this.§0!b§.shape.§@!-§);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(param10);
                                                                  if(_loc17_ || param2)
                                                                  {
                                                                     addr294:
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(this.§0!b§.shape.§3S§);
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        addr305:
                                                                        §§push(§§pop() * param10);
                                                                     }
                                                                     _loc14_ = §§pop().§4Y§(§§pop(),§§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        this.§!8§ = this.§?'§.CreateFixture2(_loc14_,this.§0!b§.§try§());
                                                                        if(_loc17_ || param2)
                                                                        {
                                                                           addr388:
                                                                           §§push(this.§!8§);
                                                                           if(_loc17_)
                                                                           {
                                                                              §§push(this.§0!b§);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 §§push(§§pop().§'B§());
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§pop().§@9§(§§pop());
                                                                                    addr408:
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr406:
                                                                                       §§push(this.§!8§);
                                                                                       §§push(this.§0!b§.§]E§());
                                                                                    }
                                                                                    var _loc13_:b2FilterData = new b2FilterData();
                                                                                    if(!(_loc16_ && param1))
                                                                                    {
                                                                                       §§push(this.§`P§());
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             addr524:
                                                                                             §§push(this.§>R§.toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(this.§>R§);
                                                                                                         if(_loc16_ && param3)
                                                                                                         {
                                                                                                            §§goto(addr524);
                                                                                                         }
                                                                                                         §§push(§§pop().toUpperCase() == "MISC_FOOD_EGG");
                                                                                                         if(_loc17_ || param1)
                                                                                                         {
                                                                                                            addr485:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc17_ || this)
                                                                                                               {
                                                                                                                  _loc13_.§]!&§ = §2!<§;
                                                                                                                  if(_loc17_ || param3)
                                                                                                                  {
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        if(!(_loc16_ && param3))
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           §§push(65535);
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() & ~§2P§);
                                                                                                                           }
                                                                                                                           §§pop().§+Q§ = §§pop();
                                                                                                                           if(_loc17_ || param2)
                                                                                                                           {
                                                                                                                              addr435:
                                                                                                                              this.§!8§.§8a§(_loc13_);
                                                                                                                              if(_loc17_ || param2)
                                                                                                                              {
                                                                                                                                 this.§[!$§ = this.§0!b§.§,!U§();
                                                                                                                                 if(!(_loc16_ && param2))
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr435);
                                                                                                                                    }
                                                                                                                                    §§push(this.§0!b§);
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§'!V§);
                                                                                                                                       if(!(_loc16_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc17_)
                                                                                                                                                {
                                                                                                                                                   addr576:
                                                                                                                                                   this.§[h§ = this.§'!V§ = this.§0!b§.§'!V§;
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      addr744:
                                                                                                                                                      if(this.§0!b§.§7!?§ != § $§.§[!W§)
                                                                                                                                                      {
                                                                                                                                                         addr742:
                                                                                                                                                         this.§[r§.setDamagedFrame();
                                                                                                                                                         addr717:
                                                                                                                                                         addr743:
                                                                                                                                                         if(this.isTexture())
                                                                                                                                                         {
                                                                                                                                                            addr721:
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               addr723:
                                                                                                                                                               addr725:
                                                                                                                                                               addr724:
                                                                                                                                                               if(param9 != 0)
                                                                                                                                                               {
                                                                                                                                                                  addr726:
                                                                                                                                                                  if(!(_loc16_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr733:
                                                                                                                                                                     this.§`X§(param9);
                                                                                                                                                                     addr736:
                                                                                                                                                                  }
                                                                                                                                                                  addr760:
                                                                                                                                                                  this.§;=§.visible = false;
                                                                                                                                                                  §§goto(addr717);
                                                                                                                                                                  addr764:
                                                                                                                                                               }
                                                                                                                                                               this.§4!2§();
                                                                                                                                                               addr702:
                                                                                                                                                               if(!(_loc16_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc16_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     this.§&!G§(0,1);
                                                                                                                                                                     addr677:
                                                                                                                                                                     if(_loc17_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc17_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc16_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              addr698:
                                                                                                                                                                              §§push(this.§[r§);
                                                                                                                                                                              if(!(_loc16_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().§3!^§(this.§0!b§.shape);
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr677);
                                                                                                                                                                                 }
                                                                                                                                                                                 return;
                                                                                                                                                                                 addr671:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr742);
                                                                                                                                                                              addr698:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr764);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr721);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr702);
                                                                                                                                                                     addr716:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr726);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr736);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr743);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr723);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr760);
                                                                                                                                                      addr589:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr742);
                                                                                                                                                }
                                                                                                                                                §§goto(addr698);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                this.§[h§ = this.§'!V§ = Math.round(this.§[x§(true) * this.§0!b§.§=W§());
                                                                                                                                                if(!(_loc16_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§[h§);
                                                                                                                                                   if(!(_loc16_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(1);
                                                                                                                                                      if(!(_loc16_ && param2))
                                                                                                                                                      {
                                                                                                                                                         addr631:
                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               addr634:
                                                                                                                                                               this.§[h§ = this.§'!V§ = 1;
                                                                                                                                                               if(_loc17_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr650:
                                                                                                                                                                  §§goto(addr744);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr733);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr671);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr744);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr725);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr724);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr716);
                                                                                                                                          }
                                                                                                                                          §§goto(addr631);
                                                                                                                                       }
                                                                                                                                       §§goto(addr723);
                                                                                                                                    }
                                                                                                                                    §§goto(addr744);
                                                                                                                                 }
                                                                                                                                 §§goto(addr698);
                                                                                                                              }
                                                                                                                              §§goto(addr650);
                                                                                                                           }
                                                                                                                           §§goto(addr742);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr552:
                                                                                                                           _loc13_.§]!&§ = §2P§;
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              §§push(_loc13_);
                                                                                                                              §§push(65535);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() & ~§2!<§);
                                                                                                                              }
                                                                                                                              §§pop().§+Q§ = §§pop();
                                                                                                                              §§goto(addr435);
                                                                                                                              addr546:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr634);
                                                                                                                     }
                                                                                                                     §§goto(addr546);
                                                                                                                  }
                                                                                                                  §§goto(addr723);
                                                                                                               }
                                                                                                               §§goto(addr576);
                                                                                                            }
                                                                                                            §§goto(addr435);
                                                                                                         }
                                                                                                         §§goto(addr742);
                                                                                                      }
                                                                                                      §§goto(addr698);
                                                                                                   }
                                                                                                   §§goto(addr742);
                                                                                                }
                                                                                                §§goto(addr485);
                                                                                             }
                                                                                             §§goto(addr742);
                                                                                          }
                                                                                          §§goto(addr552);
                                                                                       }
                                                                                       §§goto(addr742);
                                                                                    }
                                                                                    §§goto(addr589);
                                                                                 }
                                                                                 §§pop().§>!X§(§§pop());
                                                                                 §§goto(addr408);
                                                                              }
                                                                           }
                                                                           §§goto(addr406);
                                                                           addr328:
                                                                        }
                                                                        §§goto(addr408);
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§'R§);
                                                            if(_loc17_)
                                                            {
                                                               §§push(§3U§.§=P§);
                                                               if(_loc17_ || this)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!(_loc16_ && param3))
                                                                        {
                                                                           addr354:
                                                                           §§pop();
                                                                           if(_loc17_)
                                                                           {
                                                                              addr362:
                                                                              if(this.§'R§ == §3U§.§?t§)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           this.§!8§ = this.§?'§.CreateFixture2(this.§0!b§.shape.§7!O§(param10),this.§0!b§.§try§());
                                                                           §§goto(addr388);
                                                                        }
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                                  §§goto(addr354);
                                                               }
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr362);
                                             }
                                          }
                                          §§goto(addr388);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!_loc17_)
                                             {
                                                break loop13;
                                             }
                                             continue loop13;
                                          }
                                          addr129:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().§0>§(§§pop(),this.§0!b§.§2!1§(),this.§0!b§.§9"§() / §^!2§.§3!S§,this.§0!b§.§2!&§() / §^!2§.§3!S§);
                                       §§goto(addr129);
                                    }
                                    addr113:
                                 }
                              }
                              §§goto(addr140);
                           }
                           while(true)
                           {
                              §§goto(addr113);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr207);
      }
      
      public static function §>!C§(param1:int, param2:§!k§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param2 == null)
            {
               if(_loc6_ || param3)
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§?J§[param1]);
         if(_loc6_ || §,_§)
         {
            if(§§pop().length > 0)
            {
               if(!_loc5_)
               {
                  §§push(param3);
                  if(_loc6_)
                  {
                     if(§§pop().length <= 0)
                     {
                     }
                     §§goto(addr90);
                  }
                  param3 = §§pop();
                  if(_loc5_)
                  {
                  }
               }
               §§goto(addr90);
            }
            addr90:
            if(_loc6_ || param2)
            {
               §§push(param2.§?6§);
               if(_loc6_)
               {
                  addr86:
                  §§push(§§pop());
               }
            }
            §&M§.§<!_§(_loc4_,param3);
            return;
         }
         §§goto(addr86);
      }
      
      public static function §,O§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc2_)
         {
            §§push(180);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr53);
               }
               §§push(360);
            }
            §§push(§§pop() % §§pop());
         }
         addr53:
         §§push(§§pop() - §§pop());
         if(!(_loc3_ && _loc2_))
         {
            return §§pop() % 360;
         }
      }
      
      public static function §3!]§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(!_loc3_)
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
         return this.§;=§;
      }
      
      public function get x() : Number
      {
         return this.§"!d§;
      }
      
      public function get y() : Number
      {
         return this.§,!W§;
      }
      
      public function get scale() : Number
      {
         return this.get;
      }
      
      public function get front() : Boolean
      {
         return this.§class§;
      }
      
      public function get §!!A§() : Number
      {
         return this.§?'§.GetPosition().x;
      }
      
      public function get §"#§() : Number
      {
         return this.§?'§.GetPosition().y;
      }
      
      public function get §-h§() : § $§
      {
         return this.§0!b§;
      }
      
      public function get §4>§() : Boolean
      {
         return this.§[!$§ >= 0;
      }
      
      public function get container() : §-!N§
      {
         return this.§6!"§;
      }
      
      public function get §`!J§() : Boolean
      {
         return this.§2E§;
      }
      
      public function set §`!J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§2E§ = param1;
         }
      }
      
      public function set §[!A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9!-§ = param1;
         }
      }
      
      public function set §!!>§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§!w§.§!!>§ = param1;
         }
      }
      
      public function get §!!>§() : uint
      {
         return this.§!w§.§!!>§;
      }
      
      public function get §0!>§() : Boolean
      {
         return this.§?^§;
      }
      
      public function set §0!>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?^§ = param1;
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
         return this.§7!+§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7!+§ = param1;
         }
      }
      
      public function §5!G§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§!8§);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().§8a§(param1);
         }
         addr55:
         if(!(_loc2_ && this))
         {
            §§push(this.§!8§);
         }
      }
      
      protected function §9Z§(param1:String) : int
      {
         return §!U§.§9Z§(param1);
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
               addr123:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr94);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mWorld);
            if(_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr128:
                     while(true)
                     {
                        §§pop().§3![§(this.§0c§());
                        addr131:
                        while(true)
                        {
                           this.mWorld = null;
                           addr110:
                           while(true)
                           {
                           }
                        }
                     }
                     loop12:
                     while(true)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           continue loop0;
                        }
                        addr88:
                        loop7:
                        while(true)
                        {
                           this.§!8§ = null;
                           loop8:
                           while(true)
                           {
                              if(_loc1_ || this)
                              {
                                 this.§?-§ = null;
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc2_ && this)
                                             {
                                                break loop12;
                                             }
                                             continue;
                                          }
                                          §§goto(addr110);
                                       }
                                       break loop8;
                                    }
                                    continue loop8;
                                 }
                                 continue loop12;
                              }
                              addr95:
                              while(true)
                              {
                                 §§push(this.§;=§);
                                 addr97:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    break loop8;
                                 }
                                 continue loop8;
                              }
                           }
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 break loop7;
                              }
                              this.§;=§ = null;
                              continue loop12;
                           }
                           §§goto(addr88);
                        }
                        while(true)
                        {
                           §§push(this.§;=§);
                           if(!_loc2_)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr65);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr97);
                        }
                        addr65:
                     }
                     §§goto(addr131);
                  }
               }
               while(true)
               {
                  this.§[r§.dispose();
                  §§goto(addr105);
                  §§goto(addr110);
               }
            }
            §§goto(addr128);
         }
         §§goto(addr88);
      }
      
      public function §`X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§0c§());
            §§push(360);
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(_loc2_ || param1)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§7&§(§§pop());
         }
      }
      
      public function §4!W§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§0c§().GetAngle());
         if(_loc2_)
         {
            §§push(180);
            if(!_loc1_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_)
                  {
                     addr59:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc1_)
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §[!8§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§0c§().SetLinearVelocity(param1);
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
                     this.§+%§();
                     addr80:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               if(!(_loc5_ || this))
               {
                  continue;
               }
               this.§!c§();
               §§goto(addr57);
            }
         }
         §§goto(addr64);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§!8§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§0c§());
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
                                    addr183:
                                    loop17:
                                    while(true)
                                    {
                                       §§push(this.§0c§());
                                       addr141:
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          addr142:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr143:
                                             while(true)
                                             {
                                                §§push(param4);
                                                addr144:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   addr145:
                                                   while(_loc6_ || param3)
                                                   {
                                                   }
                                                   continue loop17;
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
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          loop10:
                                          while(_loc6_ || param3)
                                          {
                                             §§push(this.§0c§());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop().GetPosition());
                                                addr63:
                                                while(!(_loc5_ && this))
                                                {
                                                   if(_loc5_ && this)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop().y);
                                                   while(_loc6_ || param1)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(param1);
                                                      while(_loc6_)
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         if(_loc6_ || param1)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc6_ || param1))
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr55);
                                                               }
                                                            }
                                                            continue loop8;
                                                            addr108:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ || this))
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               addr40:
                                                               continue loop9;
                                                               if(!(_loc6_ || param3))
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               continue loop10;
                                                               if(_loc5_ && param1)
                                                               {
                                                                  continue loop4;
                                                               }
                                                            }
                                                            continue loop11;
                                                            addr55:
                                                            return §§pop();
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr142);
                                             }
                                          }
                                          §§goto(addr183);
                                       }
                                    }
                                    §§goto(addr108);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      public function §"!7§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§?-§ = param1;
         }
      }
      
      public function §0j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§?-§)
            {
               do
               {
                  this.§[!8§(this.§?-§,false);
                  do
                  {
                     this.§?-§ = null;
                  }
                  while(!(_loc1_ || this));
                  
               }
               while(_loc2_);
               
               addr65:
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §+%§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               if(_loc3_)
               {
                  addr28:
                  §§push(this.§0c§());
                  if(!(_loc2_ && param1))
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr40:
                     §§push(param1.x);
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc2_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§pop();
                                    §§goto(addr83);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 addr128:
                                 this.§0c§().§"l§(0);
                              }
                              addr130:
                              addr83:
                              if(!(_loc2_ && this))
                              {
                                 addr122:
                                 §§push(param1.y == 0);
                              }
                              return;
                              addr130:
                           }
                           else
                           {
                              §§push(this.§0c§());
                              if(!_loc2_)
                              {
                                 addr94:
                                 §§pop().§"l§(Math.atan2(param1.x,param1.y));
                                 if(!(_loc2_ && this))
                                 {
                                    §§goto(addr83);
                                 }
                                 else
                                 {
                                    §§goto(addr130);
                                 }
                              }
                              else
                              {
                                 §§goto(addr128);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr94);
               }
               §§goto(addr83);
            }
            §§goto(addr40);
         }
         §§goto(addr28);
      }
      
      public function §!c§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               param1 = this.§0c§().GetLinearVelocity();
               addr25:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               this.§`X§(_loc2_);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §+X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§0c§().§"l§(param1);
         }
      }
      
      public function §0c§() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§!8§);
            if(_loc1_ || this)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     §§goto(addr53);
                  }
               }
               return null;
            }
            §§goto(addr53);
         }
         addr53:
         return this.§!8§.GetBody();
      }
      
      public function § !@§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(param1 != -9999)
            {
               loop6:
               while(true)
               {
                  this.§"!d§ = param1;
                  while(true)
                  {
                     this.§,!W§ = param2;
                     addr105:
                     while(!(_loc4_ && param2))
                     {
                        continue loop6;
                     }
                  }
               }
               addr133:
            }
            while(true)
            {
               §§push(this.§0c§());
               loop1:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  loop2:
                  while(true)
                  {
                     §§push(this.§"!d§);
                     if(_loc3_ || param2)
                     {
                        §§push(§^!2§.§3!S§);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                        }
                        addr98:
                     }
                     while(true)
                     {
                        §§pop().x = §§pop();
                        while(true)
                        {
                           §§push(this.§0c§());
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                           §§push(§§pop().GetPosition());
                           if(_loc4_)
                           {
                              continue loop2;
                           }
                           §§push(this.§,!W§);
                           if(_loc3_ || param2)
                           {
                              §§push(§^!2§.§3!S§);
                              if(_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                              else
                              {
                                 §§goto(addr98);
                              }
                           }
                           if(!(_loc3_ || param2))
                           {
                              break;
                           }
                           §§pop().y = §§pop();
                           if(_loc4_ && param2)
                           {
                              continue;
                           }
                           if(_loc3_ || this)
                           {
                              return;
                           }
                           §§goto(addr105);
                        }
                     }
                  }
               }
               §§goto(addr129);
            }
         }
         §§goto(addr133);
      }
      
      public function §&!G§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(!(_loc5_ && param2))
         {
            §§push(this.§"!^§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr466:
                  while(true)
                  {
                     §§push(true);
                     addr467:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr468:
                        while(true)
                        {
                           this.§"!^§ = false;
                           addr462:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr466:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(true);
                           addr446:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr447:
                              while(true)
                              {
                              }
                           }
                        }
                        addr445:
                     }
                     while(true)
                     {
                        §§push(this.updateFlyingFrameAnimations(param2));
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(true);
                                 loop9:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    loop10:
                                    while(!(_loc5_ && param2))
                                    {
                                       while(true)
                                       {
                                          §§push(this.updateScreamingFrameAnimations(param2));
                                          loop12:
                                          while(!_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(true);
                                                      while(_loc6_ || _loc3_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop2;
                                                      addr416:
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop9;
                                                addr413:
                                             }
                                             loop16:
                                             while(true)
                                             {
                                                §§push(this.updateBlinkingFrameAnimations(param2));
                                                if(!(_loc5_ && param2))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(_loc6_)
                                                      {
                                                         §§push(true);
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr405:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr129:
                                                         if(!(_loc6_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr143:
                                                            §§push(this.§;=§);
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§push(this.§^Y§);
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     §§push(§§pop() / 180);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§push(§§pop() * Math.PI);
                                                                     }
                                                                  }
                                                                  §§pop().rotation = §§pop();
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     addr74:
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        addr81:
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           addr88:
                                                                           if(!(_loc6_ || this))
                                                                           {
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§[r§);
                                                                                 loop28:
                                                                                 for(; !_loc5_; if(!(_loc6_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 },§§pop().§super§(param2),§§goto(addr263))
                                                                                 {
                                                                                    §§push(Boolean(§§pop().§ ! §));
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(4);
                                                                                                         §§push(this.§[r§.§ ! §.blurX - 4);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(param2);
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() / 20);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() % 28);
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc6_ || param2)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         if(!(_loc6_ || param1))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         _loc4_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§[r§);
                                                                                                            addr278:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§ ! §.blurX = _loc4_;
                                                                                                               addr281:
                                                                                                               while(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(this.§[r§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§ ! §.blurY = _loc4_;
                                                                                                                     addr274:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr447);
                                                                                                            }
                                                                                                            §§goto(addr81);
                                                                                                         }
                                                                                                         addr122:
                                                                                                         if(_loc5_ && param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr129);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() > 1);
                                                                                                         addr363:
                                                                                                         while(_loc6_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                            while(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            §§goto(addr404);
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                         §§goto(addr311);
                                                                                                      }
                                                                                                      addr311:
                                                                                                      addr361:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§[r§);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         §§goto(addr278);
                                                                                                      }
                                                                                                      §§goto(addr271);
                                                                                                      §§goto(addr274);
                                                                                                   }
                                                                                                   continue loop28;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr416);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                       addr267:
                                                                                       §§push(§6!b§);
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop48:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§%7§(param1);
                                                                                                   loop47:
                                                                                                   while(!_loc5_)
                                                                                                   {
                                                                                                      loop42:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§;=§);
                                                                                                         addr147:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = Math.round(this.§"!d§);
                                                                                                            addr152:
                                                                                                            loop44:
                                                                                                            while(!(_loc5_ && this))
                                                                                                            {
                                                                                                               if(!(_loc5_ && param2))
                                                                                                               {
                                                                                                                  §§push(this.§;=§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().y = Math.round(this.§,!W§);
                                                                                                                     addr106:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           continue loop44;
                                                                                                                        }
                                                                                                                        addr108:
                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!(_loc6_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop47;
                                                                                                                           }
                                                                                                                           §§goto(addr122);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ && param2))
                                                                                                                                    {
                                                                                                                                       this.§"!d§ = this.§4d§;
                                                                                                                                       break loop44;
                                                                                                                                    }
                                                                                                                                    loop22:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr358:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr361);
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr386:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop48;
                                                                                                                              §§goto(addr108);
                                                                                                                           }
                                                                                                                           addr202:
                                                                                                                        }
                                                                                                                        §§goto(addr281);
                                                                                                                     }
                                                                                                                     §§goto(addr357);
                                                                                                                     §§goto(addr143);
                                                                                                                  }
                                                                                                                  addr101:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr466);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc5_ && param1))
                                                                                                               {
                                                                                                                  this.§,!W§ = this.§>d§;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        if(_loc5_ && param1)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop42;
                                                                                                                     }
                                                                                                                     §§goto(addr405);
                                                                                                                     §§goto(addr74);
                                                                                                                  }
                                                                                                                  §§goto(addr468);
                                                                                                                  addr172:
                                                                                                               }
                                                                                                               addr383:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§[r§);
                                                                                                                  break loop28;
                                                                                                               }
                                                                                                               §§goto(addr152);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr246:
                                                                                                   }
                                                                                                   addr263:
                                                                                                   while(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr267);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr413);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr274);
                                                                                                }
                                                                                             }
                                                                                             this.§^Y§ = this.§5D§;
                                                                                             §§goto(addr202);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr383);
                                                                                             }
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                          continue loop0;
                                                                                          addr378:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr467);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§8=§();
                                                                                    §§goto(addr386);
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     §§goto(addr172);
                                                                  }
                                                                  §§goto(addr106);
                                                               }
                                                               §§goto(addr147);
                                                            }
                                                            §§goto(addr101);
                                                         }
                                                         §§goto(addr445);
                                                      }
                                                      continue loop10;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr378);
                                                      §§goto(addr405);
                                                   }
                                                }
                                                §§goto(addr404);
                                             }
                                             continue loop7;
                                          }
                                          §§goto(addr446);
                                       }
                                    }
                                    §§goto(addr462);
                                 }
                              }
                           }
                           §§goto(addr406);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr466);
      }
      
      public function §4!2§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§0c§().GetPosition().x);
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§0c§().GetPosition().y);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.§finally§ = this.§5D§;
            loop0:
            while(true)
            {
               this.§'!_§ = this.§4d§;
               addr159:
               while(true)
               {
                  this.§@!2§ = this.§>d§;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(this.§0c§().GetAngle());
            if(!_loc3_)
            {
               §§push(180);
               if(!_loc3_)
               {
                  addr127:
                  §§push(§§pop() * (§§pop() / Math.PI));
                  if(!_loc3_)
                  {
                     §§push(360);
                  }
                  §§pop().§5D§ = §§pop();
                  while(_loc4_)
                  {
                     §§push(this);
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        §§push(§§pop() / §^!2§.§3!S§);
                     }
                     §§pop().§4d§ = §§pop();
                     loop5:
                     for(; _loc4_; while(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr84);
                     })
                     {
                        if(!_loc3_)
                        {
                           §§push(this);
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              §§push(§§pop() / §^!2§.§3!S§);
                           }
                           §§pop().§>d§ = §§pop();
                           loop6:
                           do
                           {
                              §§push(this.§!w§);
                              while(true)
                              {
                                 §§pop().§;B§();
                                 §§push(this.§!w§);
                                 addr84:
                                 continue loop5;
                                 if(!_loc3_)
                                 {
                                    §§pop().§ !U§(this.§0c§());
                                    if(!_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           while(_loc3_);
                           
                           return;
                        }
                        §§goto(addr159);
                     }
                  }
                  §§goto(addr136);
               }
               §§push(§§pop() % §§pop());
            }
            §§goto(addr127);
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
      
      public function §%7§(param1:Number, param2:Number = -1) : void
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
                     while(true)
                     {
                        §§push(§4,§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop() + " overriding to 0");
                        }
                        §§pop().log(§§pop());
                        addr963:
                        while(true)
                        {
                        }
                     }
                     addr939:
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
                              loop94:
                              while(true)
                              {
                                 §§push(this.§6!"§.§=!V§.mLevelEngine.§2t§);
                                 loop95:
                                 while(true)
                                 {
                                    §§push(1000);
                                    loop96:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop97:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop98:
                                          while(true)
                                          {
                                             param2 = §§pop();
                                             loop99:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(-1);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  param1 = §§pop();
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§4d§);
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§'!_§);
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr912:
                                                                                       loop90:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          addr889:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr890:
                                                                                             while(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                while(_loc4_)
                                                                                                {
                                                                                                }
                                                                                                continue loop90;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr911:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop86:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§=H§ = 0;
                                                                                          loop87:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§"!d§ = this.§4d§;
                                                                                             loop88:
                                                                                             while(true)
                                                                                             {
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§>d§);
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§@!2§);
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr821:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1);
                                                                                                                        addr793:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           addr794:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr820:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop29:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§]g§ = 0;
                                                                                                                           addr800:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop94;
                                                                                                                                 }
                                                                                                                                 if(_loc3_ && param1)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 this.§,!W§ = this.§>d§;
                                                                                                                                 while(_loc4_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr821);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr939);
                                                                                                                        }
                                                                                                                        addr797:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(param1);
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.§@!2§);
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - this.§>d§);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 addr781:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc3_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(param2);
                                                                                                                                 }
                                                                                                                                 §§pop().§]g§ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§>d§);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + this.§]g§);
                                                                                                                                    }
                                                                                                                                    §§pop().§,!W§ = §§pop();
                                                                                                                                    addr749:
                                                                                                                                    addr383:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr720:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§5D§);
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    if(_loc3_ && param2)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push(this.§5D§);
                                                                                                                                    loop65:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                addr248:
                                                                                                                                                if(_loc3_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                addr255:
                                                                                                                                                if(_loc4_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§finally§);
                                                                                                                                                   loop66:
                                                                                                                                                   while(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr266:
                                                                                                                                                      if(_loc3_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                            if(_loc4_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr539);
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr266);
                                                                                                                                                         }
                                                                                                                                                         continue loop29;
                                                                                                                                                         addr528:
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      loop67:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(180);
                                                                                                                                                         loop68:
                                                                                                                                                         while(!(_loc3_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                                                                               loop69:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr426:
                                                                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 loop58:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§finally§);
                                                                                                                                                                                       while(!(_loc3_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§5D§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                             addr355:
                                                                                                                                                                                             loop61:
                                                                                                                                                                                             while(!(_loc3_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                loop62:
                                                                                                                                                                                                for(; _loc4_ || param2; §§push(§§pop()),if(_loc3_ && this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                },addr181:,if(!(_loc3_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr188:
                                                                                                                                                                                                   if(_loc4_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr196);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr76);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr675);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr595);
                                                                                                                                                                                                      §§goto(addr188);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop15;
                                                                                                                                                                                                   addr672:
                                                                                                                                                                                                },while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc4_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop58;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(!_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         §§goto(addr550);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr733);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   §§goto(addr181);
                                                                                                                                                                                                },§§goto(addr734))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§finally§);
                                                                                                                                                                                                            loop71:
                                                                                                                                                                                                            while(_loc4_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§5D§);
                                                                                                                                                                                                               while(!(_loc3_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop62;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop69;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr196:
                                                                                                                                                                                                                  loop75:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr207:
                                                                                                                                                                                                                              loop74:
                                                                                                                                                                                                                              for(; !(_loc3_ && this); §§goto(addr207))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc3_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop88;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc4_ || param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop87;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(this.§5D§);
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop67;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop71;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr61:
                                                                                                                                                                                                                                       §§push(180);
                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop68;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc4_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop75;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc4_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                      §§push(this.§5D§);
                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§finally§);
                                                                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + 360);
                                                                                                                                                                                                                                                               if(_loc4_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - this.§5D§);
                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr123:
                                                                                                                                                                                                                                                                     addr134:
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr132:
                                                                                                                                                                                                                                                                        §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§pop().§^Y§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                     if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop74;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr715:
                                                                                                                                                                                                                                                                        this.§^Y§ = this.§5D§;
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                        addr719:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr880:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                                                                        §§push(this.§4d§);
                                                                                                                                                                                                                                                                        if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + this.§=H§);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().§"!d§ = §§pop();
                                                                                                                                                                                                                                                                        §§goto(addr837);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr132);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr123);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr132);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr134);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr788);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr123);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr76:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§finally§);
                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr597:
                                                                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop86;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc4_ || param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                                                                             §§push(this.§5D§);
                                                                                                                                                                                                                                             if(_loc4_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param1);
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§finally§);
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - this.§5D§);
                                                                                                                                                                                                                                                      if(_loc4_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr633:
                                                                                                                                                                                                                                                         addr639:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr637:
                                                                                                                                                                                                                                                            §§push(§§pop() / param2);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().§^Y§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                         if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr20);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr912);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr637);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr633);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr637);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr639);
                                                                                                                                                                                                                                             addr596:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr20);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr794);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr719);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr296:
                                                                                                                                                                                                                                    if(!(_loc3_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                                                                       §§push(this.§5D§);
                                                                                                                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§finally§);
                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - this.§5D§);
                                                                                                                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr335:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().§^Y§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr335);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr800);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr20);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr820);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop47:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc4_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§finally§);
                                                                                                                                                                                                                                    while(_loc4_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§5D§);
                                                                                                                                                                                                                                       break loop69;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                                                                    addr554:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr797);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr800);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§finally§);
                                                                                                                                                                                                                              loop43:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§5D§);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc4_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                break loop61;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                             addr53:
                                                                                                                                                                                                                                             if(!(_loc4_ || param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr61);
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                             addr733:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                addr734:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         addr736:
                                                                                                                                                                                                                                                         while(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                                                                            break loop43;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr749);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr735:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr713:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr661);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr661:
                                                                                                                                                                                                                                          addr732:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr889);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr793);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                 §§goto(addr255);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(_loc4_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc3_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop96;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr713);
                                                                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr890);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr587:
                                                                                                                                                                                                                                    while(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr596);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break loop68;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop96;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop10;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr715);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop22;
                                                                                                                                                                                                                        addr675:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr371:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        break loop75;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc3_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr383);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§finally§);
                                                                                                                                                                                                                              addr394:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§5D§);
                                                                                                                                                                                                                                 break loop66;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr550:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr435:
                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           §§push(this.§5D§);
                                                                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1);
                                                                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§finally§);
                                                                                                                                                                                                                                 if(!(_loc3_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - 360);
                                                                                                                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - this.§5D§);
                                                                                                                                                                                                                                       if(!(_loc3_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr493:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(_loc4_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().§^Y§ = §§pop() + §§pop();
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr493);
                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr493);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr633);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc4_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc3_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop99;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr736);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr20:
                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr690);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr597);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop14;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc3_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop8;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc3_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop98;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop97;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop95;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr587);
                                                                                                                                                                                                               §§push(180);
                                                                                                                                                                                                               §§goto(addr152);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr152:
                                                                                                                                                                                                            continue loop98;
                                                                                                                                                                                                            addr566:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr296);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr294:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr371);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr672);
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr735);
                                                                                                                                                                                                §§goto(addr355);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr736);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop5;
                                                                                                                                                                                       addr345:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr435);
                                                                                                                                                                                    §§goto(addr426);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr547);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr893);
                                                                                                                                                                        addr419:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr294);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr355);
                                                                                                                                                               }
                                                                                                                                                               while(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr566);
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                               }
                                                                                                                                                               continue loop1;
                                                                                                                                                               addr563:
                                                                                                                                                            }
                                                                                                                                                            continue loop9;
                                                                                                                                                         }
                                                                                                                                                         addr411:
                                                                                                                                                         while(!(_loc3_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr419);
                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr587);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr547);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            break loop65;
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr563);
                                                                                                                                                   }
                                                                                                                                                   continue loop21;
                                                                                                                                                   addr264:
                                                                                                                                                }
                                                                                                                                                §§goto(addr653);
                                                                                                                                             }
                                                                                                                                             §§goto(addr394);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr345);
                                                                                                                                       if(!(_loc4_ || param1))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(this.§finally§);
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr53);
                                                                                                                                             }
                                                                                                                                             §§goto(addr354);
                                                                                                                                          }
                                                                                                                                          §§goto(addr264);
                                                                                                                                       }
                                                                                                                                       §§goto(addr161);
                                                                                                                                    }
                                                                                                                                    while(!_loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§goto(addr554);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr781);
                                                                                                                     }
                                                                                                                     §§goto(addr720);
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
                                                                                    else
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(param1);
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          §§push(this.§'!_§);
                                                                                          if(!(_loc3_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() - this.§4d§);
                                                                                             if(!(_loc3_ && param2))
                                                                                             {
                                                                                                addr869:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   addr878:
                                                                                                   §§push(§§pop() / param2);
                                                                                                }
                                                                                                §§pop().§=H§ = §§pop();
                                                                                                §§goto(addr880);
                                                                                             }
                                                                                             §§goto(addr878);
                                                                                          }
                                                                                          §§goto(addr869);
                                                                                       }
                                                                                       §§goto(addr878);
                                                                                    }
                                                                                    §§goto(addr837);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr911);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr913:
                                                }
                                                §§goto(addr963);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr924:
                           }
                           §§goto(addr913);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr924);
      }
      
      public function get §%L§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!§6!b§)
            {
            }
         }
         return null;
      }
      
      public function §`P§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§7!?§);
            if(_loc2_ || this)
            {
               §§push(§ $§.§try §);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           addr79:
                           §§pop();
                           return this.§7!?§ == § $§.§<!O§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §0T§() : Boolean
      {
         return this.§7!?§ == § $§.§?r§;
      }
      
      public function §,h§() : Boolean
      {
         return this.§7!?§ == § $§.§!!$§;
      }
      
      public function §9!5§() : Boolean
      {
         return this.§7!?§ == § $§.§<!O§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§7!?§ == § $§.§2C§;
      }
      
      public function isGround() : Boolean
      {
         return this.§7!?§ == § $§.§[!W§;
      }
      
      public function §^M§() : Boolean
      {
         return this.§7!?§ == § $§.§2G§;
      }
      
      public function §%t§() : Boolean
      {
         return this.§7!?§ == § $§.§#J§;
      }
      
      public function §`!^§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§>R§);
            loop0:
            while(true)
            {
               §§push(§§pop() == "MISC_EXPLOSIVE_TNT");
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§push(true);
                           }
                           else
                           {
                              addr19:
                              §§push(false);
                              if(!(_loc2_ && this))
                              {
                                 break;
                              }
                           }
                           while(!(_loc1_ || _loc2_))
                           {
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                           }
                           return §§pop();
                           addr67:
                        }
                        §§goto(addr19);
                     }
                     return §§pop();
                     addr55:
                  }
               }
               §§goto(addr94);
            }
            addr88:
         }
         while(true)
         {
            §§push(this.§>R§);
            if(_loc1_ || this)
            {
               §§push(§§pop() == "POWERUP_BOMB");
               if(_loc1_)
               {
                  §§goto(addr55);
               }
               §§goto(addr67);
            }
            else
            {
               §§goto(addr88);
            }
         }
      }
      
      public function § !^§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§0T§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
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
                           addr140:
                           while(true)
                           {
                              §§push(this.§^M§());
                              addr111:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr139:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           while(_loc2_ || this)
                           {
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr133:
                                    while(true)
                                    {
                                       §§push(this.§%t§());
                                       if(!_loc2_)
                                       {
                                          continue loop7;
                                       }
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(Boolean(§§pop()));
                                          while(_loc2_ || _loc1_)
                                          {
                                          }
                                          §§goto(addr111);
                                       }
                                       else
                                       {
                                          §§goto(addr139);
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr88);
                                 }
                                 §§goto(addr47);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §;D§() : Number
      {
         return Number(Math.sqrt(this.§0c§().GetLinearVelocity().x * this.§0c§().GetLinearVelocity().x + this.§0c§().GetLinearVelocity().y * this.§0c§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc9_)
         {
            §§push(this.§,h§());
            loop0:
            for(; !§§pop(); if(_loc10_ && param1)
            {
               continue;
            },§§goto(addr515))
            {
               loop1:
               while(true)
               {
                  §§push(this.§6!"§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§[m§());
                     loop3:
                     while(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§[!$§);
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
                                             addr729:
                                             while(true)
                                             {
                                                §§push(param6);
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   addr501:
                                                   if(_loc9_ || this)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                          }
                                          addr728:
                                       }
                                       while(true)
                                       {
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
                                                   while(!_loc10_)
                                                   {
                                                      §§push(this.§[!$§);
                                                      if(_loc9_)
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr644:
                                                               §§push(param1);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(this.§[!$§);
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     addr657:
                                                                     if(§§pop() >= §§pop() / 2)
                                                                     {
                                                                        addr658:
                                                                        this.§^!H§(§!k§.§%n§);
                                                                        addr662:
                                                                     }
                                                                     §§push(this.§`P§());
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        addr626:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(Boolean(§§pop()))
                                                                        {
                                                                           addr628:
                                                                           §§pop();
                                                                           if(_loc9_)
                                                                           {
                                                                              addr581:
                                                                              §§push(this.§[h§);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr586:
                                                                                 §§push(§§pop() == this.§'!V§);
                                                                                 if(_loc9_ || param3)
                                                                                 {
                                                                                    addr593:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr595:
                                                                                       §§push(this);
                                                                                       §§push(this.§'!V§);
                                                                                       if(!(_loc10_ && param3))
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       §§pop().§[h§ = §§pop();
                                                                                       addr607:
                                                                                       if(_loc10_ && param2)
                                                                                       {
                                                                                          addr700:
                                                                                          if(!(_loc9_ || param1))
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr666:
                                                                                          return this.§[h§;
                                                                                          addr663:
                                                                                       }
                                                                                    }
                                                                                    §§push(this.§[h§);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§goto(addr728);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr679:
                                                                                 §§push(3);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr715:
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          addr695:
                                                                                          if(param1 <= 12)
                                                                                          {
                                                                                             §§goto(addr679);
                                                                                             §§push(param1);
                                                                                          }
                                                                                          this.§^!H§(§!k§.§[a§);
                                                                                          §§goto(addr700);
                                                                                       }
                                                                                       addr716:
                                                                                       this.§^!H§(§!k§.§]^§);
                                                                                       §§goto(addr663);
                                                                                       addr720:
                                                                                    }
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       addr685:
                                                                                       this.§^!H§(§!k§.§%n§);
                                                                                    }
                                                                                    §§goto(addr663);
                                                                                 }
                                                                                 §§goto(addr695);
                                                                              }
                                                                           }
                                                                           §§goto(addr716);
                                                                        }
                                                                        §§goto(addr593);
                                                                     }
                                                                     §§goto(addr628);
                                                                  }
                                                                  §§goto(addr657);
                                                               }
                                                               else
                                                               {
                                                                  addr714:
                                                                  §§push(30);
                                                               }
                                                               §§goto(addr715);
                                                            }
                                                            §§goto(addr662);
                                                         }
                                                         else
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(this.§[!$§);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        loop18:
                                                                        while(!_loc10_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              param1 = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 while(!_loc10_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          addr515:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop29:
                                                                                                while(!(_loc10_ && param1))
                                                                                                {
                                                                                                   §§push(int(Math.min(this.§[h§,int(param1))));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§^!2§.§&6§.getValue());
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop() * _loc7_);
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         addr488:
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param5);
                                                                                                               while(!_loc10_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop36:
                                                                                                                     for(; _loc9_; while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_ && param1)
                                                                                                                        {
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param5);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 loop44:
                                                                                                                                 while(!(_loc10_ && param2))
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       loop45:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§[h§);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - param1);
                                                                                                                                                }
                                                                                                                                                §§pop().§[h§ = §§pop();
                                                                                                                                                loop47:
                                                                                                                                                while(_loc9_ || this)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§[h§);
                                                                                                                                                      loop49:
                                                                                                                                                      while(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         loop50:
                                                                                                                                                         while(!(_loc10_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§[h§ = 1;
                                                                                                                                                                                          loop55:
                                                                                                                                                                                          for(; !(_loc10_ && param2); while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc9_ || param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop55;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc10_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr145);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr685);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr345);
                                                                                                                                                                                          })
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§[h§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc10_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop50;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop6;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§^!H§(§!k§.§[a§);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §,_§.§>!C§(§!k§.§]^§,this.§0!b§.§[v§,"ChannelDestroyed");
                                                                                                                                                                                                                           continue loop55;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc10_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop0;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr756:
                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                     addr171:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop47;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.addDamageParticles(this.§6!"§.§=!V§.particles,param1);
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr720);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr453);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_ && param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop3;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop16;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§[h§ = 0;
                                                                                                                                                                                                                  §§goto(addr171);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§[h§);
                                                                                                                                                                                                   continue loop18;
                                                                                                                                                                                                   if(_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc10_ && param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop49;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc9_ || param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr695);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr442);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr666);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr658);
                                                                                                                                                                                          addr218:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr628);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§ !^§());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr297:
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             if(!(_loc10_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop45;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr549:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr494);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr218);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr146);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr253);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop44;
                                                                                                                                                               }
                                                                                                                                                               continue loop7;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr626);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr679);
                                                                                                                                                      }
                                                                                                                                                      continue loop19;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr607);
                                                                                                                                             }
                                                                                                                                             §§goto(addr307);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop23;
                                                                                                                                 if(!(_loc9_ || param2))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr297);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr342);
                                                                                                                        }
                                                                                                                     })
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(!(_loc10_ && param2))
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §^!2§.§<!1§);
                                                                                                                                 while(!(_loc10_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                 }
                                                                                                                                 §§goto(addr581);
                                                                                                                                 addr442:
                                                                                                                              }
                                                                                                                              while(_loc9_)
                                                                                                                              {
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ || param1))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                          addr353:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§6!"§);
                                                                                                                                          if(!(_loc9_ || this))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop().§=!V§);
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          §§push(§ !;§.§[F§);
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§[h§ > param1);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr390:
                                                                                                                                                      §§push(param3);
                                                                                                                                                      if(_loc9_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§0c§().GetPosition().x,this.§0c§().GetPosition().y,§!U§.§03§(this.§>R§));
                                                                                                                                             continue loop36;
                                                                                                                                          }
                                                                                                                                          §§goto(addr390);
                                                                                                                                       }
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 §§goto(addr729);
                                                                                                                              }
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        addr713:
                                                                                                                        §§goto(addr714);
                                                                                                                        §§push(param1);
                                                                                                                        §§goto(addr715);
                                                                                                                     }
                                                                                                                     continue loop34;
                                                                                                                  }
                                                                                                                  §§goto(addr353);
                                                                                                               }
                                                                                                               §§goto(addr586);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr595);
                                                                                             }
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc9_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§pop();
                                                                                    §§goto(addr270);
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr593);
                                                                     }
                                                                     §§goto(addr657);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr586);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr657);
                                                   }
                                                   addr737:
                                                   if(!_loc10_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr756);
                                                }
                                             }
                                             §§goto(addr713);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr737);
                  }
               }
            }
            §§goto(addr756);
            §§push(this.§[h§);
         }
         §§goto(addr168);
      }
      
      public function §^!H§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §,_§.§>!C§(param1,this.§0!b§.§[v§);
         }
      }
      
      public function §>T§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§0!b§.material.§[1§(param1));
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() * this.§^!O§;
         }
      }
      
      public function §8l§(param1:String) : Number
      {
         return this.§0!b§.material.§`!F§(param1);
      }
      
      public function §if §() : String
      {
         return this.§0!b§.material.mName;
      }
      
      public function §^R§() : Number
      {
         return this.§0!b§.§=W§();
      }
      
      public function §?!E§() : int
      {
         return this.§0!b§.§?=§();
      }
      
      public function §8j§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§0c§().IsAwake());
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
                           §§push(this.§`P§());
                           loop5:
                           while(true)
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
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§pop();
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§push(this.§[h§ == this.§'!V§);
                                                while(!_loc2_)
                                                {
                                                }
                                                continue loop3;
                                                addr154:
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop1;
                                       addr174:
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop12:
                                       while(_loc3_ || this)
                                       {
                                          if(!§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§pop();
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(Math.abs(this.§0c§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop17:
                                                               while(!(_loc2_ && _loc1_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           loop20:
                                                                           for(; !(_loc2_ && _loc2_); §§push(Math.abs(this.§0c§().§4^§()) > b2Settings.b2_angularSleepTolerance * _loc1_),if(_loc2_)
                                                                           {
                                                                              continue;
                                                                           },if(_loc3_)
                                                                           {
                                                                              continue loop13;
                                                                           })
                                                                           {
                                                                              if(_loc2_ && _loc2_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§pop();
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              addr145:
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§push(Math.abs(this.§0c§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              §§goto(addr177);
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     continue loop12;
                                                                     addr74:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr145);
                                                                  }
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   continue loop5;
                                                }
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   break loop2;
                                                }
                                             }
                                          }
                                          §§goto(addr134);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr202);
      }
      
      public function §[b§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§0c§().IsAwake());
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(true);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr45:
                     §§push(this.§<!=§());
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
         §§goto(addr45);
      }
      
      protected function §<!=§() : Boolean
      {
         return this.§!w§.§<!=§();
      }
      
      public function §3=§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^!O§ = param1;
            while(true)
            {
               if(this.§^!O§ <= 1)
               {
                  §§push(this.§[r§);
                  if(_loc3_ || _loc2_)
                  {
                     §§pop().§ ! § = null;
                     if(!(_loc3_ || _loc3_))
                     {
                        addr93:
                     }
                     return;
                  }
                  break;
               }
               if(_loc3_ || _loc3_)
               {
                  continue;
               }
               §§goto(addr93);
            }
            addr92:
            §§pop().§"! §();
            §§goto(addr93);
         }
         §§goto(addr92);
         §§push(this.§[r§);
      }
      
      public function §[x§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc3_)
         {
            §§push(this.§0!b§.§`K§());
            while(true)
            {
               if(§§pop() != §56§.§&f§)
               {
                  §§push(this.§0c§().GetMass());
                  loop1:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §§push(this.§!8§.§ !E§());
                        loop2:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop3:
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(param1)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr138:
                                                while(true)
                                                {
                                                   §§push(this.§6K§());
                                                   continue loop2;
                                                }
                                             }
                                             addr137:
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§[r§.mW);
                                             if(_loc3_)
                                             {
                                                §§push(this.§[r§.mH);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   while(true)
                                                   {
                                                      §§push(§^!2§.§3!S§);
                                                      addr208:
                                                      while(true)
                                                      {
                                                         §§push(§^!2§.§3!S§);
                                                         addr210:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                   }
                                                   addr206:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr212:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop17:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr214:
                                                         addr81:
                                                         loop16:
                                                         while(true)
                                                         {
                                                            addr22:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc4_ && this)
                                                               {
                                                                  break loop16;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop17;
                                                         }
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               addr83:
                                                               if(_loc3_ || this)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§goto(addr138);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     break loop15;
                                                                     §§goto(addr83);
                                                                  }
                                                                  addr150:
                                                               }
                                                            }
                                                            break;
                                                            §§goto(addr22);
                                                         }
                                                         while(!_loc4_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            while(true)
                                                            {
                                                               addr114:
                                                               _loc2_ = §§pop();
                                                               if(!(_loc3_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr133:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr214);
                                                                  }
                                                                  §§goto(addr22);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr137);
                                                               }
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   §§goto(addr210);
                                                }
                                                addr211:
                                             }
                                             §§goto(addr212);
                                          }
                                          addr185:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          continue loop1;
                                          §§goto(addr154);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr212);
                           }
                        }
                     }
                     §§goto(addr206);
                  }
               }
               §§goto(addr185);
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               §§push(this.get);
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     §§push(this.get);
                     if(!(_loc4_ && this))
                     {
                        addr70:
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop() / §§pop());
                           if(!_loc4_)
                           {
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr140);
               }
               §§goto(addr70);
            }
         }
         §§goto(addr133);
      }
      
      public function §6K§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(_loc2_ || _loc1_)
            {
               §§push(_loc1_);
               if(_loc2_ || _loc3_)
               {
                  §§push(2);
                  if(_loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr65);
                  }
                  §§push(§§pop() / §§pop());
               }
               addr65:
               §§push(§§pop() * Math.min(10,this.§[r§.§5+§ - 1));
               if(!_loc3_)
               {
                  §§push(10);
               }
               §§push(§§pop() - §§pop());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                     addr86:
                     _loc1_ = §§pop();
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §'!T§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§0c§().GetLinearVelocity().x);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§0c§().GetLinearVelocity().y);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(_loc5_);
               loop1:
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
                           if(_loc6_ || _loc2_)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              §§push(_loc5_);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr121:
                                    if(_loc7_ && param1)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                                 do
                                 {
                                    this.§0c§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                                 }
                                 while(_loc7_);
                                 
                                 if(_loc6_ || _loc2_)
                                 {
                                    return;
                                    addr93:
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           §§goto(addr121);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§?F§) : void
      {
      }
      
      public function addDamageParticles(param1:§?F§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §+,§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§0c§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(_loc5_ || param2)
         {
            §§push(param2.x * param1);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(!_loc6_)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc5_)
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
               this.§0c§().§5!@§(_loc4_);
            }
            while(!_loc5_);
            
         }
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
               loop1:
               while(true)
               {
                  §§push(this.§4!W§());
                  if(_loc7_ || this)
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
                           addr255:
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
                                                   loop11:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(Number(0));
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            _loc5_ = §§pop();
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc7_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     while(_loc7_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        while(_loc7_ || this)
                                                                        {
                                                                           §§push(param1);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() % §§pop());
                                                                              §§goto(addr208);
                                                                           }
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop12;
                                                                     addr196:
                                                                  }
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ && param2)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§push(param1);
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop() / 2);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr116:
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       break loop19;
                                                                                    }
                                                                                    §§push(param1);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc5_);
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr88:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            break loop20;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr48:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         addr180:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§`X§(_loc4_);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         §§goto(addr196);
                                                                                                         §§goto(addr48);
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             while(_loc7_ || param2)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   §§goto(addr180);
                                                                                                }
                                                                                                §§goto(addr199);
                                                                                             }
                                                                                             §§goto(addr170);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc7_ || param2))
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   addr170:
                                                                                                   addr208:
                                                                                                   addr278:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr117:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc6_ && param2))
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                         }
                                                                                                         addr217:
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   var _loc3_:* = §§pop();
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      _loc3_ = §§pop();
                                                                                                   }
                                                                                                   do
                                                                                                   {
                                                                                                      this.§`X§(_loc3_);
                                                                                                   }
                                                                                                   while(!(_loc7_ || param2));
                                                                                                   
                                                                                                   return;
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr277:
                                                                                                   §§goto(addr278);
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                §§goto(addr278);
                                                                                             }
                                                                                             addr142:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr269:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             §§goto(addr277);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr278);
                                                                                    }
                                                                                    §§goto(addr269);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr269);
                                                                           }
                                                                           §§goto(addr207);
                                                                        }
                                                                        §§goto(addr116);
                                                                     }
                                                                     §§goto(addr117);
                                                                  }
                                                                  §§goto(addr269);
                                                                  §§push(param1);
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            continue loop7;
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr268);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr278);
               }
               addr243:
            }
            §§goto(addr264);
         }
         §§goto(addr243);
      }
      
      public function §+!"§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§,O§(this.§0c§().GetAngle()));
         if(!_loc3_)
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
               if(_loc4_)
               {
                  §§push(360);
                  if(_loc4_ || param1)
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
                        loop1:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr108:
                           while(true)
                           {
                              §§push(§3!]§(_loc2_));
                              if(_loc4_)
                              {
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    continue loop1;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                              while(!(_loc3_ && _loc2_))
                              {
                                 this.§0c§().§7&§(_loc2_);
                                 if(!_loc3_)
                                 {
                                    return;
                                 }
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
         §§goto(addr108);
      }
      
      public function §%!§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§0c§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!_loc14_)
         {
            §§push(§§pop() - param2.x);
            if(_loc15_ || _loc3_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc15_)
            {
               §§push(§§pop() - param2.y);
               if(_loc15_ || param2)
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc15_)
               {
                  §§push(_loc4_);
                  if(!(_loc14_ && this))
                  {
                     §§push(0);
                     if(!_loc14_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc14_)
                        {
                           if(§§pop())
                           {
                              if(_loc15_ || param2)
                              {
                                 §§goto(addr85);
                              }
                           }
                           §§goto(addr93);
                        }
                        addr85:
                        §§pop();
                        if(!_loc14_)
                        {
                           §§push(_loc5_);
                           if(_loc15_)
                           {
                              addr93:
                              addr92:
                              addr91:
                              if(§§pop() == 0)
                              {
                                 if(!(_loc14_ && param1))
                                 {
                                    §§goto(addr101);
                                 }
                              }
                              §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                           }
                           var _loc6_:* = §§pop();
                           §§push(_loc4_);
                           if(!_loc14_)
                           {
                              §§push(§§pop() / _loc5_);
                              if(_loc15_)
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(Math.atan(_loc7_) * 180);
                              if(!(_loc14_ && _loc3_))
                              {
                                 §§push(§§pop() / Math.PI);
                                 if(_loc15_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc8_:* = §§pop();
                              if(!_loc14_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc14_ && param2))
                                 {
                                    §§push(0);
                                    if(!(_loc14_ && param2))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc15_)
                                          {
                                             addr172:
                                             §§push(_loc8_);
                                             if(_loc15_)
                                             {
                                                addr176:
                                                §§push(§§pop() + 180);
                                                if(_loc15_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc14_)
                                                   {
                                                      addr182:
                                                      _loc8_ = §§pop();
                                                      §§push(_loc8_);
                                                      if(_loc15_)
                                                      {
                                                         §§push(param1);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc15_ || _loc3_)
                                                            {
                                                               addr198:
                                                               §§push(Number(§§pop()));
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * Math.PI);
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               §§push(§§pop() / 180);
                                                               if(_loc15_ || this)
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
                                                         if(_loc15_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                         if(_loc15_ || param1)
                                                         {
                                                            this.§0c§().§5!@§(_loc13_);
                                                         }
                                                         return;
                                                      }
                                                   }
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr198);
                                          }
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr91);
               }
               addr101:
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr42);
      }
   }
}
