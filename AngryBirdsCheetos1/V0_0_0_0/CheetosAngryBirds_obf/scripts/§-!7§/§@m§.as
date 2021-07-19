package §-!7§
{
   import §%!$§.§=m§;
   import §&!"§.b2Body;
   import §&!"§.b2BodyDef;
   import §&!"§.b2FilterData;
   import §&!"§.b2Fixture;
   import §&!"§.b2World;
   import §-!C§.b2PolygonShape;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import §9N§.§^_§;
   import §>!@§.b2Settings;
   import §?7§.§!S§;
   import §?7§.§#!+§;
   import §?7§.§&!5§;
   import §?7§.§,!§;
   import §?7§.§=!5§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §@,§.§4h§;
   import §`a§.Sprite;
   import flash.geom.Point;
   
   public class §@m§
   {
      
      public static const §"!=§:uint;
      
      public static const §[!-§:uint;
      
      public static const §-!V§:uint;
      
      public static const §>!$§:uint;
      
      public static const § for§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§findproperty(§"!=§));
            §§push(1);
            if(!_loc2_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§"!=§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§[!-§));
               §§push(1);
               if(!_loc2_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§[!-§ = §§pop();
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §§push(§§findproperty(§-!V§));
                     §§push(1);
                     if(!_loc2_)
                     {
                        §§push(§§pop() << 3);
                     }
                     §§pop().§-!V§ = §§pop();
                     do
                     {
                        §§push(§§findproperty(§>!$§));
                        §§push(1);
                        if(_loc1_)
                        {
                           §§push(§§pop() << 4);
                        }
                        §§pop().§>!$§ = §§pop();
                        do
                        {
                           § for§ = true;
                        }
                        while(_loc2_);
                        
                     }
                     while(!_loc1_);
                     
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr97);
      }
      
      private var §-!"§:int;
      
      private var §!R§:int;
      
      public var § h§:String;
      
      public var §5x§:int;
      
      private var §6"§:§,!§;
      
      private var §08§:§&$§;
      
      private var mWorld:b2World;
      
      private var §&!T§:b2Fixture;
      
      private var §<7§:b2Body;
      
      private var §;!A§:b2Vec2;
      
      public var §4^§:Number;
      
      public var §,>§:Number;
      
      private var §9!B§:Number;
      
      private var §2!2§:Boolean = false;
      
      private var §5!0§:Number;
      
      private var §-e§:Number;
      
      private var §<!,§:Number;
      
      private var §?!B§:Number;
      
      private var §;!S§:Number;
      
      private var §`o§:Number;
      
      public var §"6§:Number = 1;
      
      private var §;v§:Boolean = false;
      
      public var §?g§:Number = 0;
      
      public var §9K§:Number = 0;
      
      protected var §5-§:Boolean = false;
      
      public var §%n§:§'x§;
      
      private var §9!A§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §,E§:Number = 0;
      
      private var §7<§:Number = 1.0;
      
      private var §8!X§:Boolean = false;
      
      private var §2Z§:Boolean = true;
      
      public function §@m§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(!_loc16_)
         {
            super();
            loop0:
            while(true)
            {
               this.§ h§ = param6;
               while(true)
               {
                  this.§6"§ = §&!5§.§;@§(param6);
                  loop2:
                  while(true)
                  {
                     this.§08§ = param1;
                     while(true)
                     {
                        this.§9!A§ = param2;
                        addr187:
                        while(_loc17_)
                        {
                           this.§7<§ = param10;
                           while(!_loc16_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr119:
                  if(!(_loc17_ || param3))
                  {
                     continue;
                  }
                  loop12:
                  while(true)
                  {
                     §§push(this.§%n§);
                     if(!(_loc16_ && param2))
                     {
                        §§push(this.§!R§);
                        if(_loc17_ || param2)
                        {
                           §§pop().§;D§(§§pop() == §!S§.§=§);
                           do
                           {
                              this.mWorld = param3;
                           }
                           while(!_loc17_);
                           
                           if(!_loc16_)
                           {
                              while(false)
                              {
                                 continue loop12;
                              }
                              var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                              if(!_loc16_)
                              {
                                 this.§<7§ = this.mWorld.§&!Y§(_loc12_);
                                 if(!(_loc16_ && param1))
                                 {
                                    this.§<7§.§,!P§(this);
                                    if(!_loc16_)
                                    {
                                       addr237:
                                       §§push(this.§!R§);
                                       if(_loc17_)
                                       {
                                          §§push(§!S§.§;A§);
                                          if(_loc17_ || param1)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc16_)
                                                {
                                                   §§push(b2PolygonShape);
                                                   §§push(this.§6"§.shape.§?l§);
                                                   if(!(_loc16_ && param1))
                                                   {
                                                      §§push(param10);
                                                      if(_loc17_ || this)
                                                      {
                                                         addr274:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(this.§6"§.shape.§+G§);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(§§pop() * param10);
                                                         }
                                                      }
                                                      _loc14_ = §§pop().§,b§(§§pop(),§§pop());
                                                      if(_loc17_ || param1)
                                                      {
                                                         this.§&!T§ = this.§<7§.CreateFixture2(_loc14_,this.§6"§.§>E§());
                                                         if(!_loc16_)
                                                         {
                                                            addr373:
                                                            §§push(this.§&!T§);
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               §§push(this.§6"§);
                                                               if(!(_loc16_ && param2))
                                                               {
                                                                  §§push(§§pop().§#=§());
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     §§pop().§"!<§(§§pop());
                                                                     if(!(_loc16_ && param1))
                                                                     {
                                                                        addr412:
                                                                        this.§&!T§.§3-§(this.§6"§.§0G§());
                                                                     }
                                                                     var _loc13_:b2FilterData = new b2FilterData();
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        §§push(this.§ !?§());
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 _loc13_.§]@§ = §"!=§;
                                                                                 if(_loc17_ || param2)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    §§push(65535);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() & ~§[!-§);
                                                                                    }
                                                                                    §§pop().§+!0§ = §§pop();
                                                                                    addr440:
                                                                                    this.§&!T§.§'!+§(_loc13_);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       this.§9!B§ = this.§6"§.§45§();
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr440);
                                                                                          }
                                                                                          §§push(this.§6"§);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(§§pop().§,>§);
                                                                                             if(_loc17_ || param2)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc17_ || param1)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         this.§4^§ = this.§,>§ = this.§6"§.§,>§;
                                                                                                         if(!(_loc17_ || param1))
                                                                                                         {
                                                                                                            addr650:
                                                                                                         }
                                                                                                         addr724:
                                                                                                         if(this.§6"§.§5x§ != §,!§.§&J§)
                                                                                                         {
                                                                                                            §§push(this.§%n§);
                                                                                                            loop22:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().setDamagedFrame();
                                                                                                               loop23:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc16_ && param2))
                                                                                                                  {
                                                                                                                     addr723:
                                                                                                                     loop24:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr700:
                                                                                                                        if(this.isTexture())
                                                                                                                        {
                                                                                                                           while(_loc17_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr705:
                                                                                                                                 if(param9 != 0)
                                                                                                                                 {
                                                                                                                                    addr706:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§@L§(param9);
                                                                                                                                       addr709:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr706:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§7!+§();
                                                                                                                                    addr687:
                                                                                                                                    while(!(_loc16_ && param3))
                                                                                                                                    {
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          this.§>!=§(0,1);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             §§goto(addr706);
                                                                                                                                          }
                                                                                                                                          addr681:
                                                                                                                                          addr696:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§9!A§.visible = false;
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                          addr740:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr709);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop23;
                                                                                                                           addr701:
                                                                                                                        }
                                                                                                                        §§goto(addr703);
                                                                                                                     }
                                                                                                                     addr697:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr697);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr740);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      this.§4^§ = this.§,>§ = Math.round(this.§>!&§(true) * this.§6"§.§^!;§());
                                                                                                      if(_loc17_ || param3)
                                                                                                      {
                                                                                                         addr629:
                                                                                                         §§push(this.§4^§);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               addr636:
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     addr639:
                                                                                                                     this.§4^§ = this.§,>§ = 1;
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        §§goto(addr650);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr683);
                                                                                                               }
                                                                                                               §§goto(addr724);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr705);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr696);
                                                                                                }
                                                                                                §§goto(addr636);
                                                                                             }
                                                                                             §§goto(addr705);
                                                                                          }
                                                                                          §§goto(addr724);
                                                                                       }
                                                                                       §§goto(addr703);
                                                                                    }
                                                                                    §§goto(addr723);
                                                                                    addr546:
                                                                                 }
                                                                                 §§goto(addr629);
                                                                              }
                                                                              §§goto(addr675);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§ h§);
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop18;
                                                                                          addr475:
                                                                                          if(_loc17_ || param1)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(§§pop())
                                                                                       {
                                                                                          if(_loc17_ || param2)
                                                                                          {
                                                                                             if(_loc16_ && this)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             _loc13_.§]@§ = §[!-§;
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                if(_loc17_ || param1)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   §§push(65535);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(§§pop() & ~§"!=§);
                                                                                                   }
                                                                                                   §§pop().§+!0§ = §§pop();
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr703);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr546);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr683);
                                                                                          }
                                                                                          §§goto(addr706);
                                                                                       }
                                                                                       §§goto(addr440);
                                                                                       addr489:
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr700);
                                                                        }
                                                                     }
                                                                     §§goto(addr639);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr412);
                                                         }
                                                      }
                                                      §§goto(addr412);
                                                   }
                                                   §§goto(addr274);
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§!R§);
                                                if(_loc17_ || param3)
                                                {
                                                   addr313:
                                                   §§push(§!S§.§=§);
                                                   if(_loc17_ || param2)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc17_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc17_ || param3)
                                                            {
                                                               addr334:
                                                               §§pop();
                                                               addr350:
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  addr346:
                                                                  §§push(this.§!R§ == §!S§.§1F§);
                                                               }
                                                               this.§&!T§ = this.§<7§.CreateFixture2(this.§6"§.shape.§-x§(param10),this.§6"§.§>E§());
                                                               §§goto(addr373);
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               §§goto(addr350);
                                                            }
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                }
                                                §§goto(addr346);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr346);
                                       }
                                       §§goto(addr313);
                                    }
                                    §§goto(addr346);
                                 }
                                 §§goto(addr334);
                              }
                              §§goto(addr237);
                              addr31:
                           }
                           else
                           {
                              loop11:
                              while(!(_loc16_ && param1))
                              {
                                 addr112:
                                 if(!(_loc16_ && this))
                                 {
                                    §§goto(addr119);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§%n§ = new §'x§(this,param2,param4);
                                       break loop11;
                                       §§goto(addr112);
                                    }
                                    addr142:
                                 }
                              }
                              loop10:
                              while(true)
                              {
                                 §§push(this.§%n§);
                                 if(!_loc16_)
                                 {
                                    if(!§§pop().§#?§(param1.§8@§.§"B§))
                                    {
                                       if(_loc17_ || this)
                                       {
                                          addr74:
                                          if(_loc17_ || this)
                                          {
                                             if(_loc17_)
                                             {
                                                if(!_loc16_)
                                                {
                                                   addr87:
                                                   §§push(this.§%n§);
                                                   while(true)
                                                   {
                                                      §§push(this.§!R§);
                                                      addr89:
                                                      while(true)
                                                      {
                                                         §§pop().§?!7§(§§pop(),this.§6"§.§%f§(),this.§6"§.§8!H§() / §9!%§.§catch§,this.§6"§.§^!Q§() / §9!%§.§catch§);
                                                         continue loop10;
                                                      }
                                                   }
                                                   addr87:
                                                }
                                                else
                                                {
                                                   §§goto(addr173);
                                                }
                                             }
                                             else
                                             {
                                                while(!(_loc16_ && param3))
                                                {
                                                   this.§5x§ = this.§6"§.§5x§;
                                                   break loop10;
                                                }
                                                while(true)
                                                {
                                                   this.§-!"§ = param5;
                                                   §§goto(addr156);
                                                }
                                                addr156:
                                                addr168:
                                             }
                                          }
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop12;
                                 }
                                 §§goto(addr87);
                              }
                              addr105:
                              while(!_loc16_)
                              {
                                 this.§!R§ = this.§6"§.§?!P§();
                                 §§goto(addr142);
                                 §§goto(addr74);
                              }
                              §§goto(addr187);
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr87);
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      public static function §??§(param1:int, param2:§=!5§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param2 == null)
            {
               if(!(_loc5_ && param2))
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§3l§[param1]);
         if(_loc6_)
         {
            if(§§pop().length > 0)
            {
               if(!_loc5_)
               {
                  §§push(param3);
                  if(!(_loc5_ && §@m§))
                  {
                     addr62:
                     if(§§pop().length <= 0)
                     {
                        if(_loc6_)
                        {
                           §§push(param2.§ _§);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr82);
                        }
                     }
                     §=m§.§break§(_loc4_,param3);
                  }
                  §§goto(addr82);
               }
            }
            addr82:
            param3 = §§pop();
            if(_loc5_)
            {
            }
            return;
         }
         §§goto(addr62);
      }
      
      public static function §3!X§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc2_)
         {
            §§push(180);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_)
                  {
                     addr57:
                     §§push(§§pop() % 360);
                  }
               }
               §§push(§§pop() - §§pop());
               if(!_loc3_)
               {
                  return §§pop() % 360;
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function §"d§(param1:Number) : Number
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
         if(!(_loc4_ && §@m§))
         {
            §§push(§§pop() / (180 / Math.PI));
            if(!(_loc4_ && param1))
            {
               return Number(§§pop());
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§9!A§;
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
         return this.§7<§;
      }
      
      public function get front() : Boolean
      {
         return this.§8!X§;
      }
      
      public function get §+-§() : Number
      {
         return this.§<7§.GetPosition().x;
      }
      
      public function get §9!V§() : Number
      {
         return this.§<7§.GetPosition().y;
      }
      
      public function get §8!Q§() : §,!§
      {
         return this.§6"§;
      }
      
      public function get §2!X§() : Boolean
      {
         return this.§9!B§ >= 0;
      }
      
      protected function get container() : §&$§
      {
         return this.§08§;
      }
      
      public function get §4!'§() : Boolean
      {
         return this.§2Z§;
      }
      
      public function set §4!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2Z§ = param1;
         }
      }
      
      public function set §>C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§2!2§ = param1;
         }
      }
      
      public function get §0=§() : Boolean
      {
         return this.§;v§;
      }
      
      public function set §0=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;v§ = param1;
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
      
      public function §`!K§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§&!T§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().§'!+§(param1);
         }
         addr55:
         if(!_loc2_)
         {
            §§push(this.§&!T§);
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
               addr138:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mWorld);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr133:
                     while(true)
                     {
                        §§pop().§#!P§(this.§`!#§());
                        addr136:
                        while(true)
                        {
                           this.mWorld = null;
                           addr115:
                           while(true)
                           {
                           }
                        }
                     }
                     loop3:
                     while(true)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           continue loop0;
                        }
                        this.§9!A§ = null;
                        loop4:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_ && _loc1_)
                              {
                                 break loop3;
                              }
                              while(true)
                              {
                                 this.§&!T§ = null;
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       break loop4;
                                    }
                                    while(true)
                                    {
                                       this.§;!A§ = null;
                                       continue loop6;
                                    }
                                 }
                              }
                              addr46:
                           }
                           addr110:
                           while(true)
                           {
                              §§push(this.§9!A§);
                              if(_loc1_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ && _loc1_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(this.§9!A§);
                                 }
                                 else
                                 {
                                    §§goto(addr46);
                                 }
                              }
                              §§pop().dispose();
                              continue loop3;
                           }
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr136);
                  }
               }
               while(true)
               {
                  this.§%n§.dispose();
                  §§goto(addr110);
                  §§goto(addr115);
               }
            }
            §§goto(addr133);
         }
         §§goto(addr52);
      }
      
      public function §@L§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§`!#§());
            §§push(360);
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!_loc2_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§!j§(§§pop());
         }
      }
      
      public function §?!"§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§`!#§().GetAngle());
         if(_loc2_)
         {
            §§push(180);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§goto(addr39);
               }
            }
            §§goto(addr54);
         }
         addr39:
         §§push(§§pop() / Math.PI);
         if(_loc2_)
         {
            addr54:
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc2_)
         {
            return §§pop() % 360;
         }
      }
      
      public function §%!K§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§`!#§().SetLinearVelocity(param1);
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
                              if(_loc5_ || this)
                              {
                                 this.§3!=§();
                              }
                              if(!(_loc5_ || this))
                              {
                                 continue loop0;
                              }
                              if(_loc5_)
                              {
                                 addr57:
                                 break;
                              }
                              addr61:
                              while(true)
                              {
                                 this.§]!-§();
                                 continue loop0;
                              }
                           }
                           break;
                        }
                        continue loop1;
                     }
                     return;
                     addr24:
                  }
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr57);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§&!T§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(this.§`!#§());
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
                                    addr193:
                                    while(true)
                                    {
                                       §§push(this.§`!#§());
                                       addr158:
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          addr159:
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
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop10:
                                          while(_loc6_ || this)
                                          {
                                             §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§`!#§());
                                                while(true)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(§§pop().GetPosition());
                                                      while(_loc6_)
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop().y);
                                                            while(!(_loc5_ && param2))
                                                            {
                                                               §§push(param1);
                                                               while(_loc6_ || param2)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        addr65:
                                                                        return §§pop();
                                                                        addr127:
                                                                     }
                                                                     §§goto(addr192);
                                                                     addr58:
                                                                     if(_loc5_ && param3)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr65);
                                                                  }
                                                                  §§goto(addr193);
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop2;
                                                            addr100:
                                                         }
                                                         §§push(§§pop().GetPosition());
                                                         continue loop1;
                                                         if(!(_loc6_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(param2);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr50:
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(_loc5_ && this)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr58);
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr108);
                                                               }
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr100);
                                                         }
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§push(this.§`!#§());
                                                   addr154:
                                                   break;
                                                   if(!_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr32);
                                                }
                                                §§goto(addr158);
                                             }
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr127);
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
         §§goto(addr193);
      }
      
      public function §,!%§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§;!A§ = param1;
         }
      }
      
      public function §-r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§;!A§)
            {
               if(!_loc1_)
               {
                  this.§%!K§(this.§;!A§,false);
               }
               do
               {
                  this.§;!A§ = null;
               }
               while(!_loc2_);
               
               addr40:
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §]!-§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!param1)
            {
               if(!_loc3_)
               {
                  §§push(this.§`!#§());
                  if(_loc2_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr34:
                     §§push(param1.x);
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    addr73:
                                    §§pop();
                                    §§goto(addr104);
                                 }
                              }
                              if(!§§pop())
                              {
                                 §§push(this.§`!#§());
                                 if(!_loc3_)
                                 {
                                    §§pop().§;[§(Math.atan2(param1.x,param1.y));
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§goto(addr104);
                                       }
                                       else
                                       {
                                          addr122:
                                          this.§`!#§().§;[§(0);
                                          addr124:
                                          addr120:
                                       }
                                       addr104:
                                       if(!_loc3_)
                                       {
                                          addr118:
                                          §§push(param1.y == 0);
                                       }
                                       return;
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr122);
               }
               §§goto(addr73);
            }
            §§goto(addr34);
         }
         §§goto(addr73);
      }
      
      public function §3!=§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!param1)
            {
               addr20:
               param1 = this.§`!#§().GetLinearVelocity();
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!(_loc4_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || param1)
            {
               this.§@L§(_loc2_);
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function §#a§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§`!#§().§;[§(param1);
         }
      }
      
      public function §`!#§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§&!T§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§&!T§);
                  }
                  else
                  {
                     §§goto(addr66);
                  }
               }
               §§goto(addr66);
            }
            return §§pop().GetBody();
         }
         addr66:
         return null;
      }
      
      public function §"!;§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(param1 != -9999)
            {
               loop0:
               while(true)
               {
                  this.mX = param1;
                  addr121:
                  while(true)
                  {
                     this.mY = param2;
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§goto(addr76);
            }
         }
         §§goto(addr72);
      }
      
      public function §>!=§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(!(_loc6_ && _loc3_))
         {
            §§push(this.§5-§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr486:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr487:
                        while(true)
                        {
                           this.§5-§ = false;
                           addr481:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr485:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  loop5:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(true);
                           addr465:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr466:
                              while(true)
                              {
                              }
                           }
                        }
                        addr464:
                     }
                     while(true)
                     {
                        §§push(this.updateFlyingFrameAnimations(param2));
                        loop10:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop11:
                              while(true)
                              {
                                 §§push(true);
                                 loop12:
                                 while(!_loc6_)
                                 {
                                    _loc3_ = §§pop();
                                    loop13:
                                    while(true)
                                    {
                                       addr231:
                                       if(_loc6_ && param2)
                                       {
                                          continue;
                                       }
                                       §§push(§ for§);
                                       if(!(_loc6_ && param1))
                                       {
                                          if(_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                loop49:
                                                while(true)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         this.§0c§(param1);
                                                         loop50:
                                                         while(_loc5_ || param1)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               loop44:
                                                               while(true)
                                                               {
                                                                  §§push(this.§9!A§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = Math.round(this.mX);
                                                                     while(!_loc6_)
                                                                     {
                                                                        §§push(this.§9!A§);
                                                                        loop47:
                                                                        while(true)
                                                                        {
                                                                           §§pop().y = Math.round(this.mY);
                                                                           addr93:
                                                                           addr134:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr95:
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    addr102:
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop47;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§%n§);
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§3f§();
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc5_ || param2))
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§"6§);
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() > 1);
                                                                                                      addr374:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(4);
                                                                                                                     §§push(this.§%n§.§6?§.blurX - 4);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        if(_loc5_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / 20);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           addr338:
                                                                                                                           §§push(§§pop() % 28);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc5_ || param1)
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        loop34:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && param2))
                                                                                                                           {
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§%n§);
                                                                                                                                    loop35:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§6?§.blurX = _loc4_;
                                                                                                                                       loop36:
                                                                                                                                       while(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§%n§);
                                                                                                                                          loop37:
                                                                                                                                          while(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§pop().§6?§.blurY = _loc4_;
                                                                                                                                                addr269:
                                                                                                                                                while(_loc5_ || this)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§%n§);
                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§1-§(param2);
                                                                                                                                                            addr291:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc5_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr231);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§%n§);
                                                                                                                                                                           break loop37;
                                                                                                                                                                           addr148:
                                                                                                                                                                           if(_loc6_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc5_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              this.mY = this.§-e§;
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop44;
                                                                                                                                                                              }
                                                                                                                                                                              addr128:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr429);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr443);
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                              }
                                                                                                                                                                              break loop50;
                                                                                                                                                                           }
                                                                                                                                                                           addr408:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.updateBlinkingFrameAnimations(param2));
                                                                                                                                                                              if(!(_loc6_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_ && this)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr428);
                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr427:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr387);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr465);
                                                                                                                                                                        }
                                                                                                                                                                        addr434:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop5;
                                                                                                                                                                  addr376:
                                                                                                                                                               }
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop10;
                                                                                                                                                                  }
                                                                                                                                                                  addr428:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     addr429:
                                                                                                                                                                     loop52:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr387:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr428:
                                                                                                                                                               }
                                                                                                                                                               loop21:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop22;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop25;
                                                                                                                                                                  }
                                                                                                                                                                  addr443:
                                                                                                                                                                  while(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                        break loop50;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr486);
                                                                                                                                                                     continue loop21;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr428);
                                                                                                                                                            }
                                                                                                                                                            continue loop10;
                                                                                                                                                            addr291:
                                                                                                                                                            addr224:
                                                                                                                                                         }
                                                                                                                                                         continue loop35;
                                                                                                                                                      }
                                                                                                                                                      continue loop37;
                                                                                                                                                   }
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                                continue loop36;
                                                                                                                                                addr269:
                                                                                                                                             }
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr291);
                                                                                                                                             §§goto(addr252);
                                                                                                                                          }
                                                                                                                                          addr252:
                                                                                                                                       }
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr485);
                                                                                                                                 }
                                                                                                                                 §§goto(addr486);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr464);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr427);
                                                                                                                        }
                                                                                                                        §§goto(addr487);
                                                                                                                     }
                                                                                                                     §§goto(addr338);
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               §§goto(addr210);
                                                                                                            }
                                                                                                            addr309:
                                                                                                         }
                                                                                                         §§goto(addr376);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr466);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr128);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ || this))
                                                                              {
                                                                                 continue loop49;
                                                                              }
                                                                              §§goto(addr141);
                                                                              §§goto(addr95);
                                                                           }
                                                                           §§goto(addr269);
                                                                        }
                                                                     }
                                                                     addr170:
                                                                     while(true)
                                                                     {
                                                                        this.mX = this.§5!0§;
                                                                        §§goto(addr134);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr487);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr408);
                                                            §§goto(addr195);
                                                         }
                                                         addr195:
                                                      }
                                                      §§goto(addr481);
                                                   }
                                                   §§goto(addr269);
                                                }
                                             }
                                             this.§,E§ = this.§<!,§;
                                             §§goto(addr170);
                                          }
                                          §§goto(addr374);
                                       }
                                       §§goto(addr291);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           while(true)
                           {
                              §§goto(addr434);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr481);
      }
      
      public function §7!+§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§`!#§().GetPosition().x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§`!#§().GetPosition().y);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.§`o§ = this.§<!,§;
         }
         while(true)
         {
            this.§?!B§ = this.§5!0§;
            loop1:
            while(true)
            {
               this.§;!S§ = this.§-e§;
               while(true)
               {
                  §§push(this);
                  §§push(this.§`!#§().GetAngle());
                  if(_loc3_)
                  {
                     §§push(180);
                     if(_loc3_ || _loc1_)
                     {
                        addr105:
                        §§push(§§pop() * (§§pop() / Math.PI));
                        if(!_loc4_)
                        {
                           §§push(360);
                        }
                        §§pop().§<!,§ = §§pop();
                        loop3:
                        while(!_loc4_)
                        {
                           §§push(this);
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              §§push(§§pop() / §9!%§.§catch§);
                           }
                           §§pop().§5!0§ = §§pop();
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     §§push(§§pop() % §§pop());
                  }
                  §§goto(addr105);
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
      
      public function §0c§(param1:Number, param2:Number = -1) : void
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
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§4h§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1);
                        if(_loc4_ || param2)
                        {
                           §§push(§§pop() + " overriding to 0");
                        }
                        §§pop().log(§§pop());
                        while(true)
                        {
                           loop37:
                           while(!(_loc3_ && _loc3_))
                           {
                              §§push(param1);
                              loop38:
                              for(; _loc4_ || param1; while(!(_loc3_ && param2))
                              {
                                 §§goto(addr335);
                                 §§push(this.§<!,§);
                                 §§goto(addr243);
                              })
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(0);
                                 loop39:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop40:
                                    while(true)
                                    {
                                       loop41:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && param2))
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      this.§9K§ = 0;
                                                      loop42:
                                                      while(true)
                                                      {
                                                         this.mY = this.§-e§;
                                                         loop43:
                                                         while(true)
                                                         {
                                                            loop44:
                                                            while(true)
                                                            {
                                                               §§push(this.§<!,§);
                                                               loop45:
                                                               while(!_loc3_)
                                                               {
                                                                  §§push(this.§`o§);
                                                                  loop46:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     loop47:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop48:
                                                                           while(_loc4_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop49:
                                                                                 while(!(_loc3_ && param2))
                                                                                 {
                                                                                    §§pop();
                                                                                    loop50:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       loop51:
                                                                                       for(; _loc4_ || param1; if(!(_loc4_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       },§§goto(addr233),§§push(this.§`o§))
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop52:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            §§push(this.§`o§);
                                                                                                            loop55:
                                                                                                            for(; _loc4_ || param1; while(true)
                                                                                                            {
                                                                                                               if(!(_loc4_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop55;
                                                                                                               }
                                                                                                               §§goto(addr543);
                                                                                                            },§§goto(addr862))
                                                                                                            {
                                                                                                               §§push(this.§<!,§);
                                                                                                               loop56:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  loop57:
                                                                                                                  while(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop58:
                                                                                                                     while(_loc4_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              continue loop42;
                                                                                                                           }
                                                                                                                           addr644:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop66:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop50;
                                                                                                                              }
                                                                                                                              §§push(this.§`o§);
                                                                                                                              loop67:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§<!,§);
                                                                                                                                 loop68:
                                                                                                                                 while(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr510:
                                                                                                                                    if(_loc4_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                       loop69:
                                                                                                                                       while(!(_loc3_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          loop70:
                                                                                                                                          while(!_loc3_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                }
                                                                                                                                                addr529:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§`o§);
                                                                                                                                                      continue loop38;
                                                                                                                                                   }
                                                                                                                                                   addr427:
                                                                                                                                                   if(_loc4_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(this.§<!,§);
                                                                                                                                                         if(_loc4_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1);
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§`o§);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - 360);
                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr472:
                                                                                                                                                                     §§push(§§pop() - this.§<!,§);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr488);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr486);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr472);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr486);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr488);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§08§.§8@§.mLevelEngine.§@2§);
                                                                                                                                                         break loop45;
                                                                                                                                                      }
                                                                                                                                                      addr901:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      loop72:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            addr670:
                                                                                                                                                            this.§,E§ = this.§<!,§;
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§`o§);
                                                                                                                                                         while(_loc4_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§<!,§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               addr405:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(180);
                                                                                                                                                                  addr406:
                                                                                                                                                                  while(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop52;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop39;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         loop14:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(-1);
                                                                                                                                                            addr879:
                                                                                                                                                            addr900:
                                                                                                                                                            while(_loc4_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     loop17:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        param1 = §§pop();
                                                                                                                                                                        addr896:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§5!0§);
                                                                                                                                                                           continue loop17;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  addr170:
                                                                                                                                                                  if(!(_loc3_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr233:
                                                                                                                                                                     §§push(this.§<!,§);
                                                                                                                                                                     loop91:
                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                        if(_loc4_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop70;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    loop92:
                                                                                                                                                                                    for(; §§pop(); continue loop69)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop72;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(this.§<!,§);
                                                                                                                                                                                             if(!(_loc3_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1);
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§`o§);
                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + 360);
                                                                                                                                                                                                      if(!(_loc3_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - this.§<!,§);
                                                                                                                                                                                                         if(_loc3_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr152:
                                                                                                                                                                                                         §§pop().§,E§ = §§pop() + §§pop() / §§pop();
                                                                                                                                                                                                         addr153:
                                                                                                                                                                                                         if(_loc4_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop84:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§<!,§);
                                                                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop51;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr243:
                                                                                                                                                                                                                  addr243:
                                                                                                                                                                                                                  while(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop55;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(180);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                        addr254:
                                                                                                                                                                                                                        addr374:
                                                                                                                                                                                                                        while(_loc4_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr263:
                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                    §§push(this.§<!,§);
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param1);
                                                                                                                                                                                                                                       if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§`o§);
                                                                                                                                                                                                                                          if(_loc4_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - this.§<!,§);
                                                                                                                                                                                                                                             if(_loc4_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr307:
                                                                                                                                                                                                                                                addr308:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§,E§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop92;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr842:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                      §§push(this.§5!0§);
                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + this.§?g§);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().mX = §§pop();
                                                                                                                                                                                                                                                      addr814:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr427);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr785);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr307);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr308);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr307);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§`o§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop67;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr170);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr405);
                                                                                                                                                                                                                                 addr168:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              continue loop84;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr644);
                                                                                                                                                                                                                           §§goto(addr254);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop42;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr52:
                                                                                                                                                                                                                     if(!(_loc4_ || param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc4_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(180);
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr197:
                                                                                                                                                                                                                                 while(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr199:
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop50;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§<!,§);
                                                                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§`o§);
                                                                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop91;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr404);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr50:
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr52);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr168);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr405);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr858);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr814);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr307);
                                                                                                                                                                                                                                       §§goto(addr199);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop72;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop57;
                                                                                                                                                                                                                                 addr197:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop92;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr529);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr254);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr406);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr253);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop39;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr788);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop37;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr488:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc4_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr486:
                                                                                                                                                                                                               §§push(§§pop() / param2);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().§,E§ = §§pop() + §§pop();
                                                                                                                                                                                                            if(_loc4_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr20);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop47;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr743:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(this.§-e§);
                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + this.§9K§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().mY = §§pop();
                                                                                                                                                                                                                  continue loop44;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr20);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§?g§ = 0;
                                                                                                                                                                                                                           addr858:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.mX = this.§5!0§;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr855:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr785:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§-e§);
                                                                                                                                                                                                                        addr788:
                                                                                                                                                                                                                        addr908:
                                                                                                                                                                                                                        while(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§;!S§);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                                                                              break loop49;
                                                                                                                                                                                                                              §§goto(addr510);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           addr909:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              param2 = §§pop();
                                                                                                                                                                                                                              break loop41;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr618:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr20);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                         addr151:
                                                                                                                                                                                                         addr150:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc4_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(param2);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr151);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr150);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr153);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr152);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr200);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr152);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr20:
                                                                                                                                                                                    return;
                                                                                                                                                                                    addr92:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr197);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr374);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr263);
                                                                                                                                                                                 addr371:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr261);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr352);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr197);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop56;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr243);
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     continue loop68;
                                                                                                                                                                     addr233:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr909);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr901);
                                                                                                                                                               }
                                                                                                                                                               addr876:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop14;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr395:
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop43;
                                                                                                                                                      }
                                                                                                                                                      addr530:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr20);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr530);
                                                                                                                                          }
                                                                                                                                          continue loop58;
                                                                                                                                          if(!(_loc4_ || param1))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr92);
                                                                                                                                       }
                                                                                                                                       while(_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop66;
                                                                                                                                          §§goto(addr518);
                                                                                                                                       }
                                                                                                                                       addr518:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr855);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(param1);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§?!B§);
                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - this.§5!0§);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr840:
                                                                                                                                                         §§push(§§pop() / param2);
                                                                                                                                                      }
                                                                                                                                                      §§pop().§?g§ = §§pop();
                                                                                                                                                      §§goto(addr842);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr840);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr854:
                                                                                                                                       addr571:
                                                                                                                                    }
                                                                                                                                    §§goto(addr792);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr553);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              break loop47;
                                                                                                                           }
                                                                                                                           addr874:
                                                                                                                        }
                                                                                                                        addr853:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr854);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop41;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               addr852:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr853);
                                                                                                               }
                                                                                                               §§goto(addr628);
                                                                                                            }
                                                                                                            addr628:
                                                                                                            addr851:
                                                                                                         }
                                                                                                         §§goto(addr670);
                                                                                                         if(_loc3_ && param2)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop49;
                                                                                                         }
                                                                                                         if(_loc4_ || param2)
                                                                                                         {
                                                                                                            §§goto(addr371);
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop37;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr668:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr852);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr908);
                                                                                          }
                                                                                       }
                                                                                       continue loop45;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop48;
                                                                                 }
                                                                              }
                                                                              §§goto(addr668);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop40;
                                                                              }
                                                                              §§goto(addr795);
                                                                           }
                                                                        }
                                                                        §§goto(addr874);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr851);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr907);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr784:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr896);
                                             }
                                             §§goto(addr784);
                                          }
                                          else
                                          {
                                             §§push(this);
                                             §§push(param1);
                                             if(!(_loc3_ && param2))
                                             {
                                                §§push(this.§;!S§);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() - this.§-e§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         addr741:
                                                         §§push(§§pop() / param2);
                                                      }
                                                      §§pop().§9K§ = §§pop();
                                                      §§goto(addr743);
                                                   }
                                                }
                                             }
                                             §§goto(addr741);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr876);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr900);
                                 §§goto(addr752);
                              }
                              addr752:
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr899);
                  }
               }
            }
         }
         §§goto(addr589);
      }
      
      public function get §[P§() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§ for§)
            {
            }
         }
         return null;
      }
      
      public function § !?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§5x§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§,!§.§?T§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr69:
                           §§pop();
                           return this.§5x§ == §,!§.§"A§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §7!?§() : Boolean
      {
         return this.§5x§ == §,!§.§@!%§;
      }
      
      public function §;!B§() : Boolean
      {
         return this.§5x§ == §,!§.§"!V§;
      }
      
      public function §?u§() : Boolean
      {
         return this.§5x§ == §,!§.§"A§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§5x§ == §,!§.§^!J§;
      }
      
      public function isGround() : Boolean
      {
         return this.§5x§ == §,!§.§&J§;
      }
      
      public function §?!<§() : Boolean
      {
         return this.§5x§ == §,!§.§&!Q§;
      }
      
      public function §<!<§() : Boolean
      {
         return this.§5x§ == §,!§.§!?§;
      }
      
      public function §"!J§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§ h§);
            loop0:
            while(true)
            {
               §§push(§§pop() == "MISC_EXPLOSIVE_TNT");
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              §§push(true);
                           }
                           else
                           {
                              while(true)
                              {
                                 addr24:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!_loc2_)
                                    {
                                       break loop1;
                                    }
                                 }
                              }
                              addr65:
                           }
                           while(!_loc1_)
                           {
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                           }
                           return §§pop();
                           addr62:
                        }
                        §§goto(addr24);
                     }
                     return §§pop();
                     addr55:
                  }
               }
               §§goto(addr89);
            }
         }
         §§goto(addr65);
      }
      
      public function §!!A§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§7!?§());
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
                           §§push(§§pop());
                           loop13:
                           while(true)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              if(!§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(_loc2_ || this)
                                    {
                                       §§push(this.§<!<§());
                                       loop8:
                                       for(; !_loc1_; if(!(_loc2_ || _loc1_))
                                       {
                                          continue;
                                       },§§goto(addr47))
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop9:
                                          while(!_loc1_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc2_ || _loc1_)
                                                {
                                                   break;
                                                }
                                                continue loop13;
                                             }
                                             if(!§§pop())
                                             {
                                                return §§pop();
                                             }
                                             addr47:
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop6;
                                                }
                                                §§pop();
                                                if(!(_loc2_ || this))
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§0=§);
                                                   if(_loc2_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(_loc2_ || this)
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             break loop7;
                                          }
                                       }
                                       while(!(_loc1_ && _loc2_))
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr93);
                                    }
                                 }
                                 addr125:
                              }
                              §§goto(addr59);
                           }
                        }
                        addr115:
                     }
                     §§goto(addr149);
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §0K§() : Number
      {
         return Number(Math.sqrt(this.§`!#§().GetLinearVelocity().x * this.§`!#§().GetLinearVelocity().x + this.§`!#§().GetLinearVelocity().y * this.§`!#§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc9_ || param2)
         {
            §§push(this.§;!B§());
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§08§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§1c§());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§9!B§);
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
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      addr597:
                                                      if(_loc10_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc10_ && param1)
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr612:
                                                      §§push(§§pop());
                                                      if(_loc10_ && param2)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr620:
                                                         §§pop();
                                                         addr621:
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr569:
                                                               §§push(this.§4^§);
                                                               §§push(this.§,>§);
                                                               if(!_loc9_)
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§9!B§);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc9_ || param2)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       loop19:
                                                                                       for(; !_loc10_; while(true)
                                                                                       {
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§goto(addr260);
                                                                                                §§push(1);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop19;
                                                                                       },§§goto(addr667))
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop20:
                                                                                                for(; !_loc10_; while(_loc9_ || this)
                                                                                                {
                                                                                                   if(!(_loc10_ && param3))
                                                                                                   {
                                                                                                      §§goto(addr469);
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr685);
                                                                                                   §§goto(addr38);
                                                                                                })
                                                                                                {
                                                                                                   param1 = §§pop();
                                                                                                   loop21:
                                                                                                   for(; _loc9_ || this; while(true)
                                                                                                   {
                                                                                                      if(_loc9_ || param3)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            this.§4^§ = 1;
                                                                                                            §§goto(addr237);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                      §§goto(addr135);
                                                                                                   },§§goto(addr713))
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(param2);
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               loop24:
                                                                                                               while(!_loc10_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop25:
                                                                                                                     for(; !(_loc10_ && this); while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_ && param3)
                                                                                                                        {
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        if(!(_loc10_ && param1))
                                                                                                                        {
                                                                                                                           §§goto(addr340);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr590:
                                                                                                                           if(_loc9_ || param2)
                                                                                                                           {
                                                                                                                              §§goto(addr597);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr697);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr696:
                                                                                                                        }
                                                                                                                     })
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§!!A§());
                                                                                                                           loop27:
                                                                                                                           while(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              loop28:
                                                                                                                              while(_loc9_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(int(Math.min(this.§4^§,int(param1))));
                                                                                                                                          loop31:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             loop32:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   addr644:
                                                                                                                                                   §§push(param1);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr648:
                                                                                                                                                      if(§§pop() >= this.§9!B§ / 2)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§,!L§(§=!5§.§3!P§);
                                                                                                                                                            §§goto(addr655);
                                                                                                                                                            §§goto(addr621);
                                                                                                                                                         }
                                                                                                                                                         addr651:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr584);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(§9!%§.§#6§.getValue());
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * _loc7_);
                                                                                                                                                         continue loop20;
                                                                                                                                                      }
                                                                                                                                                      continue loop31;
                                                                                                                                                   }
                                                                                                                                                   addr469:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      loop35:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§08§);
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop().§8@§);
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         §§push(§^_§.§][§);
                                                                                                                                                         if(_loc9_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§4^§ > param1);
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr419:
                                                                                                                                                                     §§push(param3);
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr422:
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§`!#§().GetPosition().x,this.§`!#§().GetPosition().y,§-&§.§7!W§(this.§ h§));
                                                                                                                                                               while(!(_loc10_ && this))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param5);
                                                                                                                                                                     loop38:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        loop39:
                                                                                                                                                                        while(_loc9_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr364:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr342:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this);
                                                                                                                                                                                       §§push(this.§4^§);
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - param1);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§4^§ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr351:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§4^§);
                                                                                                                                                                                       continue loop19;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr340:
                                                                                                                                                                              }
                                                                                                                                                                              addr279:
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc10_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc10_ && this)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop24;
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop51:
                                                                                                                                                                                 while(!(_loc10_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    loop52:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§ !?§());
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc10_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr364);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop38;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr157:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§4^§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc10_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr169:
                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                         if(_loc10_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc9_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr667:
                                                                                                                                                                                                                        §§push(param1);
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     this.§,!L§(§=!5§.§,! §);
                                                                                                                                                                                                                     addr275:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr686:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                  while(_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop39;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr279);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop25;
                                                                                                                                                                                                                  break loop16;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                               §§goto(addr169);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc10_ && param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr699:
                                                                                                                                                                                                               if(_loc10_ && this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop6;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr685:
                                                                                                                                                                                                                  §§goto(addr686);
                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                  §§push(12);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr178);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr676);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop16;
                                                                                                                                                                                                            addr260:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§,!L§(§=!5§.§,! §);
                                                                                                                                                                                                            loop58:
                                                                                                                                                                                                            while(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop25;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr655:
                                                                                                                                                                                                                  addr584:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc10_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.addDamageParticles(this.§08§.§8@§.particles,param1);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc9_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop58;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr351);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop52;
                                                                                                                                                                                                            addr728:
                                                                                                                                                                                                            if(!(_loc10_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr747);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop0;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr178);
                                                                                                                                                                                                         §§goto(addr178);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§4^§);
                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                   if(!(_loc10_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr38:
                                                                                                                                                                                                      if(!(_loc10_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr754:
                                                                                                                                                                                                            §§goto(addr633);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop20;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc9_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr275);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop27;
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                    §§goto(addr295);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr620);
                                                                                                                                                                                 addr295:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr223);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop3;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop32;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr422);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr419);
                                                                                                                                                      }
                                                                                                                                                      continue loop2;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr633:
                                                                                                                                                      while(_loc9_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§9!B§);
                                                                                                                                                         continue loop16;
                                                                                                                                                      }
                                                                                                                                                      return §§pop();
                                                                                                                                                   }
                                                                                                                                                   addr631:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr680);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr699);
                                                                                                                                          }
                                                                                                                                          if(!(_loc9_ || this))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr157);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr352);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              break loop21;
                                                                                                                           }
                                                                                                                           §§goto(addr547);
                                                                                                                           if(!(_loc10_ && this))
                                                                                                                           {
                                                                                                                              if(_loc9_ || param1)
                                                                                                                              {
                                                                                                                                 §§goto(addr156);
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§goto(addr590);
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr479);
                                                                                                               }
                                                                                                               §§goto(addr612);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr620);
                                                                                                   }
                                                                                                   §§push(this);
                                                                                                   §§push(this.§,>§);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop() - 1);
                                                                                                   }
                                                                                                   §§pop().§4^§ = §§pop();
                                                                                                   §§goto(addr583);
                                                                                                }
                                                                                                §§goto(addr659);
                                                                                             }
                                                                                             addr747:
                                                                                             return this.§4^§;
                                                                                          }
                                                                                          §§goto(addr644);
                                                                                       }
                                                                                       §§goto(addr569);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr648);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr569);
                                                                        }
                                                                     }
                                                                     §§goto(addr644);
                                                                  }
                                                                  addr659:
                                                                  return §§pop();
                                                                  §§push(this.§4^§);
                                                               }
                                                               §§goto(addr655);
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                            §§goto(addr686);
                                                         }
                                                         §§goto(addr651);
                                                      }
                                                      §§goto(addr655);
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr696);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr728);
                     }
                  }
               }
            }
            §§goto(addr754);
            §§push(this.§4^§);
         }
         §§goto(addr686);
      }
      
      public function §,!L§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §@m§.§??§(param1,this.§6"§.§2#§);
         }
      }
      
      public function §=d§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§6"§.material.§1a§(param1));
         if(!_loc3_)
         {
            return §§pop() * this.§"6§;
         }
      }
      
      public function §<=§(param1:String) : Number
      {
         return this.§6"§.material.§-f§(param1);
      }
      
      public function §7J§() : String
      {
         return this.§6"§.material.mName;
      }
      
      public function §#X§() : Number
      {
         return this.§6"§.§^!;§();
      }
      
      public function §0J§() : int
      {
         return this.§6"§.§%b§();
      }
      
      public function §`9§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§`!#§().IsAwake());
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
                        addr201:
                        loop4:
                        while(true)
                        {
                           §§push(this.§ !?§());
                           loop5:
                           while(_loc2_ || _loc1_)
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(Boolean(§§pop()));
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          §§pop();
                                          addr193:
                                          while(true)
                                          {
                                             §§push(this.§4^§ == this.§,>§);
                                             addr153:
                                             while(!_loc3_)
                                             {
                                             }
                                             continue loop18;
                                          }
                                       }
                                       addr182:
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
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(Math.abs(this.§`!#§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(_loc2_ || this)
                                                      {
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop13:
                                                            for(; !_loc3_; while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc2_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§goto(addr76);
                                                                  }
                                                                  break loop2;
                                                               }
                                                               continue loop6;
                                                            })
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§pop();
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 break loop14;
                                                                              }
                                                                              §§push(Math.abs(this.§`!#§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                              if(_loc2_ || this)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              addr76:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(Math.abs(this.§`!#§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                                 addr107:
                                                                                 continue loop14;
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    break loop15;
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          §§goto(addr134);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr182);
                           }
                           continue loop1;
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr201);
      }
      
      public function §5!@§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§`!#§().IsAwake());
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr46:
                     §§push(true);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr64);
                     }
                  }
                  else
                  {
                     addr65:
                     return this.isMoving();
                  }
                  return §§pop();
               }
               §§goto(addr65);
            }
            addr64:
            return §§pop();
         }
         §§goto(addr46);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(_loc3_ || _loc1_)
         {
            §§push(Math.abs(this.§`!#§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
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
                        addr144:
                        loop8:
                        while(true)
                        {
                           §§push(Math.abs(this.§`!#§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          if(!(_loc3_ || this))
                                          {
                                             continue loop8;
                                          }
                                          §§push(Math.abs(this.§`!#§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                          if(_loc3_)
                                          {
                                             do
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(true);
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               break loop4;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr61:
                                                   }
                                                   §§goto(addr61);
                                                }
                                                §§push(false);
                                             }
                                             while(!_loc3_);
                                             
                                             if(!_loc2_)
                                             {
                                                return §§pop();
                                             }
                                             continue loop0;
                                             addr49:
                                          }
                                          §§goto(addr61);
                                       }
                                       continue loop8;
                                    }
                                    return §§pop();
                                    addr111:
                                 }
                                 §§goto(addr49);
                              }
                              continue loop1;
                              addr101:
                           }
                           §§goto(addr111);
                        }
                     }
                  }
                  §§goto(addr101);
               }
            }
         }
         §§goto(addr144);
      }
      
      public function §&c§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§"6§ = param1;
            while(true)
            {
               if(this.§"6§ > 1)
               {
                  if(_loc2_)
                  {
                     §§push(this.§%n§);
                     break;
                  }
               }
               else
               {
                  §§push(this.§%n§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().§6?§ = null;
                  if(!(_loc3_ && param1))
                  {
                     continue;
                  }
               }
            }
            §§pop().§7f§();
         }
         §§goto(addr24);
      }
      
      public function §>!&§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!_loc3_)
         {
            §§push(this.§6"§.§ s§());
            loop0:
            while(true)
            {
               if(§§pop() != §#!+§.§#D§)
               {
                  §§push(this.§`!#§().GetMass());
                  loop1:
                  while(true)
                  {
                     §§push(this.§&!T§.§4! §());
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
                              if(!(_loc3_ && this))
                              {
                                 _loc2_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(param1)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             loop7:
                                             while(_loc4_ || this)
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(this.§5R§());
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc4_)
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop10:
                                                            while(_loc4_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               loop11:
                                                               while(!_loc3_)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(this.§7<§);
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.§7<§);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              continue loop8;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr212:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr213:
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr214:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       addr215:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr23);
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr211:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr81:
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        addr84:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              addr191:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§%n§.mH);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§9!%§.§catch§);
                                                                                    }
                                                                                    addr207:
                                                                                 }
                                                                                 addr209:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr211);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr207);
                                                                           addr23:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                     addr42:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr188:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop0;
                                                            addr147:
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr212);
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                       §§goto(addr42);
                                    }
                                    §§goto(addr215);
                                 }
                              }
                              §§goto(addr213);
                           }
                        }
                     }
                  }
               }
               §§goto(addr188);
            }
         }
         §§goto(addr108);
      }
      
      public function §5R§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(_loc2_ || _loc3_)
         {
            §§push(_loc1_);
            if(_loc2_ || this)
            {
               §§push(_loc1_);
               if(!(_loc3_ && this))
               {
                  §§push(2);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc2_ || _loc1_)
                     {
                        addr63:
                        §§push(§§pop() * Math.min(10,this.§%n§.§#i§ - 1));
                        if(_loc2_)
                        {
                           addr74:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        addr88:
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           _loc1_ = §§pop();
                           addr92:
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr74);
               }
               §§goto(addr63);
            }
            §§goto(addr88);
         }
         §§goto(addr92);
      }
      
      public function §1!0§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§`!#§().GetLinearVelocity().x);
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`!#§().GetLinearVelocity().y);
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
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!_loc6_)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(_loc5_);
               addr144:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr148:
                  while(true)
                  {
                     _loc2_ = §§pop();
                  }
               }
               addr120:
               if(_loc6_ && param1)
               {
                  continue;
               }
               addr128:
               _loc3_ = Number(§§pop());
               while(_loc7_)
               {
                  this.§`!#§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                  if(!_loc6_)
                  {
                     return;
                  }
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc6_)
                  {
                     if(_loc7_ || this)
                     {
                        §§push(_loc5_);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc7_ || _loc3_)
                           {
                              §§goto(addr120);
                           }
                           §§goto(addr128);
                        }
                        else
                        {
                           §§goto(addr144);
                        }
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr128);
               }
               addr149:
            }
         }
         §§goto(addr149);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§&$§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§,v§) : void
      {
      }
      
      public function addDamageParticles(param1:§,v§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §!K§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = this.§`!#§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!(_loc5_ && param1))
         {
            §§push(param2.x * param1);
            if(_loc6_ || param2)
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
            if(_loc6_ || param1)
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
               this.§`!#§().§0!%§(_loc4_);
            }
            while(_loc5_ && param3);
            
         }
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && param1))
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  §§push(this.§?!"§());
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           loop4:
                           while(true)
                           {
                              §§push(360);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop6:
                                 while(!_loc6_)
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
                                          loop9:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                §§push(Number(0));
                                                loop11:
                                                while(!_loc6_)
                                                {
                                                   _loc4_ = §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         continue loop7;
                                                      }
                                                      loop28:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr233:
                                                         loop30:
                                                         while(true)
                                                         {
                                                            addr150:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(param1);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop() / 2);
                                                                        loop18:
                                                                        for(; §§pop() >= §§pop(); if(!(_loc5_ || this))
                                                                        {
                                                                           continue;
                                                                        },§§push(§§pop() + §§pop()),if(!(_loc6_ && param2))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 §§goto(addr108);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr224);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr170);
                                                                              addr168:
                                                                           }
                                                                        },§§goto(addr108))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 §§push(§§pop() - _loc4_);
                                                                                 continue;
                                                                              }
                                                                              addr170:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr171:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          addr188:
                                                                                          §§push(Number(§§pop()));
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                      addr58:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§@L§(_loc3_);
                                                                                                      loop22:
                                                                                                      while(_loc5_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(this.§?!"§());
                                                                                                            if(_loc5_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() + param1);
                                                                                                            }
                                                                                                            §§pop().§@L§(§§pop());
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr48:
                                                                                                               if(_loc5_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      break loop18;
                                                                                                      §§goto(addr200);
                                                                                                   }
                                                                                                   addr200:
                                                                                                   continue loop0;
                                                                                                }
                                                                                                addr221:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   continue loop27;
                                                                                                }
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          continue loop8;
                                                                                          addr188:
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       addr223:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() % §§pop());
                                                                                          addr224:
                                                                                          while(_loc5_ || param1)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             continue loop28;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr108:
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop28;
                                                                                 }
                                                                                 §§goto(addr171);
                                                                              }
                                                                              §§goto(addr188);
                                                                           }
                                                                           §§goto(addr188);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop30;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr168);
                                                                        }
                                                                     }
                                                                     §§goto(addr223);
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                               §§goto(addr188);
                                                               continue loop30;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop4;
                                             }
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
               }
            }
            §§goto(addr32);
         }
         §§goto(addr233);
      }
      
      public function §6q§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§3!X§(this.§`!#§().GetAngle()));
         if(_loc3_ || _loc3_)
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
               if(!_loc4_)
               {
                  §§push(360);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_)
                     {
                        addr118:
                        §§push(§§pop() / 1000);
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
                           addr122:
                           while(true)
                           {
                              §§push(§"d§(_loc2_));
                              if(!(_loc4_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr118);
            }
         }
      }
      
      public function §8q§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param1))
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§`!#§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!_loc14_)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc14_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(!(_loc14_ && this))
         {
            §§push(§§pop() - param2.y);
            if(_loc15_ || _loc3_)
            {
               addr68:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc15_)
            {
               §§push(_loc4_);
               if(_loc15_)
               {
                  §§push(0);
                  if(!(_loc14_ && this))
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc14_)
                     {
                        if(§§pop())
                        {
                           if(!_loc14_)
                           {
                              addr90:
                              §§pop();
                              if(!(_loc14_ && param2))
                              {
                                 §§push(_loc5_);
                                 if(!(_loc14_ && this))
                                 {
                                    addr108:
                                    if(§§pop() == 0)
                                    {
                                       if(!(_loc14_ && this))
                                       {
                                          §§goto(addr116);
                                       }
                                       else
                                       {
                                          addr117:
                                          §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                                       }
                                    }
                                    §§goto(addr117);
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(_loc4_);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() / _loc5_);
                                    if(!(_loc14_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(Math.atan(_loc7_) * 180);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() / Math.PI);
                                    if(_loc15_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc8_:* = §§pop();
                                 if(_loc15_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc15_)
                                    {
                                       §§push(0);
                                       if(!_loc14_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                addr187:
                                                §§push(_loc8_);
                                                if(_loc15_)
                                                {
                                                   addr191:
                                                   §§push(§§pop() + 180);
                                                   if(_loc15_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc15_)
                                                      {
                                                         _loc8_ = §§pop();
                                                         addr198:
                                                         §§push(_loc8_);
                                                         if(_loc15_)
                                                         {
                                                            §§push(param1);
                                                            if(_loc15_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc15_ || param1)
                                                               {
                                                                  addr213:
                                                                  §§push(Number(§§pop()));
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            if(_loc15_)
                                                            {
                                                               §§push(§§pop() * Math.PI);
                                                               if(_loc15_)
                                                               {
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            addr222:
                                                            §§push(§§pop() / 180);
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               addr231:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(Math.sin(_loc10_) * _loc6_);
                                                            if(_loc15_ || param1)
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
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               this.§`!#§().§0!%§(_loc13_);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                   }
                                                }
                                                §§goto(addr213);
                                             }
                                          }
                                          §§goto(addr198);
                                       }
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr117);
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr108);
            }
            addr116:
            return;
         }
         §§goto(addr68);
      }
   }
}
