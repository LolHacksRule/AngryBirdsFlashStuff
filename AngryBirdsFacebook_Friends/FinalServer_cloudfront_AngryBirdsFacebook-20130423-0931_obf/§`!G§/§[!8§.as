package §`!G§
{
   import §!"3§.b2PolygonShape;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §+!c§.§;!=§;
   import §,"[§.b2Settings;
   import §-f§.§+"R§;
   import §-f§.§8!<§;
   import §-f§.§9L§;
   import §-f§.§@!M§;
   import §-f§.§[!J§;
   import §4!<§.§'!S§;
   import §4!<§.§;P§;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2BodyDef;
   import §6"1§.b2FilterData;
   import §6"1§.b2Fixture;
   import §6"1§.b2World;
   import §8m§.§@"M§;
   import flash.geom.Point;
   
   public class §[!8§
   {
      
      public static const §<!k§:uint;
      
      public static const §^"-§:uint;
      
      public static const §18§:uint;
      
      public static const §=!S§:uint;
      
      public static const §`!"§:Boolean = true;
      
      public static const §,"A§:Number = 5;
      
      public static const §&!,§:Number = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§§findproperty(§<!k§));
            §§push(1);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§<!k§ = §§pop();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§^"-§));
               §§push(1);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§^"-§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(§§findproperty(§18§));
                  §§push(1);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§18§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§§findproperty(§=!S§));
                     §§push(1);
                     if(_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§=!S§ = §§pop();
                     loop3:
                     while(true)
                     {
                        §`!"§ = true;
                        loop4:
                        while(!_loc2_)
                        {
                           continue loop0;
                           while(true)
                           {
                              §,"A§ = 5;
                              do
                              {
                                 §&!,§ = 10;
                              }
                              while(!(_loc1_ || §[!8§));
                              
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private var §+7§:String;
      
      private var §[!q§:int;
      
      private var §#"'§:int;
      
      public var §@x§:String;
      
      public var §<!G§:int;
      
      protected var §!L§:§9L§;
      
      private var §>!=§:§8"=§;
      
      private var mWorld:b2World;
      
      protected var §0"9§:String = "";
      
      protected var §!"F§:int = 1;
      
      private var § !o§:b2Fixture;
      
      private var §7l§:b2Body;
      
      private var §4%§:b2Vec2;
      
      public var § d§:Number;
      
      public var §^!2§:Number;
      
      private var §2! §:Number;
      
      private var §;o§:Boolean = false;
      
      private var §1!3§:Number;
      
      private var §7!b§:Number;
      
      private var §#3§:Number;
      
      private var §9!t§:Number;
      
      private var §#c§:Number;
      
      private var §1!O§:Number;
      
      public var §-v§:Number = 1;
      
      private var §'!T§:Boolean = false;
      
      public var §8!N§:Number = 0;
      
      public var §?!>§:Number = 0;
      
      protected var §,d§:Boolean = false;
      
      public var §2!8§:§+T§;
      
      protected var §?!T§:Sprite;
      
      private var §4!K§:Number = 0;
      
      private var §7!#§:Number = 0;
      
      private var §!"W§:Number = 0;
      
      protected var §<[§:Number = 1.0;
      
      private var §>2§:Boolean = false;
      
      protected var §?"!§:§%"B§;
      
      private var §]=§:Boolean = true;
      
      public function §[!8§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc17_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§@x§ = param6;
               loop1:
               while(true)
               {
                  this.§!L§ = §8!<§.§3"[§(param6);
                  loop2:
                  while(true)
                  {
                     this.§>!=§ = param1;
                     while(true)
                     {
                        this.§?!T§ = param2;
                        loop4:
                        while(true)
                        {
                           this.§<[§ = param10;
                           loop5:
                           while(true)
                           {
                              this.§>2§ = param11;
                              loop6:
                              while(true)
                              {
                                 this.§[!q§ = param5;
                                 loop7:
                                 while(!_loc17_)
                                 {
                                    this.§<!G§ = this.§!L§.§<!G§;
                                    while(true)
                                    {
                                       this.§#"'§ = this.§!L§.§9C§();
                                       continue loop5;
                                       addr71:
                                       if(!(_loc16_ || this))
                                       {
                                          continue;
                                       }
                                       if(!_loc16_)
                                       {
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          this.mWorld = param3;
                                          if(_loc16_)
                                          {
                                             if(!_loc16_)
                                             {
                                                while(_loc16_)
                                                {
                                                   §§push(this.§2!8§);
                                                   if(_loc16_ || param3)
                                                   {
                                                      if(§§pop().§2"0§(param1.mLevelMain.animationManager))
                                                      {
                                                         §§goto(addr39);
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                }
                                                continue loop7;
                                                addr136:
                                             }
                                             if(_loc17_)
                                             {
                                                continue loop4;
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                §§push(this.§2!8§);
                                                if(_loc16_)
                                                {
                                                   §§push(this.§#"'§);
                                                   if(_loc16_ || param2)
                                                   {
                                                      §§pop().§%c§(§§pop() == §+"R§.§"c§);
                                                      loop14:
                                                      while(_loc16_ || this)
                                                      {
                                                         addr64:
                                                         if(_loc16_ || param3)
                                                         {
                                                            §§goto(addr71);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§2!8§);
                                                               addr98:
                                                               while(true)
                                                               {
                                                                  §§push(this.§#"'§);
                                                                  addr100:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§=9§(§§pop(),this.§!L§.§9!+§(),this.§!L§.§6d§() / §'!S§.§2"<§,this.§!L§.§&"'§() / §'!S§.§2"<§);
                                                                     break loop14;
                                                                  }
                                                               }
                                                               §§goto(addr64);
                                                            }
                                                            addr96:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            break loop13;
                                                         }
                                                         if(!_loc17_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr57:
                                                   }
                                                   §§goto(addr100);
                                                }
                                             }
                                             continue loop0;
                                             addr39:
                                             §§goto(addr98);
                                          }
                                          §§goto(addr57);
                                       }
                                       var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                                       if(!(_loc17_ && param3))
                                       {
                                          this.§7l§ = this.mWorld.§@H§(_loc12_);
                                          if(_loc16_ || param2)
                                          {
                                             addr250:
                                             this.§7l§.§^!>§(this);
                                             if(!(_loc17_ && param1))
                                             {
                                                addr261:
                                                §§push(this.§#"'§);
                                                if(!(_loc17_ && param2))
                                                {
                                                   §§push(§+"R§.§[=§);
                                                   if(!(_loc17_ && param3))
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            §§push(b2PolygonShape);
                                                            §§push(this.§!L§.shape.§,>§);
                                                            if(_loc16_ || this)
                                                            {
                                                               §§push(param10);
                                                               if(_loc16_)
                                                               {
                                                                  addr298:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(this.§!L§.shape.§`;§);
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     addr309:
                                                                     §§push(§§pop() * param10);
                                                                  }
                                                                  _loc14_ = §§pop().§`!P§(§§pop(),§§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     this.§ !o§ = this.§7l§.CreateFixture2(_loc14_,this.§!L§.§%o§());
                                                                     if(_loc16_ || param3)
                                                                     {
                                                                        addr397:
                                                                        §§push(this.§ !o§);
                                                                        if(!(_loc17_ && param3))
                                                                        {
                                                                           §§push(this.§!L§);
                                                                           if(!(_loc17_ && param2))
                                                                           {
                                                                              §§push(§§pop().§'"3§());
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§pop().§5L§(§§pop());
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr426:
                                                                                    this.§ !o§.§-!e§(this.§!L§.§3"@§());
                                                                                 }
                                                                                 var _loc13_:b2FilterData = new b2FilterData();
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(this.§!!n§());
                                                                                    loop19:
                                                                                    for(; !§§pop(); while(true)
                                                                                    {
                                                                                       if(!(_loc17_ && this))
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§goto(addr524);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop19;
                                                                                    },§§goto(addr488))
                                                                                    {
                                                                                       §§push(this.§@x§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                          continue loop19;
                                                                                          addr532:
                                                                                          §§push(this.§@x§);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(§§pop().toUpperCase() == "MISC_FOOD_EGG");
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc16_ || this)
                                                                                                   {
                                                                                                      §§goto(addr532);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§=">§();
                                                                                                      addr700:
                                                                                                      loop31:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§0P§(0,1);
                                                                                                         addr689:
                                                                                                         addr696:
                                                                                                         loop32:
                                                                                                         while(_loc17_ && param3)
                                                                                                         {
                                                                                                            addr705:
                                                                                                            while(!(_loc17_ && this))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param9);
                                                                                                                  addr723:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     addr724:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§6"!§(param9);
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr704:
                                                                                                                  if(this.isTexture())
                                                                                                                  {
                                                                                                                     §§goto(addr705);
                                                                                                                  }
                                                                                                                  §§goto(addr722);
                                                                                                                  addr737:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§2!8§);
                                                                                                            if(!(_loc17_ && this))
                                                                                                            {
                                                                                                               §§pop().§#a§(this.§!L§.shape);
                                                                                                               if(!(_loc16_ || param2))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  continue loop31;
                                                                                                               }
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               if(_loc16_ || param2)
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        §§goto(addr737);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§?!T§.visible = false;
                                                                                                                        }
                                                                                                                        addr744:
                                                                                                                     }
                                                                                                                     §§goto(addr748);
                                                                                                                  }
                                                                                                                  addr735:
                                                                                                               }
                                                                                                               §§goto(addr725);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().setDamagedFrame();
                                                                                                               }
                                                                                                               addr734:
                                                                                                            }
                                                                                                            §§goto(addr735);
                                                                                                         }
                                                                                                         §§goto(addr683);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr728:
                                                                                                addr524:
                                                                                             }
                                                                                             if(!(_loc16_ || param1))
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      if(_loc17_ && param1)
                                                                                                      {
                                                                                                         break loop19;
                                                                                                      }
                                                                                                      _loc13_.§@!1§ = §^"-§;
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         §§push(65535);
                                                                                                         if(!(_loc17_ && param2))
                                                                                                         {
                                                                                                            §§push(§§pop() & ~§<!k§);
                                                                                                         }
                                                                                                         §§pop().§="[§ = §§pop();
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§ !o§.§'y§(_loc13_);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  this.§2! § = this.§!L§.§3"M§();
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(this.§!L§);
                                                                                                                     if(_loc16_ || param3)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§^!2§);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                           {
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    this.§ d§ = this.§^!2§ = this.§!L§.§^!2§;
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr683:
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 §§goto(addr725);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 this.§ d§ = this.§^!2§ = Math.round(this.§`!A§(true) * this.§!L§.§>!b§());
                                                                                                                                 if(!(_loc17_ && this))
                                                                                                                                 {
                                                                                                                                    addr618:
                                                                                                                                    §§push(this.§ d§);
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       addr622:
                                                                                                                                       §§push(1);
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                this.§ d§ = this.§^!2§ = 1;
                                                                                                                                                if(!(_loc17_ && this))
                                                                                                                                                {
                                                                                                                                                   addr738:
                                                                                                                                                   if(this.§!L§.§<!G§ != §9L§.§7O§)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr734);
                                                                                                                                                      §§push(this.§2!8§);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr744);
                                                                                                                                                }
                                                                                                                                                §§goto(addr748);
                                                                                                                                             }
                                                                                                                                             §§goto(addr696);
                                                                                                                                          }
                                                                                                                                          §§goto(addr738);
                                                                                                                                       }
                                                                                                                                       §§goto(addr724);
                                                                                                                                    }
                                                                                                                                    §§goto(addr723);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr737);
                                                                                                                           }
                                                                                                                           §§goto(addr724);
                                                                                                                        }
                                                                                                                        §§goto(addr622);
                                                                                                                     }
                                                                                                                     §§goto(addr738);
                                                                                                                  }
                                                                                                                  §§goto(addr700);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr444:
                                                                                                            §§goto(addr738);
                                                                                                            addr444:
                                                                                                         }
                                                                                                         §§goto(addr728);
                                                                                                      }
                                                                                                      §§goto(addr725);
                                                                                                   }
                                                                                                   §§push(_loc13_);
                                                                                                   §§push(65535);
                                                                                                   if(_loc16_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() & ~§^"-§);
                                                                                                   }
                                                                                                   §§pop().§="[§ = §§pop();
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§goto(addr444);
                                                                                                      addr549:
                                                                                                   }
                                                                                                   §§goto(addr618);
                                                                                                   addr556:
                                                                                                }
                                                                                                §§goto(addr700);
                                                                                             }
                                                                                             §§goto(addr444);
                                                                                          }
                                                                                          §§goto(addr704);
                                                                                       }
                                                                                    }
                                                                                    _loc13_.§@!1§ = §<!k§;
                                                                                    §§goto(addr556);
                                                                                 }
                                                                                 §§goto(addr549);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr426);
                                                                        addr332:
                                                                     }
                                                                     §§goto(addr426);
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                         else
                                                         {
                                                            addr371:
                                                            if(this.§#"'§ == §+"R§.§[!>§)
                                                            {
                                                               if(!(_loc17_ && this))
                                                               {
                                                                  this.§ !o§ = this.§7l§.CreateFixture2(this.§!L§.shape.§<7§(param10),this.§!L§.§%o§());
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr397);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§#"'§);
                                                         if(_loc16_)
                                                         {
                                                            addr337:
                                                            §§push(§+"R§.§"c§);
                                                            if(!_loc17_)
                                                            {
                                                               addr341:
                                                               §§push(§§pop() == §§pop());
                                                               if(!(_loc17_ && param2))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        addr353:
                                                                        §§pop();
                                                                        if(_loc16_ || param3)
                                                                        {
                                                                           §§goto(addr371);
                                                                        }
                                                                        §§goto(addr397);
                                                                     }
                                                                  }
                                                                  §§goto(addr371);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                      }
                                                      §§goto(addr371);
                                                   }
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr337);
                                             }
                                             §§goto(addr371);
                                          }
                                          §§goto(addr261);
                                       }
                                       §§goto(addr250);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        if(_loc16_ || param3)
                        {
                           this.§?"!§ = new §%"B§(§,"A§,§&!,§);
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public static function § "3§(param1:int, param2:§[!J§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param2 == null)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§9">§[param1]);
         if(!(_loc5_ && param2))
         {
            if(§§pop().length > 0)
            {
               if(_loc6_ || param3)
               {
                  §§push(param3);
                  if(!_loc5_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc6_ || param3)
                        {
                           §§push(param2.§<"5§);
                           if(_loc6_)
                           {
                              addr86:
                              §§push(§§pop());
                           }
                           param3 = §§pop();
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr94);
                        }
                     }
                  }
                  §§goto(addr86);
               }
               §@"M§.§"!0§(_loc4_,param3);
            }
            addr94:
            return;
         }
         §§goto(addr86);
      }
      
      public static function radiansToDegres(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!_loc2_)
         {
            §§push(180);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc2_ && §[!8§))
                  {
                     addr48:
                     §§push(§§pop() % 360);
                  }
               }
               §§push(§§pop() - §§pop());
               if(_loc3_)
               {
                  return §§pop() % 360;
               }
            }
         }
         §§goto(addr48);
      }
      
      public static function §""@§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc4_)
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
         return this.§?!T§;
      }
      
      public function get x() : Number
      {
         return this.§4!K§;
      }
      
      public function get y() : Number
      {
         return this.§7!#§;
      }
      
      public function get scale() : Number
      {
         return this.§<[§;
      }
      
      public function get front() : Boolean
      {
         return this.§>2§;
      }
      
      public function get §?!l§() : Number
      {
         return this.§7l§.GetPosition().x;
      }
      
      public function get §68§() : Number
      {
         return this.§7l§.GetPosition().y;
      }
      
      public function get §^!f§() : §9L§
      {
         return this.§!L§;
      }
      
      public function get §[p§() : Boolean
      {
         return this.§2! § >= 0;
      }
      
      public function get container() : §8"=§
      {
         return this.§>!=§;
      }
      
      public function get §#!&§() : Boolean
      {
         return this.§]=§;
      }
      
      public function set §#!&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§]=§ = param1;
         }
      }
      
      public function set §5!R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§;o§ = param1;
         }
      }
      
      public function set §8!A§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?"!§.§8!A§ = param1;
         }
      }
      
      public function get §8!A§() : uint
      {
         return this.§?"!§.§8!A§;
      }
      
      public function get §]"K§() : Boolean
      {
         return this.§'!T§;
      }
      
      public function set §]"K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
         return this.§+7§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+7§ = param1;
         }
      }
      
      public function §09§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§ !o§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr47:
                     this.§ !o§.§'y§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      protected function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         return §0i§.getParticleMaterialFromEngineMaterial(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc5_ || param2)
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
         §§goto(addr119);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.mWorld);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr148:
                     while(true)
                     {
                        §§pop().§#!O§(this.getBody());
                        addr151:
                        while(true)
                        {
                           this.mWorld = null;
                           addr140:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr146:
               }
               loop1:
               while(true)
               {
                  this.§2!8§.dispose();
                  loop2:
                  while(true)
                  {
                     §§push(this.§?!T§);
                     if(!(_loc2_ && this))
                     {
                        if(§§pop())
                        {
                           loop3:
                           for(; _loc1_; if(!(_loc1_ || this))
                           {
                              continue;
                           },§§goto(addr96))
                           {
                              §§push(this.§?!T§);
                              while(true)
                              {
                                 §§pop().dispose();
                                 loop9:
                                 while(true)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop2;
                                    }
                                    this.§?!T§ = null;
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          continue loop3;
                                       }
                                       continue loop9;
                                       §§goto(addr130);
                                    }
                                    addr130:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           §§goto(addr151);
                        }
                        while(true)
                        {
                           this.§ !o§ = null;
                           while(true)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    this.§4%§ = null;
                                    for(; !(_loc2_ && _loc1_); this.§!L§ = null,if(_loc1_ || this)
                                    {
                                       return;
                                    })
                                    {
                                       if(_loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr146);
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr82);
                              §§goto(addr151);
                           }
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr122);
                  }
               }
            }
            §§goto(addr148);
         }
         §§goto(addr96);
      }
      
      public function §6"!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.getBody());
            §§push(360);
            §§push(param1);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§^!c§(§§pop());
         }
      }
      
      public function §,!c§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(360);
         §§push(this.getBody().GetAngle());
         if(!_loc2_)
         {
            §§push(180);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc1_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr45);
               }
               §§push(360);
            }
            §§push(§§pop() % §§pop());
         }
         addr45:
         §§push(§§pop() - §§pop());
         if(_loc1_ || this)
         {
            return §§pop() % 360;
         }
      }
      
      public function §+" §(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
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
               if(§§pop())
               {
                  while(true)
                  {
                     this.§`>§();
                     addr69:
                     while(true)
                     {
                     }
                  }
                  addr67:
               }
               while(true)
               {
                  §§push(param3);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              this.§8"F§();
                              addr59:
                              if(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr67);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr59);
                     }
                     break;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§ !o§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.getBody());
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
                        if(!(_loc5_ && param2))
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    while(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§pop();
                                             loop8:
                                             while(!_loc5_)
                                             {
                                                §§push(this.getBody());
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop().GetPosition());
                                                   addr78:
                                                   while(_loc6_)
                                                   {
                                                      §§push(§§pop().y);
                                                      while(!(_loc5_ && param2))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(param1);
                                                            while(true)
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() >= §§pop());
                                                                  continue loop7;
                                                               }
                                                               addr150:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() <= §§pop());
                                                                  addr151:
                                                                  addr192:
                                                                  while(_loc6_ || this)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     break loop8;
                                                                     §§goto(addr151);
                                                                  }
                                                               }
                                                            }
                                                            continue loop3;
                                                            addr101:
                                                         }
                                                         §§push(§§pop().y);
                                                         continue loop2;
                                                         if(!(_loc6_ || param3))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(param2);
                                                         if(!_loc5_)
                                                         {
                                                            addr58:
                                                            §§push(§§pop() <= §§pop());
                                                            if(_loc5_ && this)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc6_ || param3))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop9;
                                                                  §§goto(addr58);
                                                               }
                                                               continue loop8;
                                                               addr128:
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr70);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr101);
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this.getBody());
                                                continue loop0;
                                                §§goto(addr192);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc6_ || param1))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr128);
                                          }
                                          addr70:
                                          return §§pop();
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        §§goto(addr192);
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      public function §4!+§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4%§ = param1;
         }
      }
      
      public function §6!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§4%§)
            {
               do
               {
                  this.§+" §(this.§4%§,false);
                  do
                  {
                     this.§4%§ = null;
                  }
                  while(_loc1_ && _loc1_);
                  
               }
               while(_loc1_);
               
               addr51:
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §`>§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(this.getBody());
                  if(_loc3_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr40:
                     §§push(param1.x);
                     if(_loc3_)
                     {
                        §§push(0);
                        if(!(_loc2_ && param1))
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§pop();
                                    if(!(_loc2_ && param1))
                                    {
                                       addr120:
                                       if(param1.y != 0)
                                       {
                                          §§push(this.getBody());
                                          if(!_loc2_)
                                          {
                                             §§pop().§["$§(Math.atan2(param1.x,param1.y));
                                             if(_loc3_)
                                             {
                                                if(_loc2_ && _loc2_)
                                                {
                                                   addr123:
                                                   this.getBody().§["$§(0);
                                                   addr121:
                                                   addr125:
                                                }
                                                else
                                                {
                                                   addr115:
                                                }
                                                return;
                                             }
                                          }
                                          §§goto(addr123);
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr125);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr123);
               }
               §§goto(addr115);
            }
            §§goto(addr40);
         }
         §§goto(addr123);
      }
      
      public function §8"F§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!param1)
            {
               param1 = this.getBody().GetLinearVelocity();
               addr21:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(_loc4_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               this.§6"!§(_loc2_);
            }
            return;
         }
         §§goto(addr21);
      }
      
      public function §0!?§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.getBody().§["$§(param1);
         }
      }
      
      public function getBody() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§ !o§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.§ !o§);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return §§pop().GetBody();
         }
         addr51:
         return null;
      }
      
      public function §7!3§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(param1 != -9999)
            {
               loop0:
               while(true)
               {
                  this.§4!K§ = param1;
                  addr117:
                  while(true)
                  {
                     this.§7!#§ = param2;
                     addr108:
                     while(_loc4_)
                     {
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§push(this.getBody());
               loop2:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr90:
                  while(true)
                  {
                     §§push(this.§4!K§);
                     addr92:
                     while(true)
                     {
                        §§push(§'!S§.§2"<§);
                        addr94:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr95:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr96:
                              while(!(_loc3_ && _loc3_))
                              {
                                 continue loop2;
                              }
                              §§goto(addr108);
                           }
                        }
                     }
                  }
               }
               §§goto(addr110);
            }
         }
         §§goto(addr117);
      }
      
      public function §0P§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(_loc6_ || param2)
         {
            §§push(this.§,d§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr457:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr458:
                        while(true)
                        {
                           this.§,d§ = false;
                           addr452:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr456:
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
                           addr442:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr443:
                              while(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.updateFlyingFrameAnimations(param2));
                                       continue loop6;
                                    }
                                    addr409:
                                 }
                                 else
                                 {
                                    §§goto(addr456);
                                 }
                              }
                              §§goto(addr452);
                           }
                        }
                        addr441:
                     }
                     §§goto(addr409);
                  }
               }
            }
         }
         §§goto(addr259);
      }
      
      public function §=">§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.getBody().GetPosition().x);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.getBody().GetPosition().y);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            this.§1!O§ = this.§#3§;
            loop0:
            while(true)
            {
               this.§9!t§ = this.§1!3§;
               while(true)
               {
                  this.§#c§ = this.§7!b§;
                  addr163:
                  while(!(_loc4_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr90);
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
      
      public function §<!w§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
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
                        §§push(§;!=§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(!(_loc3_ && param2))
                        {
                           §§push(§§pop() + param1);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() + " overriding to 0");
                           }
                        }
                        §§pop().log(§§pop());
                        addr930:
                        while(true)
                        {
                           addr570:
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(this);
                           §§push(this.§#3§);
                           if(_loc4_)
                           {
                              §§push(param1);
                              if(_loc4_)
                              {
                                 §§push(this.§1!O§);
                                 if(_loc4_ || param2)
                                 {
                                    §§push(§§pop() - this.§#3§);
                                    if(!_loc3_)
                                    {
                                       addr604:
                                       addr605:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(param2);
                                       }
                                       §§pop().§!"W§ = §§pop() + §§pop();
                                       return;
                                       addr606:
                                    }
                                 }
                                 §§push(§§pop() / §§pop());
                              }
                              §§goto(addr604);
                           }
                           §§goto(addr605);
                        }
                     }
                     addr909:
                  }
                  while(true)
                  {
                     §§push(param2);
                     while(true)
                     {
                        §§push(0);
                        if(!(_loc3_ && this))
                        {
                           if(§§pop() < §§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(this.§>!=§.mLevelMain.mLevelEngine.§"![§);
                                 addr891:
                                 addr671:
                                 while(true)
                                 {
                                    §§push(1000);
                                    addr902:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr903:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr904:
                                          while(true)
                                          {
                                             param2 = §§pop();
                                             addr905:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(!(_loc4_ || param2))
                                 {
                                    continue;
                                 }
                                 §§push(param1);
                                 loop50:
                                 while(!_loc3_)
                                 {
                                    §§push(0);
                                    loop51:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       loop52:
                                       while(true)
                                       {
                                          loop53:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(this.§1!O§);
                                                loop54:
                                                while(!_loc3_)
                                                {
                                                   §§push(this.§#3§);
                                                   loop55:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop57:
                                                         while(!_loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(!§§pop())
                                                               {
                                                                  §§push(this.§1!O§);
                                                                  loop66:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§#3§);
                                                                     loop67:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        addr527:
                                                                        loop68:
                                                                        while(_loc4_ || param2)
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop76:
                                                                                 while(true)
                                                                                 {
                                                                                    loop77:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§push(this.§1!O§);
                                                                                          loop78:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_ || param2)
                                                                                                {
                                                                                                   §§push(this.§#3§);
                                                                                                   loop79:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() < §§pop());
                                                                                                      loop80:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(!(_loc3_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               loop81:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc4_ || param1)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr410:
                                                                                                                              loop83:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§#3§);
                                                                                                                                       loop84:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             addr277:
                                                                                                                                             break;
                                                                                                                                             addr277:
                                                                                                                                          }
                                                                                                                                          §§push(this.§1!O§);
                                                                                                                                          while(_loc4_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   continue loop78;
                                                                                                                                                }
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             continue loop67;
                                                                                                                                          }
                                                                                                                                          continue loop55;
                                                                                                                                          addr41:
                                                                                                                                          if(!(_loc4_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr48:
                                                                                                                                          if(_loc3_ && param1)
                                                                                                                                          {
                                                                                                                                             while(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§#3§);
                                                                                                                                                continue loop55;
                                                                                                                                                §§goto(addr48);
                                                                                                                                             }
                                                                                                                                             continue loop50;
                                                                                                                                             addr418:
                                                                                                                                          }
                                                                                                                                          addr55:
                                                                                                                                          §§push(this.§1!O§);
                                                                                                                                          if(!(_loc3_ && param1))
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   continue loop79;
                                                                                                                                                }
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr71:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop78;
                                                                                                                                                   }
                                                                                                                                                   addr73:
                                                                                                                                                   if(!(_loc3_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(180);
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr87:
                                                                                                                                                               if(_loc4_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop51;
                                                                                                                                                                  }
                                                                                                                                                                  addr842:
                                                                                                                                                                  while(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                                                                     break loop68;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                     addr843:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr844:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§9!t§);
                                                                                                                                                                                 if(!(_loc3_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - this.§1!3§);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!(_loc3_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr821:
                                                                                                                                                                                          §§push(§§pop() / param2);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§8!N§ = §§pop();
                                                                                                                                                                                       loop28:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                          §§push(this.§1!3§);
                                                                                                                                                                                          if(_loc4_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + this.§8!N§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§4!K§ = §§pop();
                                                                                                                                                                                          addr776:
                                                                                                                                                                                          addr874:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc3_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc3_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§7!b§);
                                                                                                                                                                                                      break loop50;
                                                                                                                                                                                                      addr831:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr874:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§1!3§);
                                                                                                                                                                                             addr852:
                                                                                                                                                                                             while(_loc4_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§9!t§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                                                                   addr862:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      break loop57;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr891);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr821);
                                                                                                                                                                           }
                                                                                                                                                                           addr845:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§8!N§ = 0;
                                                                                                                                                                              addr848:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§4!K§ = this.§1!3§;
                                                                                                                                                                                 break loop83;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr556:
                                                                                                                                                                  addr842:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop76;
                                                                                                                                                                     §§goto(addr87);
                                                                                                                                                                  }
                                                                                                                                                                  addr459:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(!(_loc3_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                  loop88:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop77;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc4_ || _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop68;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr318:
                                                                                                                                                                        if(_loc4_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           while(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§1!O§);
                                                                                                                                                                              loop90:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc3_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§#3§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                             addr229:
                                                                                                                                                                                             while(!_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr231:
                                                                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop81;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr621:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   addr622:
                                                                                                                                                                                                   loop59:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§1!O§);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§#3§);
                                                                                                                                                                                                               addr552:
                                                                                                                                                                                                               addr659:
                                                                                                                                                                                                               addr749:
                                                                                                                                                                                                               while(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  loop62:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr556);
                                                                                                                                                                                                                     §§push(180);
                                                                                                                                                                                                                     addr432:
                                                                                                                                                                                                                     addr872:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop62;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc3_ && param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop0;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr459);
                                                                                                                                                                                                                        continue loop90;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        addr873:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           param1 = §§pop();
                                                                                                                                                                                                                           §§goto(addr874);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     break loop81;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                                                                  addr750:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 addr760:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                                                                    break loop54;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr759:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr738:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§?!>§ = 0;
                                                                                                                                                                                                                                    break loop59;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr740:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§#c§);
                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - this.§7!b§);
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr708:
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr712:
                                                                                                                                                                                                                                             §§push(§§pop() / param2);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().§?!>§ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                                                                   §§push(this.§7!b§);
                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + this.§?!>§);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().§7!#§ = §§pop();
                                                                                                                                                                                                                                                   while(_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop43:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§#3§);
                                                                                                                                                                                                                                                         break loop84;
                                                                                                                                                                                                                                                         addr724:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr760);
                                                                                                                                                                                                                                                   addr689:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr845);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr724);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr848);
                                                                                                                                                                                                                                          addr714:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr712);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr708);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr712);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr758:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr864:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        addr865:
                                                                                                                                                                                                                        while(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                           break loop90;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr909);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr73);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr550:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr740);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr669:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr671);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr689);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr743:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§7!#§ = this.§7!b§;
                                                                                                                                                                                                      §§goto(addr724);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr231);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop88;
                                                                                                                                                                                             §§goto(addr55);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr228:
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop54;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr432);
                                                                                                                                                                                 §§goto(addr555);
                                                                                                                                                                              }
                                                                                                                                                                              while(!(_loc3_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr842);
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr904);
                                                                                                                                                                           }
                                                                                                                                                                           addr327:
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(this.§#3§);
                                                                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                              if(_loc4_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§1!O§);
                                                                                                                                                                                 if(_loc4_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - this.§#3§);
                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr364:
                                                                                                                                                                                       addr365:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param2);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§!"W§ = §§pop() + §§pop();
                                                                                                                                                                                       §§goto(addr604);
                                                                                                                                                                                       addr366:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr364);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr365);
                                                                                                                                                                           addr325:
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     while(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§goto(addr669);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr844);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr738);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     §§goto(addr318);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr750);
                                                                                                                                                               }
                                                                                                                                                               addr299:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr902);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(-1);
                                                                                                                                                            addr871:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr872);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr870:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr852);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr550);
                                                                                                                                                }
                                                                                                                                                §§goto(addr552);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr277);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr228);
                                                                                                                                       }
                                                                                                                                       while(!(_loc3_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr659);
                                                                                                                                          §§push(this.§1!O§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr873);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr606);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr462:
                                                                                                                                    if(!(_loc3_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(this.§#3§);
                                                                                                                                       if(_loc4_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(param1);
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§1!O§);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - 360);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - this.§#3§);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr506:
                                                                                                                                                   §§pop().§!"W§ = §§pop() + §§pop() / §§pop();
                                                                                                                                                   addr505:
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ || param1))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr604);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr743);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr646:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr604);
                                                                                                                                                   addr505:
                                                                                                                                                   addr504:
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(param2);
                                                                                                                                                }
                                                                                                                                                §§goto(addr505);
                                                                                                                                             }
                                                                                                                                             §§goto(addr504);
                                                                                                                                          }
                                                                                                                                          §§goto(addr505);
                                                                                                                                       }
                                                                                                                                       §§goto(addr506);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr848);
                                                                                                                              }
                                                                                                                              while(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr831);
                                                                                                                              }
                                                                                                                              §§goto(addr905);
                                                                                                                           }
                                                                                                                           addr409:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr325);
                                                                                                                        }
                                                                                                                        §§goto(addr842);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop57;
                                                                                                               }
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop52;
                                                                                                                  }
                                                                                                                  §§goto(addr666);
                                                                                                               }
                                                                                                               §§goto(addr758);
                                                                                                            }
                                                                                                            §§goto(addr862);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               break loop80;
                                                                                                            }
                                                                                                            addr536:
                                                                                                         }
                                                                                                      }
                                                                                                      while(!(_loc3_ && param1))
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr418);
                                                                                                            §§push(this.§1!O§);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr640:
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               this.§!"W§ = this.§#3§;
                                                                                                               §§goto(addr646);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr776);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr622);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop66;
                                                                                          }
                                                                                          §§goto(addr903);
                                                                                       }
                                                                                       §§goto(addr462);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr536);
                                                                           }
                                                                        }
                                                                        continue loop53;
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr570);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr714);
                                                               }
                                                               addr566:
                                                            }
                                                            §§goto(addr621);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr864);
                                                            }
                                                            §§goto(addr843);
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr728);
                                                }
                                             }
                                             §§goto(addr640);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr749);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr870);
                              §§goto(addr905);
                           }
                        }
                        §§goto(addr902);
                     }
                  }
               }
            }
         }
         §§goto(addr874);
      }
      
      public function get §]"R§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(!§`!"§)
            {
            }
         }
         return null;
      }
      
      public function §!!n§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§<!G§);
            if(!_loc2_)
            {
               §§push(§9L§.§7!V§);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc1_ || _loc1_)
                        {
                           addr63:
                           §§pop();
                           return this.§<!G§ == §9L§.§6!y§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §&!y§() : Boolean
      {
         return this.§<!G§ == §9L§.§["-§;
      }
      
      public function §8!1§() : Boolean
      {
         return this.§<!G§ == §9L§.§=8§;
      }
      
      public function §#b§() : Boolean
      {
         return this.§<!G§ == §9L§.§6!y§;
      }
      
      public function shouldUpdate() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§<!G§ == §9L§.§"!-§;
      }
      
      public function isGround() : Boolean
      {
         return this.§<!G§ == §9L§.§7O§;
      }
      
      public function §]H§() : Boolean
      {
         return this.§<!G§ == §9L§.§'!8§;
      }
      
      public function §^!;§() : Boolean
      {
         return this.§<!G§ == §9L§.§+"W§;
      }
      
      public function §package§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§@x§);
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr103:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  §§goto(addr104);
               }
            }
            addr102:
         }
         while(true)
         {
            §§push(this.§@x§);
            if(!_loc2_)
            {
               §§push("POWERUP_BOMB");
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr62);
                  §§push(§§pop() == §§pop());
               }
               else
               {
                  §§goto(addr103);
               }
               addr104:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc1_ || _loc1_)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(true);
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(!(_loc1_ || this))
                        {
                           break;
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           return §§pop();
                        }
                        addr62:
                        while(!(_loc1_ || _loc2_))
                        {
                        }
                     }
                     if(!_loc2_)
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
            §§goto(addr102);
            §§goto(addr103);
         }
      }
      
      public function §`"4§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§&!y§());
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
                           addr140:
                           loop13:
                           while(true)
                           {
                              §§push(this.§]H§());
                              if(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    while(true)
                                    {
                                       addr130:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop6:
                                          while(true)
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
                                                      §§push(this.§^!;§());
                                                      loop9:
                                                      while(_loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            if(_loc1_ && _loc1_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            addr37:
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               addr45:
                                                               §§push(!§§pop());
                                                               if(!_loc1_)
                                                               {
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     §§goto(addr65);
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                addr132:
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc2_ || _loc1_))
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc1_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(!_loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§push(this.§]"K§);
                                                      if(_loc2_ || this)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr37);
                                                      }
                                                      §§goto(addr45);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr133);
                                             }
                                             addr65:
                                             return §§pop();
                                          }
                                       }
                                    }
                                    addr129:
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr130);
                           }
                        }
                     }
                     §§goto(addr129);
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
      
      public function §4"Q§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc10_ || param2)
         {
            §§push(this.§8!1§());
            loop0:
            for(; !§§pop(); if(!(_loc10_ || param2))
            {
               continue;
            },§§goto(addr275))
            {
               loop1:
               while(true)
               {
                  §§push(this.§>!=§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§%!Q§());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§2! §);
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
                                                      addr323:
                                                      if(_loc9_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop());
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop56:
                                                               while(!_loc9_)
                                                               {
                                                                  §§pop();
                                                                  loop57:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           §§push(this.§!!n§());
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr233:
                                                                              if(!(_loc9_ && param2))
                                                                              {
                                                                                 addr240:
                                                                                 if(!(_loc9_ && param1))
                                                                                 {
                                                                                    addr248:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       continue loop56;
                                                                                    }
                                                                                    addr250:
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_ || this)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   break loop56;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr590:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       loop49:
                                                                                       while(!(_loc9_ && param3))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   addr288:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§ d§);
                                                                                                      addr291:
                                                                                                      addr767:
                                                                                                      while(!_loc9_)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         while(_loc10_ || param3)
                                                                                                         {
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               addr309:
                                                                                                               §§push(§§pop() < §§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc10_ || param3)
                                                                                                                  {
                                                                                                                     addr316:
                                                                                                                     if(_loc10_ || this)
                                                                                                                     {
                                                                                                                        §§goto(addr323);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              break loop49;
                                                                                                                           }
                                                                                                                           addr560:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        §§goto(addr316);
                                                                                                                     }
                                                                                                                     addr697:
                                                                                                                     §§pop();
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§goto(addr670);
                                                                                                                     }
                                                                                                                     addr756:
                                                                                                                     this.§8X§(§[!J§.§`!r§);
                                                                                                                     §§goto(addr721);
                                                                                                                     addr557:
                                                                                                                     addr760:
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr250);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  break loop57;
                                                                                                                  §§goto(addr309);
                                                                                                               }
                                                                                                               addr309:
                                                                                                               addr405:
                                                                                                            }
                                                                                                            if(§§pop() <= §§pop())
                                                                                                            {
                                                                                                               addr736:
                                                                                                               §§push(param1);
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr756);
                                                                                                         }
                                                                                                         if(!(_loc10_ || this))
                                                                                                         {
                                                                                                            addr778:
                                                                                                            if(§§pop() <= §§pop())
                                                                                                            {
                                                                                                               addr754:
                                                                                                               §§goto(addr755);
                                                                                                               §§push(param1);
                                                                                                               §§push(12);
                                                                                                            }
                                                                                                            this.§8X§(§[!J§.§2!M§);
                                                                                                            §§goto(addr721);
                                                                                                         }
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr745);
                                                                                                      }
                                                                                                      §§goto(addr778);
                                                                                                   }
                                                                                                }
                                                                                                addr383:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§ d§);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop() - param1);
                                                                                                }
                                                                                                §§pop().§ d§ = §§pop();
                                                                                             }
                                                                                             loop51:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr288);
                                                                                                loop68:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc10_ || param1))
                                                                                                   {
                                                                                                      continue loop51;
                                                                                                   }
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      if(_loc10_ || param2)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         §[!8§.§ "3§(§[!J§.§2!M§,this.§!L§.§!j§,"ChannelDestroyed");
                                                                                                         loop66:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ && param2))
                                                                                                            {
                                                                                                               loop65:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§2!8§.setDamagedFrame();
                                                                                                                  if(_loc10_ || param1)
                                                                                                                  {
                                                                                                                     addr64:
                                                                                                                     if(_loc10_ || this)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ || param1))
                                                                                                                        {
                                                                                                                           continue loop68;
                                                                                                                        }
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop57;
                                                                                                                        }
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              if(_loc10_ || this)
                                                                                                                              {
                                                                                                                                 §§push(this.§ d§);
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                    {
                                                                                                                                       addr41:
                                                                                                                                       loop38:
                                                                                                                                       for(; _loc10_; §§goto(addr41))
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             loop39:
                                                                                                                                             while(_loc10_ || param2)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                while(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   loop41:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§>!=§);
                                                                                                                                                      if(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop().mLevelMain);
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      §§push(§;P§.§#"I§);
                                                                                                                                                      if(_loc10_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§ d§ > param1);
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr471:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  §§push(param3);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§pop().addScore(§§pop(),§§pop(),§§pop(),this.getBody().GetPosition().x,this.getBody().GetPosition().y,§0i§.§7R§(this.§@x§));
                                                                                                                                                            while(!(_loc9_ && this))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr403:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr405);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(param5);
                                                                                                                                                               addr499:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop41;
                                                                                                                                                                  }
                                                                                                                                                                  while(!(_loc9_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(!(_loc10_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop39;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §'!S§.§5k§);
                                                                                                                                                                        continue loop38;
                                                                                                                                                                     }
                                                                                                                                                                     addr577:
                                                                                                                                                                     while(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * _loc7_);
                                                                                                                                                                        while(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                           break loop39;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§2! §);
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr611);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr708);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr709);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc7_ = §§pop();
                                                                                                                                                                        addr578:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_ && param3)
                                                                                                                                                                              {
                                                                                                                                                                                 addr798:
                                                                                                                                                                                 §§push(this.§ d§);
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr545);
                                                                                                                                                                              §§push(§'!S§.§3"2§.getValue());
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr642);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr800);
                                                                                                                                                                     }
                                                                                                                                                                     addr545:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr716);
                                                                                                                                                                  §§goto(addr233);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr553:
                                                                                                                                                            addr489:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr471);
                                                                                                                                                   }
                                                                                                                                                   continue loop2;
                                                                                                                                                   while(!(_loc9_ && param2))
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         continue loop65;
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr686);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                §§goto(addr553);
                                                                                                                                                §§goto(addr530);
                                                                                                                                             }
                                                                                                                                             addr530:
                                                                                                                                          }
                                                                                                                                          §§goto(addr670);
                                                                                                                                       }
                                                                                                                                       if(_loc10_ || param2)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             return §§pop();
                                                                                                                                          }
                                                                                                                                          addr807:
                                                                                                                                          loop19:
                                                                                                                                          while(_loc10_)
                                                                                                                                          {
                                                                                                                                             param1 = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc9_ && param3)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_ || param3)
                                                                                                                                                   {
                                                                                                                                                      addr663:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1);
                                                                                                                                                         addr613:
                                                                                                                                                         while(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§2! §);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        while(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           continue loop19;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr754);
                                                                                                                                                                        addr636:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr715);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr745);
                                                                                                                                                                  }
                                                                                                                                                                  addr670:
                                                                                                                                                                  if(this.§ d§ == this.§^!2§)
                                                                                                                                                                  {
                                                                                                                                                                     addr672:
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§^!2§);
                                                                                                                                                                        if(_loc10_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§ d§ = §§pop();
                                                                                                                                                                        addr686:
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr650);
                                                                                                                                                                        }
                                                                                                                                                                        addr745:
                                                                                                                                                                        this.§8X§(§[!J§.§>"H§);
                                                                                                                                                                        addr721:
                                                                                                                                                                        §§push(this.§ d§);
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              return §§pop();
                                                                                                                                                                           }
                                                                                                                                                                           addr800:
                                                                                                                                                                           return §§pop();
                                                                                                                                                                        }
                                                                                                                                                                        continue loop5;
                                                                                                                                                                        addr749:
                                                                                                                                                                     }
                                                                                                                                                                     addr708:
                                                                                                                                                                     §§goto(addr709);
                                                                                                                                                                     §§push(param1);
                                                                                                                                                                  }
                                                                                                                                                                  addr650:
                                                                                                                                                                  §§goto(addr653);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr736);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr745);
                                                                                                                                                         }
                                                                                                                                                         addr653:
                                                                                                                                                         §§push(this.§ d§);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            addr709:
                                                                                                                                                            addr715:
                                                                                                                                                            §§push(this.§2! §);
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() / 2);
                                                                                                                                                            }
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               addr716:
                                                                                                                                                               this.§8X§(§[!J§.§>"H§);
                                                                                                                                                            }
                                                                                                                                                            §§push(Boolean(this.§!!n§()));
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr697);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr670);
                                                                                                                                                         }
                                                                                                                                                         return §§pop();
                                                                                                                                                         §§goto(addr663);
                                                                                                                                                      }
                                                                                                                                                      addr611:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr590);
                                                                                                                                                §§push(param2);
                                                                                                                                             }
                                                                                                                                             §§goto(addr697);
                                                                                                                                          }
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                       §§goto(addr636);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr291);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop62:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(!(_loc10_ || param2))
                                                                                                                                          {
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          if(§§pop() >= §§pop())
                                                                                                                                          {
                                                                                                                                             this.§8X§(§[!J§.§`!r§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc9_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue loop66;
                                                                                                                                                }
                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && param3))
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ || this))
                                                                                                                                                               {
                                                                                                                                                                  continue loop10;
                                                                                                                                                               }
                                                                                                                                                               this.addDamageParticles(this.§>!=§.mLevelMain.particles,param1);
                                                                                                                                                               §§goto(addr100);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr749);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr557);
                                                                                                                                                      }
                                                                                                                                                      addr610:
                                                                                                                                                   }
                                                                                                                                                   while(!(_loc9_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr577);
                                                                                                                                                      §§push(int(Math.min(this.§ d§,int(param1))));
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr716);
                                                                                                                                                   addr562:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && param3))
                                                                                                                                                         {
                                                                                                                                                            this.§ d§ = 0;
                                                                                                                                                            continue loop68;
                                                                                                                                                         }
                                                                                                                                                         addr766:
                                                                                                                                                         §§goto(addr767);
                                                                                                                                                         §§push(param1);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§ d§ = 1;
                                                                                                                                                            addr280:
                                                                                                                                                            while(!(_loc9_ && param2))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop62;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr500);
                                                                                                                                                         }
                                                                                                                                                         addr277:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr686);
                                                                                                                                                   }
                                                                                                                                                   addr197:
                                                                                                                                                }
                                                                                                                                                §§goto(addr500);
                                                                                                                                                §§goto(addr64);
                                                                                                                                             }
                                                                                                                                             §§goto(addr778);
                                                                                                                                             addr117:
                                                                                                                                          }
                                                                                                                                          §§goto(addr197);
                                                                                                                                       }
                                                                                                                                       §§goto(addr613);
                                                                                                                                    }
                                                                                                                                    §§goto(addr549);
                                                                                                                                 }
                                                                                                                                 addr91:
                                                                                                                                 §§goto(addr294);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    break loop0;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr703);
                                                                                                                           }
                                                                                                                           §§goto(addr672);
                                                                                                                        }
                                                                                                                        §§goto(addr489);
                                                                                                                     }
                                                                                                                     §§goto(addr117);
                                                                                                                  }
                                                                                                                  §§goto(addr100);
                                                                                                               }
                                                                                                               addr173:
                                                                                                               continue loop51;
                                                                                                            }
                                                                                                            §§goto(addr280);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr760);
                                                                                                   }
                                                                                                   loop48:
                                                                                                   while(!(_loc9_ && this))
                                                                                                   {
                                                                                                      §§push(this.§;o§);
                                                                                                      if(!(_loc10_ || param1))
                                                                                                      {
                                                                                                         continue loop49;
                                                                                                      }
                                                                                                      addr364:
                                                                                                      if(!(_loc10_ || param2))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  if(!(_loc10_ || param1))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§pop();
                                                                                                                  continue loop48;
                                                                                                               }
                                                                                                               §§goto(addr709);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(_loc10_ || this)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  §§goto(addr610);
                                                                                                               }
                                                                                                               addr602:
                                                                                                            }
                                                                                                            §§goto(addr364);
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                         addr415:
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         continue loop49;
                                                                                                      }
                                                                                                      §§goto(addr670);
                                                                                                      §§goto(addr709);
                                                                                                   }
                                                                                                   §§goto(addr578);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr562);
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                          §§goto(addr374);
                                                                                       }
                                                                                       addr374:
                                                                                    }
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§goto(addr701);
                                                                                       }
                                                                                       §§goto(addr766);
                                                                                       §§goto(addr240);
                                                                                    }
                                                                                    addr765:
                                                                                 }
                                                                                 §§goto(addr701);
                                                                              }
                                                                              §§goto(addr499);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                        §§goto(addr778);
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr407:
                                                                     while(!(_loc9_ && param3))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr415);
                                                                        }
                                                                        §§goto(addr381);
                                                                     }
                                                                     §§goto(addr696);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr594:
                                                                  while(!(_loc9_ && param2))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr602);
                                                                     }
                                                                     §§goto(addr560);
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr277);
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                            addr275:
                                                         }
                                                         §§goto(addr594);
                                                      }
                                                      §§goto(addr407);
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr765);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr798);
                     }
                  }
               }
            }
            §§goto(addr807);
            §§push(this.§ d§);
         }
         §§goto(addr496);
      }
      
      public function §8X§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §[!8§.§ "3§(param1,this.§!L§.§!j§);
         }
      }
      
      public function §3"S§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§!L§.material.§'%§(param1));
         if(!_loc3_)
         {
            return §§pop() * this.§-v§;
         }
      }
      
      public function §2!#§(param1:String) : Number
      {
         return this.§!L§.material.§@!+§(param1);
      }
      
      public function §?"R§() : String
      {
         return this.§!L§.material.mName;
      }
      
      public function §,!`§() : Number
      {
         return this.§!L§.§>!b§();
      }
      
      public function §>!-§() : int
      {
         return this.§!L§.§<!5§();
      }
      
      public function §=b§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!(_loc2_ && this))
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
                              §§push(this.§!!n§());
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
                                                   loop11:
                                                   while(_loc3_ || _loc3_)
                                                   {
                                                      §§pop();
                                                      loop12:
                                                      while(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                         while(!_loc2_)
                                                         {
                                                            addr75:
                                                            if(!(_loc2_ && this))
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr91:
                                                                     §§pop();
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           addr111:
                                                                           §§push(Math.abs(this.getBody().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                           if(!_loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§goto(addr75);
                                                                                 }
                                                                                 addr140:
                                                                                 while(!(_loc2_ && this))
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop0;
                                                                                 §§goto(addr111);
                                                                              }
                                                                              continue;
                                                                              addr73:
                                                                           }
                                                                           §§goto(addr40);
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     while(_loc3_)
                                                                     {
                                                                        §§push(Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc2_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr40);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(!(_loc3_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr140);
                                                                           }
                                                                           addr63:
                                                                           continue loop2;
                                                                           addr128:
                                                                        }
                                                                        §§goto(addr73);
                                                                        §§goto(addr91);
                                                                     }
                                                                     continue loop4;
                                                                     addr155:
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               while(_loc3_ || this)
                                                               {
                                                                  §§pop();
                                                                  break loop12;
                                                               }
                                                               continue loop1;
                                                               addr206:
                                                            }
                                                         }
                                                         continue loop11;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§ d§ == this.§^!2§);
                                                         continue loop0;
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr128);
                                                }
                                             }
                                          }
                                          addr171:
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr40:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr214);
      }
      
      public function §]!!§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.getBody().IsAwake());
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
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
                     §§push(this.§%`§());
                     if(!(_loc2_ && _loc2_))
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
      
      protected function §%`§() : Boolean
      {
         return this.§?"!§.§%`§();
      }
      
      public function §7!`§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§-v§ = param1;
            do
            {
               if(this.§-v§ > 1)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§push(this.§2!8§);
               }
               else
               {
                  §§push(this.§2!8§);
                  if(_loc2_)
                  {
                     §§pop().§`!D§ = null;
                     if(_loc2_)
                     {
                        §§goto(addr34);
                     }
                     continue;
                  }
               }
               §§pop().§#"R§();
            }
            while(_loc3_ && _loc2_);
            
         }
         addr34:
      }
      
      public function §`!A§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc4_ || this)
         {
            §§push(this.§!L§.§`!§());
            loop0:
            while(true)
            {
               if(§§pop() != §@!M§.§?K§)
               {
                  §§push(this.getBody().GetMass());
                  if(_loc4_)
                  {
                     if(_loc4_ || this)
                     {
                        §§push(this.§ !o§.§?!=§());
                        loop1:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              §§push(§§pop() / §§pop());
                              loop21:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop19:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop13:
                                    while(true)
                                    {
                                       if(param1)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(_loc2_);
                                             while(true)
                                             {
                                                §§push(this.§61§());
                                                addr160:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr161:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr162:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                      }
                                                   }
                                                }
                                             }
                                             addr158:
                                          }
                                          loop18:
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                while(true)
                                                {
                                                }
                                                addr170:
                                             }
                                             addr201:
                                             while(true)
                                             {
                                                break loop18;
                                             }
                                          }
                                          §§push(§§pop().§2!8§.mW);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(this.§2!8§.mH);
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                             }
                                             addr224:
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§'!S§.§2"<§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§'!S§.§2"<§);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr73:
                                                   §§push(this.§<[§);
                                                   if(!(_loc4_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr160);
                                                }
                                             }
                                             addr237:
                                             loop5:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr238:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop7:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop8:
                                                      while(true)
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc3_ && this)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr163);
                                                                  }
                                                               }
                                                               continue loop3;
                                                               addr123:
                                                            }
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                                  §§goto(addr158);
                                                               }
                                                               §§goto(addr161);
                                                               addr49:
                                                               while(true)
                                                               {
                                                                  continue loop10;
                                                               }
                                                            }
                                                            §§goto(addr201);
                                                            §§goto(addr162);
                                                         }
                                                         return §§pop();
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          addr163:
                                       }
                                       §§goto(addr49);
                                    }
                                 }
                              }
                              addr192:
                           }
                           §§goto(addr224);
                        }
                     }
                     §§goto(addr238);
                  }
                  §§goto(addr192);
               }
               §§goto(addr201);
            }
         }
         §§goto(addr170);
      }
      
      public function §61§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(_loc2_)
         {
            §§push(_loc1_);
            if(_loc2_ || _loc3_)
            {
               §§push(_loc1_);
               if(_loc2_ || _loc3_)
               {
                  §§push(2);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc2_)
                     {
                        §§goto(addr68);
                     }
                  }
                  §§goto(addr78);
               }
               addr68:
               §§push(§§pop() * Math.min(10,this.§2!8§.§="V§ - 1));
               if(!_loc3_)
               {
                  addr78:
                  §§push(§§pop() / 10);
               }
               §§push(§§pop() - §§pop());
               if(!_loc3_)
               {
                  addr83:
                  §§push(Number(§§pop()));
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_ = §§pop();
                     addr92:
                     return _loc1_;
                  }
               }
            }
            §§goto(addr83);
         }
         §§goto(addr92);
      }
      
      public function §%<§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.getBody().GetLinearVelocity().x);
         if(!(_loc6_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.getBody().GetLinearVelocity().y);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
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
                           if(_loc7_ || _loc2_)
                           {
                              if(_loc7_ || this)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_ || _loc2_)
                                    {
                                       addr135:
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    _loc3_ = §§pop();
                                    while(_loc7_ || _loc3_)
                                    {
                                       this.getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                                       if(!_loc6_)
                                       {
                                          return;
                                          addr92:
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           §§goto(addr135);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§6!O§) : void
      {
      }
      
      public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §;!&§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!_loc6_)
         {
            §§push(param2.x * param1);
            if(_loc5_)
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
            if(_loc5_ || param2)
            {
               §§push(param2.y * param1);
               if(!_loc6_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         do
         {
            this.getBody().SetPosition(_loc4_);
         }
         while(!_loc5_);
         
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && _loc3_))
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  §§push(this.§,!c§());
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        loop2:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           if(_loc6_ || param1)
                           {
                              §§push(360);
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr276:
                                 addr189:
                                 while(true)
                                 {
                                    §§push(360);
                                    addr277:
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                    }
                                 }
                                 if(_loc7_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          addr204:
                                          if(_loc6_ || param1)
                                          {
                                             §§push(_loc4_);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§§pop() % §§pop());
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc6_ || param2)
                                                      {
                                                         _loc5_ = §§pop();
                                                         while(true)
                                                         {
                                                            addr105:
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(param1);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / 2);
                                                                     if(_loc6_)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              §§push(_loc4_);
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 addr134:
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    if(_loc7_ && param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc6_ || this))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             break loop14;
                                                                                          }
                                                                                       }
                                                                                       addr292:
                                                                                       §§push(param1);
                                                                                       break;
                                                                                       addr278:
                                                                                    }
                                                                                    addr149:
                                                                                    §§push(§§pop() - _loc5_);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       break loop19;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr228:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr257:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr302:
                                                                                 var _loc3_:* = Number(§§pop());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                                                    if(!(_loc7_ && param2))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                                 do
                                                                                 {
                                                                                    this.§6"!§(_loc3_);
                                                                                 }
                                                                                 while(!_loc6_);
                                                                                 
                                                                                 return;
                                                                                 addr301:
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                           }
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              do
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§6"!§(_loc4_);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr102:
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                              }
                                                                              while(false);
                                                                              
                                                                              addr288:
                                                                              §§push(this.§,!c§());
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr292);
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           addr176:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() - _loc5_);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr149);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr302);
                                                               }
                                                               break;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               §§goto(addr175);
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr228);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr246);
                                       §§goto(addr204);
                                    }
                                 }
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr278);
                        }
                        if(_loc7_ && this)
                        {
                           continue;
                        }
                        §§goto(addr256);
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr286);
               }
            }
            §§goto(addr288);
         }
         §§goto(addr176);
      }
      
      public function §?"2§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(radiansToDegres(this.getBody().GetAngle()));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
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
                     addr104:
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
                           loop3:
                           while(true)
                           {
                              §§push(§""@§(_loc2_));
                              if(!(_loc3_ || _loc2_))
                              {
                                 _loc2_ = §§pop();
                                 do
                                 {
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 while(this.getBody().§^!c§(_loc2_), _loc4_);
                                 
                              }
                              else
                              {
                                 addr88:
                                 addr54:
                              }
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr104);
            }
         }
         §§goto(addr54);
      }
      
      public function §0!`§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!(_loc15_ && this))
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.getBody().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc14_)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc15_ && param1))
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc14_ || param2)
            {
               §§push(§§pop() - param2.y);
               if(!(_loc15_ && param1))
               {
                  addr67:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc14_ || _loc3_)
               {
                  §§push(_loc4_);
                  if(_loc14_ || param1)
                  {
                     §§push(0);
                     if(_loc14_ || param2)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc14_)
                        {
                           if(§§pop())
                           {
                              if(_loc14_ || this)
                              {
                                 §§pop();
                                 if(_loc14_ || this)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc15_)
                                    {
                                       addr117:
                                       if(§§pop() == 0)
                                       {
                                          if(!_loc14_)
                                          {
                                             addr131:
                                             var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                                             addr121:
                                             §§push(_loc4_);
                                             if(!(_loc15_ && this))
                                             {
                                                §§push(§§pop() / _loc5_);
                                                if(!_loc15_)
                                                {
                                                   addr154:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc7_:* = §§pop();
                                                §§push(Math.atan(_loc7_) * 180);
                                                if(!(_loc15_ && param1))
                                                {
                                                   §§push(§§pop() / Math.PI);
                                                   if(_loc14_)
                                                   {
                                                      addr173:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!_loc15_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc14_ || param2)
                                                      {
                                                         §§push(0);
                                                         if(!_loc15_)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§goto(addr195);
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                      addr195:
                                                      §§push(§§pop() + 180);
                                                      if(_loc14_ || param2)
                                                      {
                                                         addr203:
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc15_ && this))
                                                         {
                                                            _loc8_ = §§pop();
                                                            addr212:
                                                            §§push(_loc8_);
                                                            if(_loc14_ || _loc3_)
                                                            {
                                                               §§goto(addr220);
                                                            }
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      addr220:
                                                      §§push(param1);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc15_)
                                                         {
                                                            addr227:
                                                            §§push(Number(§§pop()));
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      if(_loc14_ || param2)
                                                      {
                                                         §§push(§§pop() * Math.PI);
                                                         if(_loc14_ || param1)
                                                         {
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr255);
                                                      }
                                                      addr246:
                                                      §§push(§§pop() / 180);
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         addr255:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      §§push(Math.sin(_loc10_) * _loc6_);
                                                      if(_loc14_ || _loc3_)
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
                                                         this.getBody().SetPosition(_loc13_);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr131);
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     §§goto(addr117);
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr67);
         }
         §§goto(addr46);
      }
   }
}
