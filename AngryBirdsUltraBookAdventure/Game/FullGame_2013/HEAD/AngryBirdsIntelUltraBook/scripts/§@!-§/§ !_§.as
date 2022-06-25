package §@!-§
{
   import §#!,§.§0!b§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   import §,!7§.AnimationManager;
   import §,!7§.TextureManager;
   import §6!!§.LevelObject;
   import §6!J§.Texture;
   import §<u§.§!t§;
   import §?!Y§.§`S§;
   import §]!@§.LevelMain;
   import §]!@§.§]!1§;
   
   public class § !_§
   {
      
      public static const §?D§:int = 0;
      
      public static const §0o§:int = 1;
      
      public static const §=_§:int = 2;
      
      public static const §'!R§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §%!!§:String = "Effect_TrailBig_Bird";
      
      public static const §,D§:String = "Effect_Trail_Sparkle";
      
      public static const §"A§:String = "Effect_Floating_Score";
      
      public static const §<x§:String = "Effect_Floating_Text";
      
      public static const §8W§:String = "Effect_Explosion_Particle";
      
      public static const §]!e§:String = "Effect_Explosion_Core";
      
      public static const §9y§:String = "Effect_Pig_Destruction";
      
      public static const §59§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §8,§:String = "Effect_Bird_Destruction";
      
      public static const §4b§:String = "Effect_Block_Destruction_Particles";
      
      public static const §3!d§:String = "Effect_Block_Destruction_Core";
      
      public static const §>N§:int = 0;
      
      public static const §+!G§:int = 1;
      
      public static const §-,§:int = 2;
      
      public static const §`A§:int = 3;
      
      public static const §%!3§:int = 4;
      
      public static const §4l§:int = 5;
      
      public static const §<!W§:int = 6;
      
      public static const §;!O§:int = 7;
      
      public static const §]4§:int = 8;
      
      public static const §,p§:int = 9;
      
      public static const §5!F§:int = 10;
      
      public static const §`!9§:int = 11;
      
      public static const § i§:int = 12;
      
      public static const §%!J§:int = 13;
      
      public static const §5!!§:int = 14;
      
      public static const §`;§:int = 15;
      
      public static const §!M§:int = 16;
      
      public static const §&I§:int = 17;
      
      public static const §!!R§:int = 18;
      
      public static const §+!W§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?D§ = 0;
            loop0:
            while(true)
            {
               §0o§ = 1;
               while(true)
               {
                  §=_§ = 2;
                  loop15:
                  while(!(_loc1_ && _loc2_))
                  {
                     §4b§ = "Effect_Block_Destruction_Particles";
                     loop16:
                     while(true)
                     {
                        §3!d§ = "Effect_Block_Destruction_Core";
                        while(true)
                        {
                           §>N§ = 0;
                           continue loop0;
                           loop21:
                           for(; !(_loc1_ && § !_§); if(_loc1_ && § !_§)
                           {
                              continue;
                           },if(_loc2_)
                           {
                              §!M§ = 16;
                              §§goto(addr90);
                           },§§goto(addr330))
                           {
                              §%!3§ = 4;
                              loop22:
                              while(true)
                              {
                                 §4l§ = 5;
                                 loop23:
                                 while(_loc2_)
                                 {
                                    §<!W§ = 6;
                                    continue loop22;
                                    loop28:
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       §`!9§ = 11;
                                       loop29:
                                       while(true)
                                       {
                                          § i§ = 12;
                                          loop30:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                if(_loc2_)
                                                {
                                                   §%!J§ = 13;
                                                   while(true)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop28;
                                                      }
                                                      if(!(_loc2_ || § !_§))
                                                      {
                                                         break;
                                                      }
                                                      §5!!§ = 14;
                                                      loop32:
                                                      while(true)
                                                      {
                                                         §`;§ = 15;
                                                         addr113:
                                                         addr330:
                                                         while(true)
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               continue loop21;
                                                            }
                                                            continue loop22;
                                                         }
                                                         addr90:
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §]!e§ = "Effect_Explosion_Core";
                                                            addr318:
                                                            addr345:
                                                            while(!(_loc1_ && _loc1_))
                                                            {
                                                               §9y§ = "Effect_Pig_Destruction";
                                                               break loop30;
                                                            }
                                                            addr377:
                                                            while(_loc2_)
                                                            {
                                                               §"A§ = "Effect_Floating_Score";
                                                               while(true)
                                                               {
                                                                  §<x§ = "Effect_Floating_Text";
                                                                  addr335:
                                                                  while(true)
                                                                  {
                                                                     §8W§ = "Effect_Explosion_Particle";
                                                                     continue loop11;
                                                                  }
                                                                  addr78:
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     §!!R§ = 18;
                                                                     continue loop29;
                                                                  }
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                            while(true)
                                                            {
                                                               PARTICLE_NAME_BIRD_TRAIL2 = "Effect_Trail_Bird2";
                                                               addr372:
                                                               while(true)
                                                               {
                                                                  PARTICLE_NAME_BIRD_TRAIL3 = "Effect_Trail_Bird3";
                                                                  while(true)
                                                                  {
                                                                     §%!!§ = "Effect_TrailBig_Bird";
                                                                     addr362:
                                                                     while(true)
                                                                     {
                                                                        §,D§ = "Effect_Trail_Sparkle";
                                                                        §§goto(addr345);
                                                                     }
                                                                     addr45:
                                                                     if(!(_loc1_ && _loc2_))
                                                                     {
                                                                        return;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         loop34:
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               continue loop30;
                                                            }
                                                            continue loop32;
                                                            addr69:
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ || _loc1_))
                                                               {
                                                                  continue loop34;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr78);
                                                               }
                                                               else
                                                               {
                                                                  while(!_loc1_)
                                                                  {
                                                                     §]4§ = 8;
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §,p§ = 9;
                                                                           while(true)
                                                                           {
                                                                              §5!F§ = 10;
                                                                              continue loop28;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §-,§ = 2;
                                                                              break loop23;
                                                                           }
                                                                           addr267:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §8,§ = "Effect_Bird_Destruction";
                                                                        break loop34;
                                                                     }
                                                                  }
                                                                  §§goto(addr318);
                                                                  addr208:
                                                               }
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         continue loop15;
                                                      }
                                                      addr34:
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         §§goto(addr45);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr194);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §'!R§ = 3;
                                                      while(true)
                                                      {
                                                         PARTICLE_NAME_BIRD_TRAIL1 = "Effect_Trail_Bird1";
                                                         §§goto(addr377);
                                                         addr226:
                                                         if(_loc1_ && _loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         §;!O§ = 7;
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                   addr387:
                                                }
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          while(!_loc1_)
                                          {
                                             §59§ = "Effect_Pig_Destruction_Headshot";
                                             §§goto(addr306);
                                          }
                                          §§goto(addr362);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §`A§ = 3;
                                    continue loop21;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr387);
      }
      
      public var §"@§:int;
      
      public var §3!+§:int;
      
      public var §]!$§:String;
      
      public var §,F§:Number;
      
      public var §7!j§:Number;
      
      public var §&#§:Number;
      
      public var §+[§:Number;
      
      public var §&Z§:Number = 0;
      
      public var §?C§:Number;
      
      public var §1W§:Number;
      
      public var §!!Y§:String;
      
      public var §#!^§:Number = -1;
      
      public var §&!@§:int;
      
      public var §1X§:Number;
      
      public var §`J§:Number;
      
      private var §+G§:Sprite;
      
      private var §],§:§]!1§;
      
      private var §8D§:int;
      
      protected var §2W§:int;
      
      protected var §,i§:Boolean;
      
      private var §;]§:Animation;
      
      private var §'!4§:Boolean;
      
      private var §,!%§:AnimationManager;
      
      private var §7!`§:TextureManager;
      
      private var §-!_§:LevelObject;
      
      public function § !_§(param1:AnimationManager, param2:TextureManager, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_ || param3)
         {
            this.§+G§ = new Sprite();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§,!%§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§7!`§ = param2;
                     while(true)
                     {
                        this.§]!$§ = param3;
                        while(_loc19_)
                        {
                           this.§"@§ = param5;
                           loop16:
                           while(_loc19_ || param2)
                           {
                              this.§7!j§ = param12;
                              loop17:
                              while(true)
                              {
                                 if(_loc19_)
                                 {
                                    continue loop2;
                                 }
                                 addr183:
                                 addr138:
                                 while(true)
                                 {
                                    this.§&#§ = param11;
                                    if(!(_loc18_ && this))
                                    {
                                       §§goto(addr25);
                                    }
                                    continue loop16;
                                 }
                                 addr138:
                                 while(true)
                                 {
                                    if(_loc19_ || this)
                                    {
                                       continue loop1;
                                    }
                                    continue loop17;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                        continue loop0;
                        addr92:
                        if(!(_loc19_ || param2))
                        {
                           continue;
                        }
                        if(this.§"@§ == §0o§)
                        {
                           if(!_loc18_)
                           {
                              if(!_loc18_)
                              {
                                 if(_loc18_)
                                 {
                                    while(true)
                                    {
                                       this.createVisuals();
                                       loop20:
                                       while(true)
                                       {
                                          if(_loc19_ || this)
                                          {
                                             addr111:
                                             if(_loc19_ || this)
                                             {
                                                this.§@!F§();
                                                while(true)
                                                {
                                                   if(_loc18_)
                                                   {
                                                      continue loop20;
                                                   }
                                                   if(_loc19_)
                                                   {
                                                      addr85:
                                                      if(_loc19_ || param3)
                                                      {
                                                         §§goto(addr92);
                                                      }
                                                      while(true)
                                                      {
                                                         this.§1W§ = param8;
                                                         break loop20;
                                                         §§goto(addr85);
                                                      }
                                                      addr212:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr138);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                addr25:
                                                return;
                                                addr81:
                                             }
                                             break;
                                          }
                                          addr188:
                                          while(true)
                                          {
                                             this.§?C§ = param15;
                                             §§goto(addr183);
                                             continue loop20;
                                          }
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          if(!_loc18_)
                                          {
                                             this.§1X§ = param6;
                                             addr193:
                                             while(!(_loc18_ && param3))
                                             {
                                                this.§`J§ = param7;
                                                §§goto(addr188);
                                             }
                                             while(true)
                                             {
                                                this.§,i§ = param17;
                                                break loop12;
                                                §§goto(addr193);
                                             }
                                             addr193:
                                             addr227:
                                          }
                                          break;
                                          §§goto(addr111);
                                       }
                                       while(true)
                                       {
                                          this.§!!Y§ = param9;
                                          addr217:
                                          while(true)
                                          {
                                             this.§,F§ = 0;
                                             §§goto(addr212);
                                          }
                                       }
                                    }
                                    addr133:
                                 }
                                 if(!_loc18_)
                                 {
                                    if(!_loc18_)
                                    {
                                       addr45:
                                       if(!(_loc18_ && param3))
                                       {
                                          §§push(this);
                                          §§push(§`S§.§[o§.§!![§.§-!J§);
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() + this.§+G§.height * LevelMain.§@!d§);
                                          }
                                          §§pop().§#!^§ = §§pop();
                                          §§goto(addr69);
                                       }
                                       while(true)
                                       {
                                          if(!_loc18_)
                                          {
                                             this.§2W§ = param16;
                                             §§goto(addr227);
                                          }
                                          break;
                                          §§goto(addr45);
                                       }
                                       while(!_loc18_)
                                       {
                                          this.§&!@§ = param10;
                                          §§goto(addr232);
                                       }
                                       addr232:
                                       while(true)
                                       {
                                          this.§3!+§ = param4;
                                          §§goto(addr249);
                                       }
                                       addr249:
                                       addr256:
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr25);
                     }
                  }
               }
            }
         }
         §§goto(addr256);
      }
      
      public static function § do§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase().indexOf("BIRD_RED") >= 0)
               {
                  addr385:
                  §§push(§>N§);
               }
               else
               {
                  while(true)
                  {
                     §§push(param1);
                     addr370:
                     addr377:
                     loop2:
                     while(§§pop().toUpperCase().indexOf("BIRD_YELLOW") < 0)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(!(_loc2_ && § !_§))
                           {
                              if(§§pop().toUpperCase().indexOf("BIRD_BLUE") >= 0)
                              {
                                 addr347:
                                 if(!(_loc3_ || § !_§))
                                 {
                                    continue loop3;
                                 }
                                 return §+!G§;
                              }
                              else
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop().toUpperCase().indexOf("BIRD_BLACK") >= 0)
                                       {
                                          addr313:
                                          if(!(_loc3_ || § !_§))
                                          {
                                             continue loop5;
                                          }
                                          §§push(§4l§);
                                          if(!(_loc2_ && param1))
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr283:
                                             loop8:
                                             while(_loc3_ || _loc3_)
                                             {
                                                if(§§pop().toUpperCase().indexOf("BIRD_WHITE") >= 0)
                                                {
                                                   addr297:
                                                   §§push(§%!3§);
                                                   if(_loc3_ || § !_§)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr387:
                                                   addr387:
                                                   return §§pop();
                                                }
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr270:
                                                   while(_loc3_)
                                                   {
                                                      if(§§pop().toUpperCase().indexOf("BIRD_GREEN") >= 0)
                                                      {
                                                         addr279:
                                                         return §`A§;
                                                         addr277:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         addr250:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop0;
                                                         addr280:
                                                      }
                                                   }
                                                   continue loop6;
                                                   addr305:
                                                }
                                             }
                                             continue loop4;
                                          }
                                          addr281:
                                       }
                                    }
                                 }
                              }
                              return §§pop();
                           }
                           continue loop2;
                        }
                     }
                     return §-,§;
                  }
                  addr368:
               }
               §§goto(addr387);
            }
         }
         §§goto(addr266);
      }
      
      public static function §5U§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase().indexOf("BIRD_RED") >= 0)
               {
                  addr247:
                  return § i§;
               }
               addr221:
               while(true)
               {
                  §§push(param1);
                  continue loop0;
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§+G§;
      }
      
      public function §3!b§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:Animation = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc10_)
         {
            _loc1_ = Math.random() * 100;
         }
         §§push(this.§]!$§);
         loop0:
         while(true)
         {
            var _loc9_:* = §§pop();
            if(!_loc11_)
            {
               §§push(PARTICLE_NAME_BIRD_TRAIL1);
               if(_loc10_ || this)
               {
                  §§push(_loc9_);
                  if(!(_loc11_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc10_)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              addr2122:
                           }
                        }
                        else
                        {
                           addr2125:
                           §§push(14);
                           if(_loc10_)
                           {
                              addr2128:
                           }
                        }
                        addr2130:
                        loop1:
                        while(true)
                        {
                           loop8:
                           switch(§§pop())
                           {
                              case 0:
                                 this.createParticle("TRAIL_1");
                                 break;
                                 addr498:
                              case 1:
                                 this.createParticle("TRAIL_2");
                                 break;
                                 addr490:
                              case 2:
                                 this.createParticle("TRAIL_3");
                                 break;
                                 addr482:
                              case 3:
                                 this.createParticle("SMOKE_SMALL",null,15,false);
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 addr709:
                                 addr709:
                                 _loc2_ = new Sprite();
                                 _loc3_ = this.§,!%§.getAnimation("NUMBERS");
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    this.§],§ = new §]!1§(_loc2_,_loc3_,true);
                                    if(_loc10_ || _loc2_)
                                    {
                                       addr739:
                                       this.§],§.§=>§(parseInt(this.§!!Y§));
                                       if(!_loc11_)
                                       {
                                          §§push(this.§+G§);
                                          if(_loc10_)
                                          {
                                             §§pop().addChild(_loc2_);
                                             if(_loc10_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr739);
                                                }
                                                _loc2_.scaleX = _loc2_.scaleY = 0.75;
                                                if(_loc10_ || _loc2_)
                                                {
                                                   _loc2_.color = _loc8_;
                                                   if(!_loc11_)
                                                   {
                                                      _loc2_.flatten();
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         addr871:
                                                         break;
                                                      }
                                                      addr1719:
                                                      §§push(this.§+G§);
                                                      if(!_loc11_)
                                                      {
                                                         addr1723:
                                                         if(§§pop())
                                                         {
                                                            addr1762:
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               addr1732:
                                                               §§push(this.§+G§);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr1762);
                                                      }
                                                      §§push(Math.random() * 360);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         addr1746:
                                                         §§push(§§pop() / 180);
                                                         if(!_loc11_)
                                                         {
                                                            addr1750:
                                                            §§push(§§pop() * Math.PI);
                                                         }
                                                      }
                                                      §§pop().rotation = §§pop();
                                                      if(_loc11_ && _loc3_)
                                                      {
                                                         addr1774:
                                                         break;
                                                      }
                                                      addr1353:
                                                      addr1321:
                                                   }
                                                   §§goto(addr1762);
                                                }
                                                else
                                                {
                                                   §§push(this);
                                                   §§push("PARTICLE_ICE_");
                                                   if(!(_loc11_ && this))
                                                   {
                                                      §§push(§§pop() + _loc6_);
                                                   }
                                                   §§pop().createParticle(§§pop());
                                                   if(!_loc11_)
                                                   {
                                                      addr1471:
                                                      §§push(this.§+G§);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc11_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc11_ && _loc1_))
                                                               {
                                                                  §§push(this.§+G§);
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     addr1495:
                                                                     §§push(Math.random() * 360);
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        §§push(180);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!(_loc11_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * Math.PI);
                                                                              if(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 §§pop().rotation = §§pop();
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr1444:
                                                                                    break;
                                                                                    addr1532:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1732);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr1746);
                                                                     }
                                                                     §§goto(addr1750);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1723);
                                                                  }
                                                               }
                                                               §§goto(addr1762);
                                                            }
                                                            §§goto(addr1444);
                                                         }
                                                         §§goto(addr1723);
                                                      }
                                                      §§goto(addr1495);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr1719);
                                                   }
                                                   addr906:
                                                }
                                                §§goto(addr1719);
                                             }
                                             §§goto(addr1353);
                                          }
                                          §§goto(addr1495);
                                       }
                                       §§goto(addr1774);
                                    }
                                    else
                                    {
                                       addr984:
                                    }
                                    §§goto(addr1471);
                                 }
                                 else
                                 {
                                    addr963:
                                    §§push(this);
                                    §§push("PARTICLE_STONE_");
                                    if(_loc10_ || _loc1_)
                                    {
                                       §§push(§§pop() + _loc6_);
                                    }
                                    §§pop().createParticle(§§pop());
                                    if(!(_loc11_ && _loc2_))
                                    {
                                       §§goto(addr984);
                                    }
                                    addr1023:
                                 }
                                 §§goto(addr1532);
                                 break;
                              case 4:
                                 addr442:
                                 §§push(Boolean(false));
                                 if(!(_loc11_ && this))
                                 {
                                    addr425:
                                    addr459:
                                    §§push(§§pop());
                                    if(_loc10_ || _loc1_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       addr460:
                                       §§pop();
                                       §§push(Boolean(Math.random() < 0.5));
                                       addr461:
                                    }
                                    if(§§pop())
                                    {
                                       addr426:
                                       this.createParticle("??");
                                       addr430:
                                       if(!(_loc10_ || _loc1_))
                                       {
                                          §§goto(addr461);
                                       }
                                       addr398:
                                       break;
                                    }
                                    this.createParticle("??");
                                    addr416:
                                    §§goto(addr398);
                                 }
                                 §§goto(addr460);
                              case 5:
                                 this.createParticle("SMOKE_BIG",null,20,true);
                                 break;
                                 addr408:
                              case 6:
                                 this.createParticle("EXPLOSION",null,20,true);
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    break;
                                 }
                                 break;
                              case 7:
                                 this.createParticle("SMOKE_SMALL",null,15,false);
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 §§goto(addr709);
                                 break;
                              case 8:
                                 this.createParticle("EXPLOSION",null,20,true);
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    §§goto(addr416);
                                 }
                                 break;
                              case 9:
                                 addr338:
                                 _loc4_ = 1 + _loc1_ % 5;
                                 addr339:
                                 if(_loc10_ || this)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr482);
                                 break;
                                 addr333:
                              case 10:
                              case 11:
                                 §§push(parseInt(this.§!!Y§) == 10000);
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc11_)
                                    {
                                       if(!_loc11_)
                                       {
                                          addr275:
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!(_loc11_ && this))
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §§pop();
                                                      if(_loc11_ && this)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§push(parseInt(this.§!!Y§) == 5000);
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr426);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr442);
                                                   }
                                                }
                                                §§goto(addr460);
                                             }
                                             §§goto(addr709);
                                          }
                                          else
                                          {
                                             addr225:
                                             if(§§pop())
                                             {
                                                if(_loc10_ || _loc1_)
                                                {
                                                   §§push(16777215);
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      while(true)
                                                      {
                                                         _loc8_ = §§pop();
                                                         addr244:
                                                         while(true)
                                                         {
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               §§push(this.§&!@§);
                                                               if(_loc11_ && _loc1_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr430);
                                                            }
                                                         }
                                                      }
                                                      addr243:
                                                   }
                                                   loop5:
                                                   while(true)
                                                   {
                                                      _loc9_ = §§pop();
                                                      if(_loc10_)
                                                      {
                                                         §§push(§ i§);
                                                         if(_loc10_)
                                                         {
                                                            §§push(_loc9_);
                                                            if(_loc10_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc11_ && this)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr599:
                                                                     §§push(3);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr631:
                                                                        addr632:
                                                                        if(§§pop() === _loc9_)
                                                                        {
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              addr640:
                                                                              §§push(5);
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 addr661:
                                                                                 if(!(_loc11_ && _loc1_))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       switch(§§pop())
                                                                                       {
                                                                                          case 0:
                                                                                             §§push(16058683);
                                                                                             if(!(_loc11_ && _loc3_))
                                                                                             {
                                                                                                addr170:
                                                                                                _loc8_ = int(§§pop());
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(_loc10_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc10_ || _loc2_)
                                                                                                      {
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr490);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr408);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr339);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr244);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop1;
                                                                                             §§goto(addr709);
                                                                                             break;
                                                                                          case 1:
                                                                                             §§push(55294);
                                                                                             if(!(_loc11_ && _loc2_))
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                _loc8_ = §§pop();
                                                                                                addr150:
                                                                                                if(!(_loc11_ && _loc1_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr498);
                                                                                             }
                                                                                             break loop5;
                                                                                          case 2:
                                                                                             addr112:
                                                                                             §§push(1878602);
                                                                                             if(!(_loc11_ && this))
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      if(!(_loc11_ && this))
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         addr71:
                                                                                                         break;
                                                                                                         addr134:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr333);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr243);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr170);
                                                                                                }
                                                                                                §§goto(addr244);
                                                                                             }
                                                                                             §§goto(addr338);
                                                                                          case 3:
                                                                                             §§push(3552822);
                                                                                             if(!(_loc11_ && _loc3_))
                                                                                             {
                                                                                                if(_loc10_ || _loc2_)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   if(!(_loc11_ && _loc1_))
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      if(_loc10_ || _loc1_)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr150);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr112);
                                                                                             }
                                                                                             continue;
                                                                                          case 4:
                                                                                             break;
                                                                                          case 5:
                                                                                             §§push(16705792);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                if(!(_loc10_ || _loc2_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             _loc8_ = §§pop();
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc11_ && _loc2_))
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr134);
                                                                                                }
                                                                                                §§goto(addr71);
                                                                                             }
                                                                                             addr690:
                                                                                             §§push(7201353);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                break loop5;
                                                                                             }
                                                                                             continue loop1;
                                                                                       }
                                                                                       if(parseInt(this.§!!Y§) == 5000)
                                                                                       {
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             §§goto(addr690);
                                                                                          }
                                                                                          break loop8;
                                                                                       }
                                                                                       §§goto(addr709);
                                                                                    }
                                                                                    break loop8;
                                                                                 }
                                                                                 break;
                                                                                 addr648:
                                                                              }
                                                                           }
                                                                        }
                                                                        else if(true)
                                                                        {
                                                                           §§goto(addr661);
                                                                           §§push(6);
                                                                        }
                                                                        §§goto(addr661);
                                                                        if(_loc10_ || _loc2_)
                                                                        {
                                                                           addr659:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr602:
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§%!J§);
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr545:
                                                                     §§push(_loc9_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc10_ || _loc1_)
                                                                           {
                                                                              addr556:
                                                                              §§push(1);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr559:
                                                                                 §§goto(addr661);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr593:
                                                                                 §§push(_loc9_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§goto(addr599);
                                                                                       }
                                                                                       §§goto(addr640);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(§!M§);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc10_ || _loc1_)
                                                                                          {
                                                                                             addr615:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(4);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr621:
                                                                                                   }
                                                                                                   §§goto(addr661);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr651);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(§5!!§);
                                                                                                if(_loc10_ || _loc2_)
                                                                                                {
                                                                                                   §§goto(addr631);
                                                                                                }
                                                                                                §§goto(addr648);
                                                                                             }
                                                                                             §§goto(addr661);
                                                                                          }
                                                                                          §§goto(addr632);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr659);
                                                                                 }
                                                                                 §§goto(addr631);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr575:
                                                                              §§push(2);
                                                                              if(_loc10_ || _loc1_)
                                                                              {
                                                                              }
                                                                              §§goto(addr661);
                                                                           }
                                                                           §§goto(addr621);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(§`;§);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 addr572:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§goto(addr575);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr631);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§&I§);
                                                                                    if(!(_loc11_ && this))
                                                                                    {
                                                                                       §§goto(addr593);
                                                                                    }
                                                                                    §§goto(addr602);
                                                                                 }
                                                                                 §§goto(addr661);
                                                                              }
                                                                              §§goto(addr615);
                                                                           }
                                                                        }
                                                                        §§goto(addr602);
                                                                     }
                                                                     §§goto(addr572);
                                                                  }
                                                                  §§goto(addr559);
                                                               }
                                                               §§goto(addr661);
                                                            }
                                                            §§goto(addr572);
                                                         }
                                                         §§goto(addr545);
                                                      }
                                                      §§goto(addr556);
                                                   }
                                                   addr701:
                                                   _loc8_ = §§pop();
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      §§goto(addr709);
                                                   }
                                                   break loop8;
                                                }
                                                §§goto(addr244);
                                             }
                                             else
                                             {
                                                _loc2_ = new Sprite();
                                                _loc3_ = this.§,!%§.getAnimation("NUMBERS");
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   this.§],§ = new §]!1§(_loc2_,_loc3_);
                                                   addr831:
                                                   this.§],§.§=>§(parseInt(this.§!!Y§));
                                                   addr861:
                                                   if(_loc10_ || this)
                                                   {
                                                      if(_loc10_ || _loc1_)
                                                      {
                                                         this.§+G§.addChild(_loc2_);
                                                         if(_loc10_ || this)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr831);
                                                            }
                                                            _loc2_.scaleX = _loc2_.scaleY = 0.75;
                                                         }
                                                         §§goto(addr871);
                                                         addr854:
                                                      }
                                                      §§goto(addr861);
                                                   }
                                                   §§goto(addr871);
                                                }
                                                §§goto(addr854);
                                             }
                                          }
                                          §§goto(addr871);
                                       }
                                       break;
                                    }
                                    §§goto(addr275);
                                 }
                                 §§goto(addr459);
                              case 12:
                                 §§push(this.§&!@§);
                                 if(_loc10_ || _loc3_)
                                 {
                                    _loc9_ = §§pop();
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§push(§,p§);
                                       if(!_loc11_)
                                       {
                                          §§push(_loc9_);
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§push(0);
                                                   if(_loc10_)
                                                   {
                                                      addr1294:
                                                      if(!_loc11_)
                                                      {
                                                         addr1297:
                                                         switch(§§pop())
                                                         {
                                                            case 4:
                                                               §§push(1);
                                                               if(!_loc10_)
                                                               {
                                                                  §§goto(addr1297);
                                                               }
                                                               §§push(_loc1_);
                                                               if(_loc10_ || this)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc10_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() % §§pop());
                                                                           if(_loc10_ || _loc1_)
                                                                           {
                                                                              addr936:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(_loc10_ || _loc1_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(_loc10_ || this)
                                                                                          {
                                                                                             addr958:
                                                                                             _loc6_ = §§pop();
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr963);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1471);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr1711:
                                                                                             switch(§§pop())
                                                                                             {
                                                                                                case 0:
                                                                                                   §§push(this);
                                                                                                   §§push("PARTICLE_BIRDRED_");
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                   }
                                                                                                   §§pop().createParticle(§§pop());
                                                                                                   §§goto(addr1719);
                                                                                                   addr1443:
                                                                                                case 1:
                                                                                                   §§push(this);
                                                                                                   §§push("PARTICLE_BIRDBLACK_");
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                   }
                                                                                                   §§pop().createParticle(§§pop());
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr1719);
                                                                                                case 2:
                                                                                                   §§push(this);
                                                                                                   §§push("PARTICLE_BIRDBLUE_");
                                                                                                   if(!(_loc11_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                   }
                                                                                                   §§pop().createParticle(§§pop());
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§goto(addr1719);
                                                                                                      addr1417:
                                                                                                   }
                                                                                                   break;
                                                                                                case 3:
                                                                                                   §§push(this);
                                                                                                   §§push("PARTICLE_BIRDGREEN_");
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                   }
                                                                                                   §§pop().createParticle(§§pop());
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§goto(addr1719);
                                                                                                      addr1398:
                                                                                                   }
                                                                                                   §§goto(addr1732);
                                                                                                case 4:
                                                                                                   §§push(this);
                                                                                                   §§push("PARTICLE_BIRDWHITE_");
                                                                                                   if(!(_loc11_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                   }
                                                                                                   §§pop().createParticle(§§pop());
                                                                                                   if(_loc10_ || _loc1_)
                                                                                                   {
                                                                                                      if(_loc11_ && _loc2_)
                                                                                                      {
                                                                                                         §§goto(addr1443);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr1384:
                                                                                                      }
                                                                                                      §§goto(addr1719);
                                                                                                   }
                                                                                                   break;
                                                                                                case 5:
                                                                                                   §§push(this);
                                                                                                   §§push("PARTICLE_BIRDYELLOW_");
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                   }
                                                                                                   §§pop().createParticle(§§pop());
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§goto(addr1719);
                                                                                                   }
                                                                                                   break;
                                                                                                case 6:
                                                                                                   §§push(this);
                                                                                                   §§push("PARTICLE_BIRDBLACK_");
                                                                                                   if(!(_loc11_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                   }
                                                                                                   §§pop().createParticle(§§pop());
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§goto(addr1719);
                                                                                                      addr1339:
                                                                                                   }
                                                                                                   break;
                                                                                                default:
                                                                                                   §§push(this);
                                                                                                   §§push("PARTICLE_BIRDWHITE_");
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                   }
                                                                                                   §§pop().createParticle(§§pop());
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr1319:
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr1321);
                                                                                                      }
                                                                                                      §§goto(addr1719);
                                                                                                   }
                                                                                             }
                                                                                             §§goto(addr1762);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1111:
                                                                                          _loc6_ = int(§§pop());
                                                                                          addr1110:
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             this.createParticle("??");
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§goto(addr1471);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1719);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1384);
                                                                                          }
                                                                                          §§goto(addr1719);
                                                                                       }
                                                                                       §§goto(addr1384);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr1080:
                                                                                       §§push(int(§§pop()));
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          addr1083:
                                                                                          _loc6_ = §§pop();
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push("PARTICLE_WOOD_");
                                                                                             if(!(_loc11_ && _loc2_))
                                                                                             {
                                                                                                §§push(§§pop() + _loc6_);
                                                                                             }
                                                                                             §§pop().createParticle(§§pop());
                                                                                             if(_loc10_ || _loc1_)
                                                                                             {
                                                                                                §§goto(addr1471);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1417);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1339);
                                                                                          }
                                                                                          §§goto(addr1719);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1457:
                                                                                          §§push(int(§§pop() + _loc1_ % 3));
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr1462:
                                                                                             _loc7_ = §§pop();
                                                                                             if(_loc10_ || _loc1_)
                                                                                             {
                                                                                                §§push(this.§&!@§);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr1539:
                                                                                                   _loc9_ = §§pop();
                                                                                                   if(!(_loc11_ && _loc2_))
                                                                                                   {
                                                                                                      addr1547:
                                                                                                      §§push(§>N§);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(!(_loc11_ && _loc3_))
                                                                                                               {
                                                                                                                  addr1567:
                                                                                                                  §§push(0);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr1710:
                                                                                                                     §§goto(addr1711);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1680:
                                                                                                                     §§goto(addr1710);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr1581:
                                                                                                                  §§push(1);
                                                                                                                  if(!(_loc11_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr1589:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1632:
                                                                                                                  }
                                                                                                                  §§goto(addr1710);
                                                                                                               }
                                                                                                               §§goto(addr1710);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(§4l§);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     addr1578:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§goto(addr1581);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr1694:
                                                                                                                           §§push(6);
                                                                                                                           if(_loc10_ || this)
                                                                                                                           {
                                                                                                                              addr1702:
                                                                                                                           }
                                                                                                                           §§goto(addr1710);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(§+!G§);
                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              addr1602:
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc11_ && this))
                                                                                                                                 {
                                                                                                                                    addr1610:
                                                                                                                                    §§push(2);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1710);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1632);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr1672:
                                                                                                                                    §§push(5);
                                                                                                                                    if(_loc10_ || this)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1680);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr1690:
                                                                                                                                       addr1691:
                                                                                                                                       if(§§pop() === _loc9_)
                                                                                                                                       {
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1694);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr1704:
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1710);
                                                                                                                                             §§push(7);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1710);
                                                                                                                                       §§goto(addr1710);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(§`A§);
                                                                                                                                 if(_loc10_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr1669:
                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1672);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1694);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(§!!R§);
                                                                                                                                       if(!(_loc11_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr1690);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1702);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1710);
                                                                                                                           }
                                                                                                                           §§goto(addr1669);
                                                                                                                        }
                                                                                                                        §§goto(addr1710);
                                                                                                                     }
                                                                                                                     §§goto(addr1710);
                                                                                                                  }
                                                                                                                  addr1626:
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        §§push(3);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§goto(addr1632);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1690);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1690);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(§%!3§);
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        addr1637:
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           if(§§pop() === §§pop())
                                                                                                                           {
                                                                                                                              if(_loc10_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §§push(4);
                                                                                                                                 if(!(_loc11_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr1710);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr1661:
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!(_loc11_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr1669);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1691);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1694);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(§-,§);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1661);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1690);
                                                                                                                     }
                                                                                                                     §§goto(addr1710);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1708);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1578);
                                                                                                      }
                                                                                                      §§goto(addr1708);
                                                                                                   }
                                                                                                   §§goto(addr1581);
                                                                                                }
                                                                                                §§goto(addr1711);
                                                                                             }
                                                                                             §§goto(addr1762);
                                                                                          }
                                                                                          §§goto(addr1539);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1711);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr1003:
                                                                                    §§push(int(§§pop()));
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                §§goto(addr1023);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1398);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr1100:
                                                                                             §§push(_loc1_);
                                                                                             §§push(5);
                                                                                             if(!(_loc11_ && _loc1_))
                                                                                             {
                                                                                                addr1109:
                                                                                                §§goto(addr1110);
                                                                                                §§push(§§pop() + §§pop() % §§pop());
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1457);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1774);
                                                                                       }
                                                                                       §§goto(addr1111);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1462);
                                                                              }
                                                                              §§goto(addr1457);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr995:
                                                                           §§push(§§pop() % §§pop());
                                                                           if(!_loc11_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§goto(addr1003);
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§goto(addr1109);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1079:
                                                                                 §§goto(addr1080);
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr1457);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1457);
                                                                  }
                                                                  §§goto(addr1100);
                                                               }
                                                               §§goto(addr1457);
                                                            case 1:
                                                               §§goto(addr1100);
                                                            case 0:
                                                               §§push(1);
                                                               §§push(1);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(5);
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        §§push(§§pop() % §§pop());
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(_loc10_)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 if(!(_loc11_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr906);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1319);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr958);
                                                                              }
                                                                              §§goto(addr1471);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1003);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr936);
                                                                        }
                                                                     }
                                                                     §§goto(addr1457);
                                                                  }
                                                                  §§goto(addr1100);
                                                               }
                                                               else
                                                               {
                                                                  addr1052:
                                                                  §§push(_loc1_);
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     §§push(3);
                                                                     if(_loc10_ || _loc1_)
                                                                     {
                                                                        §§goto(addr1079);
                                                                        §§push(§§pop() % §§pop());
                                                                     }
                                                                     §§goto(addr1457);
                                                                  }
                                                               }
                                                               §§goto(addr1457);
                                                            case 2:
                                                               §§push(1);
                                                               if(!_loc11_)
                                                               {
                                                                  §§goto(addr1052);
                                                               }
                                                               §§goto(addr1083);
                                                            case 3:
                                                               §§push(1);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§goto(addr995);
                                                                     §§push(3);
                                                                  }
                                                                  §§goto(addr1457);
                                                               }
                                                               §§goto(addr1462);
                                                            default:
                                                               §§goto(addr1471);
                                                         }
                                                         §§goto(addr1719);
                                                      }
                                                      §§goto(addr1711);
                                                   }
                                                   else
                                                   {
                                                      addr1203:
                                                      §§push(_loc9_);
                                                      if(!_loc11_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§push(2);
                                                               if(_loc10_ || this)
                                                               {
                                                                  §§goto(addr1294);
                                                               }
                                                               §§goto(addr1632);
                                                            }
                                                            §§goto(addr1547);
                                                         }
                                                         else
                                                         {
                                                            §§push(§]4§);
                                                            if(_loc10_)
                                                            {
                                                               §§push(_loc9_);
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(3);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§goto(addr1294);
                                                                        }
                                                                        §§goto(addr1661);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr1257:
                                                                        §§push(4);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr1294);
                                                                        }
                                                                        §§goto(addr1589);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§`!9§);
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        addr1246:
                                                                        §§push(_loc9_);
                                                                        if(_loc10_)
                                                                        {
                                                                           addr1249:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 §§goto(addr1257);
                                                                              }
                                                                              §§goto(addr1610);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(false);
                                                                              if(_loc10_ || _loc1_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc11_ && _loc2_))
                                                                                    {
                                                                                       §§push(5);
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr1294);
                                                                                       }
                                                                                       §§goto(addr1637);
                                                                                    }
                                                                                    §§goto(addr1581);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(5);
                                                                                    if(!(_loc11_ && _loc2_))
                                                                                    {
                                                                                       §§goto(addr1294);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1637);
                                                                              }
                                                                           }
                                                                           §§goto(addr1704);
                                                                        }
                                                                        §§goto(addr1626);
                                                                     }
                                                                     §§goto(addr1589);
                                                                  }
                                                                  §§goto(addr1589);
                                                               }
                                                               §§goto(addr1249);
                                                            }
                                                         }
                                                         §§goto(addr1708);
                                                      }
                                                   }
                                                   §§goto(addr1669);
                                                }
                                                §§goto(addr1257);
                                             }
                                             else
                                             {
                                                §§push(§5!F§);
                                                if(_loc10_ || this)
                                                {
                                                   §§push(_loc9_);
                                                   if(_loc10_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            §§push(1);
                                                            if(_loc10_)
                                                            {
                                                               §§goto(addr1294);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1246);
                                                            }
                                                         }
                                                         §§goto(addr1567);
                                                      }
                                                      else
                                                      {
                                                         §§push(§;!O§);
                                                         if(_loc10_ || _loc1_)
                                                         {
                                                            §§goto(addr1203);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr1690);
                                                }
                                             }
                                             §§goto(addr1710);
                                          }
                                          §§goto(addr1602);
                                       }
                                       §§goto(addr1589);
                                    }
                                    §§goto(addr1567);
                                 }
                                 §§goto(addr1457);
                              case 13:
                                 §§push(1);
                                 if(!(_loc11_ && _loc1_))
                                 {
                                    §§goto(addr1457);
                                 }
                                 §§goto(addr1462);
                              default:
                                 this.createParticle(this.§]!$§,null,this.§2W§,this.§,i§);
                                 §§goto(addr1774);
                           }
                           addr2132:
                           return;
                        }
                     }
                     else
                     {
                        §§push(PARTICLE_NAME_BIRD_TRAIL2);
                        if(_loc10_)
                        {
                           addr1809:
                           §§push(_loc9_);
                           if(!(_loc11_ && _loc3_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc11_)
                                 {
                                    §§push(1);
                                    if(_loc11_)
                                    {
                                       addr1982:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr2125);
                                 }
                                 §§goto(addr2130);
                              }
                              else
                              {
                                 §§push(PARTICLE_NAME_BIRD_TRAIL3);
                                 if(_loc10_)
                                 {
                                    §§push(_loc9_);
                                    if(_loc10_ || _loc1_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(2);
                                             if(!(_loc10_ || _loc2_))
                                             {
                                                addr1953:
                                             }
                                          }
                                          else
                                          {
                                             addr2022:
                                             §§push(9);
                                             if(!_loc11_)
                                             {
                                                addr2025:
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(§%!!§);
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(_loc9_);
                                             if(!_loc11_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §§push(3);
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         §§goto(addr2130);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr2122);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr1921:
                                                      §§push(5);
                                                      if(_loc10_)
                                                      {
                                                         §§goto(addr2130);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr2025);
                                                      }
                                                   }
                                                   §§goto(addr2130);
                                                }
                                                else
                                                {
                                                   §§push(§,D§);
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(_loc9_);
                                                      if(!(_loc11_ && this))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§push(4);
                                                               if(!_loc10_)
                                                               {
                                                                  addr2073:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr1998:
                                                               §§push(8);
                                                               if(!(_loc10_ || this))
                                                               {
                                                                  addr2092:
                                                               }
                                                            }
                                                            §§goto(addr2130);
                                                         }
                                                         else
                                                         {
                                                            §§push(§9y§);
                                                            if(!(_loc11_ && this))
                                                            {
                                                               addr1905:
                                                               §§push(_loc9_);
                                                               if(!(_loc11_ && _loc1_))
                                                               {
                                                                  addr1913:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc10_ || _loc1_)
                                                                     {
                                                                        §§goto(addr1921);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr2046:
                                                                        §§push(10);
                                                                        if(!(_loc11_ && _loc2_))
                                                                        {
                                                                           §§goto(addr2130);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr2122);
                                                                        }
                                                                     }
                                                                     §§goto(addr2130);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§59§);
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(_loc10_)
                                                                        {
                                                                           addr1937:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc10_ || _loc1_)
                                                                              {
                                                                                 §§push(6);
                                                                                 if(_loc10_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr1953);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr2073);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1974:
                                                                                 §§push(7);
                                                                                 if(!(_loc11_ && this))
                                                                                 {
                                                                                    §§goto(addr1982);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr2122);
                                                                                 }
                                                                              }
                                                                              §§goto(addr2130);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§3!d§);
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 addr1963:
                                                                                 §§push(_loc9_);
                                                                                 if(!(_loc11_ && _loc1_))
                                                                                 {
                                                                                    addr1971:
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§goto(addr1974);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr2125);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(§]!e§);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(!(_loc11_ && _loc1_))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§goto(addr1998);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr2089:
                                                                                                   §§push(12);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§goto(addr2122);
                                                                                                   }
                                                                                                   §§goto(addr2130);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(§8W§);
                                                                                                if(!(_loc11_ && this))
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr2019:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§goto(addr2022);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr2046);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(§"A§);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            addr2030:
                                                                                                            §§push(_loc9_);
                                                                                                            if(!(_loc11_ && _loc2_))
                                                                                                            {
                                                                                                               addr2038:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(_loc10_ || this)
                                                                                                                  {
                                                                                                                     §§goto(addr2046);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr2114:
                                                                                                                     §§push(13);
                                                                                                                     if(_loc11_ && _loc1_)
                                                                                                                     {
                                                                                                                        §§goto(addr2128);
                                                                                                                     }
                                                                                                                     §§goto(addr2130);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(§<x§);
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr2059:
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        addr2062:
                                                                                                                        if(§§pop() === §§pop())
                                                                                                                        {
                                                                                                                           if(_loc10_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(11);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§goto(addr2073);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr2128);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr2089);
                                                                                                                           }
                                                                                                                           §§goto(addr2130);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(§4b§);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              addr2078:
                                                                                                                              §§push(_loc9_);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc11_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr2089);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr2125);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr2105:
                                                                                                                                    §§push(§8,§);
                                                                                                                                    §§push(_loc9_);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2125);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr2105);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr2105);
                                                                                                               }
                                                                                                               §§goto(addr2130);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr2105);
                                                                                                      }
                                                                                                      §§goto(addr2130);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr2030);
                                                                                             }
                                                                                             §§goto(addr2130);
                                                                                          }
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!(_loc11_ && _loc2_))
                                                                                             {
                                                                                                §§goto(addr2114);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr2125);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr2125);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr2130);
                                                                                                §§push(14);
                                                                                             }
                                                                                             §§goto(addr2130);
                                                                                          }
                                                                                          §§goto(addr2125);
                                                                                       }
                                                                                       §§goto(addr2078);
                                                                                    }
                                                                                    §§goto(addr2125);
                                                                                 }
                                                                                 §§goto(addr2062);
                                                                              }
                                                                              §§goto(addr2105);
                                                                           }
                                                                        }
                                                                        §§goto(addr1971);
                                                                     }
                                                                     §§goto(addr2059);
                                                                  }
                                                               }
                                                               §§goto(addr2019);
                                                            }
                                                            §§goto(addr1963);
                                                         }
                                                      }
                                                      §§goto(addr1937);
                                                   }
                                                   §§goto(addr1905);
                                                }
                                             }
                                             §§goto(addr1971);
                                          }
                                          §§goto(addr2030);
                                       }
                                       §§goto(addr2130);
                                    }
                                    §§goto(addr1913);
                                 }
                                 §§goto(addr1905);
                              }
                           }
                           §§goto(addr2038);
                        }
                        §§goto(addr1905);
                     }
                     §§goto(addr2125);
                  }
                  §§goto(addr2062);
               }
               §§goto(addr1809);
            }
            §§goto(addr2125);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:§ H§ = null;
         var _loc6_:Texture = null;
         if(_loc11_ || this)
         {
            if(param1 == "??")
            {
               if(!(_loc10_ && param3))
               {
                  §§goto(addr40);
               }
            }
            else
            {
               this.§'!4§ = param4;
            }
            var _loc7_:* = Number(1);
            if(_loc11_)
            {
               this.§;]§ = this.§,!%§.getAnimation(param1);
               if(!(_loc10_ && param1))
               {
                  §§push(this.§;]§);
                  if(!(_loc10_ && this))
                  {
                     if(§§pop())
                     {
                        addr77:
                        _loc5_ = this.§;]§.getFrame(0);
                        _loc6_ = _loc5_.texture;
                        if(_loc11_)
                        {
                           §§push(_loc5_.scale);
                           if(!_loc10_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc7_ = §§pop();
                           if(!(_loc10_ && param3))
                           {
                              addr143:
                              this.§8D§ = param3;
                              addr100:
                           }
                           var _loc8_:§0!b§ = this.§@T§(_loc6_);
                           if(_loc11_ || this)
                           {
                              §§push(_loc8_);
                              §§push(_loc8_);
                              §§push(this.§?C§);
                              if(!(_loc10_ && param2))
                              {
                                 §§push(_loc7_);
                                 if(!(_loc10_ && param3))
                                 {
                                    addr178:
                                    §§push(§§pop() * §§pop());
                                    §§push(§§pop() * §§pop());
                                 }
                                 var _loc9_:* = §§pop();
                                 §§pop().scaleY = §§pop();
                                 §§pop().scaleX = _loc9_;
                                 if(_loc11_ || param3)
                                 {
                                    this.§+G§.addChild(_loc8_);
                                    loop0:
                                    while(!_loc5_)
                                    {
                                       §§push(_loc8_);
                                       §§push(-this.§+G§.width);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() / 2);
                                       }
                                       §§pop().x = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          §§push(-this.§+G§.height);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() / 2);
                                          }
                                          §§pop().y = §§pop();
                                          if(_loc11_)
                                          {
                                             if(_loc11_ || param2)
                                             {
                                                if(!(_loc11_ || param2))
                                                {
                                                   §§push(_loc8_);
                                                   §§push(-_loc5_.pivotY);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      §§push(§§pop() * this.§?C§);
                                                   }
                                                }
                                                if(!(_loc11_ || param2))
                                                {
                                                   break loop0;
                                                }
                                                continue loop0;
                                                §§pop().y = §§pop();
                                                if(_loc10_ && param1)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr192);
                                                break;
                                                addr293:
                                             }
                                             break;
                                          }
                                       }
                                       return;
                                    }
                                    §§push(_loc8_);
                                    §§push(-_loc5_.pivotX);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() * this.§?C§);
                                    }
                                    §§pop().x = §§pop();
                                    §§goto(addr293);
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr100);
                     }
                     else
                     {
                        _loc5_ = this.§7!`§.§]w§(param1);
                        if(_loc11_ || param2)
                        {
                           if(!_loc5_)
                           {
                              return;
                           }
                           if(!_loc10_)
                           {
                              _loc6_ = _loc5_.texture;
                              if(_loc11_)
                              {
                                 §§push(_loc5_.scale);
                                 if(!_loc10_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc7_ = §§pop();
                              }
                           }
                        }
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr77);
         }
         addr40:
      }
      
      protected function §@T§(param1:Texture) : §0!b§
      {
         return new §0!b§(param1,false);
      }
      
      public function §@!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§+G§);
            loop0:
            for(; §§pop(); if(_loc1_ && _loc1_)
            {
               continue;
            },§§push(this.§`J§),if(_loc2_ || _loc2_)
            {
               if(!(_loc1_ && this))
               {
                  if(_loc2_ || this)
                  {
                     §§push(LevelMain.§@!d§);
                     if(_loc2_ || this)
                     {
                        addr100:
                        §§pop().y = §§pop() / §§pop();
                        if(_loc1_ && _loc1_)
                        {
                           §§goto(addr124);
                        }
                        break;
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr119);
               }
               §§goto(addr123);
            },§§goto(addr100))
            {
               if(!_loc1_)
               {
                  while(true)
                  {
                     §§push(this.§+G§);
                     addr117:
                     while(true)
                     {
                        §§push(this.§1X§);
                        addr119:
                        while(true)
                        {
                           §§push(LevelMain.§@!d§);
                           addr122:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr123:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                              }
                           }
                        }
                     }
                  }
                  addr115:
               }
               while(true)
               {
                  §§push(this.§+G§);
                  if(_loc2_ || _loc1_)
                  {
                     continue loop0;
                  }
                  §§goto(addr117);
               }
            }
            return;
         }
         §§goto(addr115);
      }
      
      public function §5Y§(param1:LevelObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-!_§ = param1;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§ H§ = null;
         var _loc6_:Texture = null;
         var _loc7_:* = NaN;
         var _loc8_:§0!b§ = null;
         if(_loc11_)
         {
            §§push(this);
            §§push(this.§,F§);
            if(_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§,F§ = §§pop();
         }
         §§push(false);
         if(!_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc11_ || _loc3_)
         {
            §§push(this.§-!_§);
            if(!(_loc10_ && this))
            {
               §§push(Boolean(§§pop()));
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§push(this.§-!_§);
                        loop33:
                        while(true)
                        {
                           §§push(§§pop().sprite == null);
                           if(_loc11_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc11_)
                              {
                                 addr253:
                                 §§push(§§pop());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr255:
                                    while(!§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          §§pop();
                                          if(_loc11_ || _loc2_)
                                          {
                                             §§push(this.§-!_§);
                                             if(!(_loc11_ || _loc3_))
                                             {
                                                continue loop33;
                                             }
                                             §§push(§§pop().§0[§ == null);
                                             if(_loc11_ || _loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc11_ || this)
                                                {
                                                   break loop8;
                                                }
                                                loop28:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               if(_loc11_ || this)
                                                               {
                                                                  addr507:
                                                                  §§push(false);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr657:
                                                                     if(_loc11_)
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        addr626:
                                                                        while(!_loc11_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                           }
                                                                        }
                                                                        return §§pop();
                                                                        addr624:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr590:
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr591:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    addr598:
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§1W§);
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr534:
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   addr544:
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   loop22:
                                                                                                   while(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr554:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop23:
                                                                                                         for(; !(_loc10_ && _loc2_); while(_loc11_ || _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr491);
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         })
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr564:
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc11_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc11_ || param1)
                                                                                                                  {
                                                                                                                     addr580:
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr583:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr584:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§,F§);
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(this.§1W§);
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() >= §§pop());
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 addr612:
                                                                                                                                 addr612:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                    if(!(_loc10_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          break loop23;
                                                                                                                                       }
                                                                                                                                       addr621:
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr624);
                                                                                                                              }
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           addr583:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           addr491:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr655:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr656);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr655:
                                                                                                                     }
                                                                                                                     §§goto(addr621);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr654:
                                                                                                                  }
                                                                                                                  §§goto(addr655);
                                                                                                               }
                                                                                                               §§goto(addr580);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr653:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               addr653:
                                                                                                            }
                                                                                                            §§goto(addr654);
                                                                                                         }
                                                                                                         while(!§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            §§goto(addr555);
                                                                                                         }
                                                                                                         addr555:
                                                                                                         addr623:
                                                                                                         §§goto(addr624);
                                                                                                         §§push(false);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr663:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            addr664:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§#!^§);
                                                                                                               addr650:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  addr651:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     break loop22;
                                                                                                                  }
                                                                                                                  §§goto(addr534);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr663:
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr653);
                                                                                                   }
                                                                                                   addr545:
                                                                                                }
                                                                                                §§goto(addr651);
                                                                                             }
                                                                                             §§goto(addr650);
                                                                                          }
                                                                                          addr610:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr612);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else if(!_loc10_)
                                                                                 {
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                       §§goto(addr599);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr676:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§9]§(param1));
                                                                                          addr662:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr663);
                                                                                          }
                                                                                       }
                                                                                       addr676:
                                                                                    }
                                                                                    §§goto(addr663);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr589:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr610);
                                                                     }
                                                                     addr657:
                                                                  }
                                                                  §§goto(addr583);
                                                               }
                                                               §§goto(addr664);
                                                            }
                                                            §§goto(addr623);
                                                         }
                                                         §§goto(addr584);
                                                      }
                                                      else
                                                      {
                                                         loop29:
                                                         while(!(_loc10_ && param1))
                                                         {
                                                            if(_loc11_ || param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  while(true)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    continue loop29;
                                                                                 }
                                                                                 this.§@!F§();
                                                                              }
                                                                           }
                                                                           §§push(true);
                                                                           if(_loc11_)
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr483);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr507);
                                                                     }
                                                                  }
                                                                  §§goto(addr545);
                                                               }
                                                               addr456:
                                                            }
                                                            else
                                                            {
                                                               addr606:
                                                               while(true)
                                                               {
                                                               }
                                                               addr606:
                                                            }
                                                            §§goto(addr589);
                                                         }
                                                      }
                                                      §§goto(addr591);
                                                   }
                                                   §§goto(addr456);
                                                }
                                             }
                                             §§goto(addr656);
                                          }
                                          §§goto(addr676);
                                       }
                                       §§goto(addr663);
                                    }
                                    break;
                                    §§goto(addr253);
                                 }
                                 addr254:
                                 if(!§§pop())
                                 {
                                    this.§1X§ = this.§-!_§.§@!'§().GetPosition().x;
                                    if(_loc11_)
                                    {
                                       this.§`J§ = this.§-!_§.§@!'§().GetPosition().y;
                                       if(_loc11_)
                                       {
                                          addr174:
                                          loop4:
                                          while(true)
                                          {
                                             §§push(this.§8D§);
                                             loop5:
                                             while(true)
                                             {
                                                §§push(0);
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(!_loc10_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc11_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  addr148:
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                           §§pop();
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§;]§);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       while(§§pop())
                                                                                       {
                                                                                          if(!(_loc10_ && _loc3_))
                                                                                          {
                                                                                             §§push(15);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§push(this.§,F§);
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(1000);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(1);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr69:
                                                                                                                     §§push(§§pop() / _loc3_);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              if(!(_loc10_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    continue loop6;
                                                                                                                                 }
                                                                                                                                 addr667:
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    addr270:
                                                                                                                                    §§push(this.§;]§.getFrameCount());
                                                                                                                                    if(!(_loc10_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       break loop5;
                                                                                                                                    }
                                                                                                                                    addr669:
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          this.§;W§(param1);
                                                                                                                                       }
                                                                                                                                       §§goto(addr676);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       this.§;W§(param1);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr667:
                                                                                                                                 §§goto(addr669);
                                                                                                                                 §§push(§0o§);
                                                                                                                              }
                                                                                                                              §§goto(addr606);
                                                                                                                           }
                                                                                                                           §§goto(addr667);
                                                                                                                        }
                                                                                                                        §§goto(addr610);
                                                                                                                     }
                                                                                                                     §§goto(addr612);
                                                                                                                  }
                                                                                                                  §§goto(addr544);
                                                                                                               }
                                                                                                               §§goto(addr650);
                                                                                                            }
                                                                                                            §§goto(addr69);
                                                                                                         }
                                                                                                         §§goto(addr650);
                                                                                                      }
                                                                                                      addr283:
                                                                                                      §§push(this.§;]§);
                                                                                                      break loop6;
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                          §§goto(addr657);
                                                                                       }
                                                                                       addr665:
                                                                                       §§goto(addr667);
                                                                                       §§push(this.§"@§);
                                                                                       addr97:
                                                                                    }
                                                                                    §§goto(addr554);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              _loc5_ = §§pop().getFrame(_loc4_);
                                                                              _loc6_ = _loc5_.texture;
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(_loc5_.scale);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 _loc7_ = §§pop();
                                                                              }
                                                                              _loc8_ = this.§@T§(_loc6_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(this.§+G§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§ E§(0,-1,true);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§+G§);
                                                                                       if(!(_loc11_ || param1))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop().addChild(_loc8_);
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             §§push(-_loc5_.pivotX);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() * this.§?C§);
                                                                                             }
                                                                                             §§pop().x = §§pop();
                                                                                             loop37:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                §§push(-_loc5_.pivotY);
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() * this.§?C§);
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!(_loc11_ || _loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   break loop36;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue loop36;
                                                                                                   }
                                                                                                   §§push(_loc8_);
                                                                                                   §§push(_loc8_);
                                                                                                   §§push(this.§?C§);
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr399:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                      var _loc9_:* = §§pop();
                                                                                                      §§pop().scaleY = §§pop();
                                                                                                      §§pop().scaleX = _loc9_;
                                                                                                      break loop37;
                                                                                                   }
                                                                                                   §§goto(addr399);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr665);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                           §§goto(addr598);
                                                                        }
                                                                        §§goto(addr583);
                                                                     }
                                                                     §§goto(addr97);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr254);
                                                                  }
                                                               }
                                                               §§goto(addr655);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         §§goto(addr148);
                                                      }
                                                      §§goto(addr554);
                                                   }
                                                   §§goto(addr564);
                                                }
                                                break;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr657);
                                             }
                                             else
                                             {
                                                §§push(this.§'!4§);
                                                if(_loc11_ || _loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         this.§+G§.§ E§(0,-1,true);
                                                         if(_loc11_)
                                                         {
                                                            §§goto(addr665);
                                                         }
                                                         §§goto(addr598);
                                                      }
                                                      §§goto(addr606);
                                                   }
                                                   §§goto(addr665);
                                                }
                                             }
                                             §§goto(addr656);
                                             §§goto(addr174);
                                          }
                                          addr224:
                                          return §§pop();
                                          addr118:
                                       }
                                       §§goto(addr657);
                                    }
                                    §§goto(addr676);
                                 }
                                 if(!(_loc10_ && param1))
                                 {
                                    §§goto(addr224);
                                    §§push(false);
                                 }
                                 else
                                 {
                                    §§goto(addr283);
                                 }
                              }
                              §§goto(addr626);
                           }
                           §§goto(addr453);
                        }
                        addr245:
                     }
                     §§goto(addr664);
                  }
                  §§goto(addr118);
               }
               §§goto(addr653);
            }
            §§goto(addr245);
         }
         §§goto(addr283);
      }
      
      public function §;W§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§7!j§);
            if(_loc2_ || param1)
            {
               §§push(param1);
               if(_loc2_ || _loc2_)
               {
                  addr175:
                  §§push(§§pop() * this.§+[§);
                  if(!_loc3_)
                  {
                     addr172:
                     §§push(§§pop() / 1000);
                  }
                  §§pop().§7!j§ = §§pop() + §§pop();
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§`J§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.§7!j§);
                        if(!(_loc3_ && _loc2_))
                        {
                           addr130:
                           §§push(§§pop() * param1);
                           if(_loc2_ || param1)
                           {
                              addr127:
                              §§push(§§pop() / 1000);
                           }
                           §§pop().§`J§ = §§pop() + §§pop();
                           continue;
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr130);
                  }
               }
               §§goto(addr172);
            }
            §§goto(addr175);
         }
         §§goto(addr63);
      }
      
      public function §9]§(param1:Number) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || _loc3_)
         {
            §§push(this.§"@§);
            loop0:
            while(true)
            {
               §§push(§?D§);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§"@§);
                     if(_loc7_)
                     {
                        §§push(§0o§);
                        if(!_loc7_)
                        {
                           continue loop1;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc8_)
                           {
                              §§push(this.§]!$§);
                              loop3:
                              while(!_loc8_)
                              {
                                 §§push(§8W§);
                                 if(!(_loc8_ && param1))
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(this.§]!$§);
                                       if(_loc7_ || this)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          §§push(§8,§);
                                          if(!_loc8_)
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc7_ || this)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            addr85:
                                                            §§pop();
                                                            if(!(_loc8_ && _loc2_))
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§+G§);
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(360 - _loc5_);
                                                                              if(_loc7_ || _loc2_)
                                                                              {
                                                                                 §§push(§§pop() / 180);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop() * Math.PI);
                                                                                    if(!(_loc8_ && _loc3_))
                                                                                    {
                                                                                       addr134:
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§pop().rotation = §§pop();
                                                                                          if(_loc7_ || param1)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr680:
                                                                                                   §§push(true);
                                                                                                   if(!(_loc8_ && this))
                                                                                                   {
                                                                                                      §§goto(addr688);
                                                                                                   }
                                                                                                   §§goto(addr690);
                                                                                                }
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr358:
                                                                                                   addr464:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc7_ || _loc3_)
                                                                                                      {
                                                                                                         addr367:
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            if(!(_loc8_ && this))
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  addr384:
                                                                                                                  if(_loc7_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr398:
                                                                                                                     §§push(§§pop() + int(this.§!!Y§) / 5000);
                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           addr408:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ && this))
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    addr420:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc8_ && this))
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          if(_loc7_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && param1))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr353);
                                                                                                                                                }
                                                                                                                                                addr350:
                                                                                                                                             }
                                                                                                                                             §§goto(addr590);
                                                                                                                                          }
                                                                                                                                          §§goto(addr680);
                                                                                                                                       }
                                                                                                                                       §§goto(addr592);
                                                                                                                                    }
                                                                                                                                    §§goto(addr472);
                                                                                                                                 }
                                                                                                                                 §§goto(addr530);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 addr513:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr526);
                                                                                                                     }
                                                                                                                     §§goto(addr531);
                                                                                                                  }
                                                                                                                  §§goto(addr475);
                                                                                                               }
                                                                                                               §§goto(addr398);
                                                                                                            }
                                                                                                            §§goto(addr571);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr408);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         addr467:
                                                                                                         §§goto(addr358);
                                                                                                      }
                                                                                                      break;
                                                                                                      §§goto(addr367);
                                                                                                   }
                                                                                                   §§goto(addr518);
                                                                                                }
                                                                                                §§goto(addr680);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop5:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§+G§);
                                                                                                   addr152:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§pop().scaleY = Math.max(0.2,this.§+G§.alpha);
                                                                                                               if(_loc7_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               §§goto(addr680);
                                                                                                            }
                                                                                                            addr353:
                                                                                                            §§push(this.§+G§);
                                                                                                            §§push(_loc2_);
                                                                                                            §§goto(addr672);
                                                                                                         }
                                                                                                         §§goto(addr328);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop7:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().alpha = Math.max(0,Math.min(1,2 * §!t§.§>j§((this.§1W§ - this.§,F§) / this.§1W§,false)));
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Math.atan2(-this.§7!j§,this.§&#§) * (180 / Math.PI));
                                                                                                                  if(_loc7_ || this)
                                                                                                                  {
                                                                                                                     if(_loc7_ || param1)
                                                                                                                     {
                                                                                                                        addr230:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc7_ || param1)
                                                                                                                        {
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              _loc5_ = §§pop();
                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§+G§);
                                                                                                                                       if(!(_loc7_ || this))
                                                                                                                                       {
                                                                                                                                          break loop4;
                                                                                                                                       }
                                                                                                                                       continue loop5;
                                                                                                                                    }
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 addr289:
                                                                                                                                 while(!_loc8_)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§goto(addr467);
                                                                                                                              }
                                                                                                                              §§goto(addr689);
                                                                                                                           }
                                                                                                                           §§goto(addr532);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr420);
                                                                                                                  }
                                                                                                                  §§goto(addr230);
                                                                                                               }
                                                                                                               §§goto(addr408);
                                                                                                               addr318:
                                                                                                            }
                                                                                                            §§goto(addr689);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr689);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr689);
                                                                                          }
                                                                                          §§goto(addr617);
                                                                                       }
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    §§goto(addr672);
                                                                                 }
                                                                              }
                                                                              §§goto(addr134);
                                                                           }
                                                                           §§goto(addr152);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§push(this.§+G§);
                                                                     §§push(0.2);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        §§push(this.§1W§);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(this.§,F§);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(this.§1W§);
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    addr649:
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr663:
                                                                                       §§push(§§pop() * 1.8);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr667:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                    }
                                                                                    var _loc6_:* = §§pop();
                                                                                    §§pop().scaleY = §§pop();
                                                                                    addr672:
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§pop().scaleX = §§pop();
                                                                                       do
                                                                                       {
                                                                                          this.§+G§.scaleY = _loc2_;
                                                                                       }
                                                                                       while(!_loc7_);
                                                                                       
                                                                                       if(_loc8_ && _loc2_)
                                                                                       {
                                                                                          loop31:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             addr530:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0.2);
                                                                                                addr531:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr532:
                                                                                                   §§push(Number(§§pop() / §§pop()));
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(this.§+G§);
                                                                                                            break loop4;
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop25;
                                                                                                         addr617:
                                                                                                      }
                                                                                                      addr568:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§1W§);
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            addr571:
                                                                                                            addr588:
                                                                                                            while(_loc7_ || this)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  break loop30;
                                                                                                                  addr518:
                                                                                                                  while(_loc7_ || param1)
                                                                                                                  {
                                                                                                                     §§push(0.2);
                                                                                                                     while(_loc7_)
                                                                                                                     {
                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                        {
                                                                                                                           continue loop31;
                                                                                                                        }
                                                                                                                        addr472:
                                                                                                                        §§push(_loc4_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                           §§push(0.8);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 break loop2;
                                                                                                                              }
                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              continue loop29;
                                                                                                                              §§goto(addr384);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr592:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                 addr593:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    break loop3;
                                                                                                                                 }
                                                                                                                                 continue loop34;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr420);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(§§pop() > 0)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr591);
                                                                                                               }
                                                                                                               §§goto(addr571);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr518);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§push(true);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr690);
                                                                                    }
                                                                                    §§pop().scaleX = §§pop();
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       §§goto(addr680);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr689:
                                                                                       §§push(false);
                                                                                    }
                                                                                    addr690:
                                                                                    addr690:
                                                                                    return §§pop();
                                                                                    §§push(_loc6_);
                                                                                 }
                                                                              }
                                                                              §§goto(addr663);
                                                                           }
                                                                           §§goto(addr649);
                                                                        }
                                                                        §§goto(addr663);
                                                                     }
                                                                     §§goto(addr667);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr598:
                                                                     §§push(this.§]!$§ == §3!d§);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc7_)
                                                                        {
                                                                           addr609:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr617);
                                                                              }
                                                                              §§goto(addr689);
                                                                           }
                                                                           §§goto(addr680);
                                                                        }
                                                                        §§goto(addr690);
                                                                     }
                                                                     §§goto(addr609);
                                                                  }
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr689);
                                                         }
                                                         §§goto(addr688);
                                                      }
                                                      §§goto(addr609);
                                                   }
                                                   addr688:
                                                   return §§pop();
                                                }
                                                §§goto(addr85);
                                             }
                                             addr551:
                                             if(§§pop() == §§pop())
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      §§goto(addr568);
                                                      §§push(this.§,F§);
                                                   }
                                                   §§goto(addr593);
                                                }
                                                §§goto(addr617);
                                             }
                                             §§goto(addr350);
                                          }
                                       }
                                       §§goto(addr598);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr598);
                              }
                              §§goto(addr551);
                              §§push(§<x§);
                           }
                           §§goto(addr318);
                        }
                        §§goto(addr689);
                     }
                     break;
                  }
                  if(!_loc7_)
                  {
                     continue loop0;
                  }
                  if(_loc7_ || _loc2_)
                  {
                     §§goto(addr464);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr591);
               }
               §§goto(addr588);
            }
         }
         §§goto(addr291);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§],§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§],§);
                        addr136:
                        while(true)
                        {
                           §§pop().clear();
                           while(true)
                           {
                              this.§],§ = null;
                              addr125:
                              while(!_loc1_)
                              {
                              }
                           }
                        }
                     }
                     addr134:
                  }
                  while(true)
                  {
                     §§push(this.§+G§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        continue loop0;
                     }
                     loop8:
                     while(true)
                     {
                        §§pop().dispose();
                        loop6:
                        while(_loc2_)
                        {
                           this.§+G§ = null;
                           while(!(_loc2_ || _loc2_))
                           {
                              while(true)
                              {
                                 continue loop8;
                              }
                           }
                           addr84:
                           while(true)
                           {
                              §§push(Boolean(this.§-!_§));
                              if(!_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!(_loc2_ || this))
                                          {
                                             continue loop6;
                                          }
                                          this.§-!_§ = null;
                                       }
                                       else
                                       {
                                          §§goto(addr77);
                                       }
                                    }
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr72:
                                       break;
                                    }
                                    §§goto(addr134);
                                 }
                                 break;
                              }
                              continue loop0;
                              §§goto(addr84);
                           }
                           addr77:
                           return;
                        }
                        §§goto(addr125);
                     }
                  }
               }
            }
            §§goto(addr136);
         }
         §§goto(addr72);
      }
   }
}
