package §&=§
{
   import § D§.§]!B§;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §,!_§.AnimationManager;
   import §,!_§.TextureManager;
   import §2!H§.§7&§;
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import §6!7§.§-m§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §6b§.§]n§;
   import §7i§.Texture;
   
   public class §0'§
   {
      
      public static const §=!%§:int = 0;
      
      public static const §&A§:int = 1;
      
      public static const §7R§:int = 2;
      
      public static const § 6§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §6!L§:String = "Effect_TrailBig_Bird";
      
      public static const §8d§:String = "Effect_Trail_Sparkle";
      
      public static const §"G§:String = "Effect_Floating_Score";
      
      public static const §0!8§:String = "Effect_Floating_Text";
      
      public static const §%J§:String = "Effect_Explosion_Particle";
      
      public static const §-s§:String = "Effect_Explosion_Core";
      
      public static const §9_§:String = "Effect_Pig_Destruction";
      
      public static const §2!G§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §@R§:String = "Effect_Bird_Destruction";
      
      public static const §4!C§:String = "Effect_Block_Destruction_Particles";
      
      public static const §#!V§:String = "Effect_Block_Destruction_Core";
      
      public static const §&"§:int = 0;
      
      public static const §9T§:int = 1;
      
      public static const §0d§:int = 2;
      
      public static const §<A§:int = 3;
      
      public static const §'1§:int = 4;
      
      public static const §[Z§:int = 5;
      
      public static const §!!U§:int = 6;
      
      public static const §7%§:int = 7;
      
      public static const §@!H§:int = 8;
      
      public static const §9!b§:int = 9;
      
      public static const §-1§:int = 10;
      
      public static const §7!!§:int = 11;
      
      public static const §5a§:int = 12;
      
      public static const §@!Z§:int = 13;
      
      public static const §4+§:int = 14;
      
      public static const §=!P§:int = 15;
      
      public static const §&!1§:int = 16;
      
      public static const § o§:int = 17;
      
      public static const §3Z§:int = 18;
      
      public static const §;_§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!%§ = 0;
            while(true)
            {
               §&A§ = 1;
               while(true)
               {
                  §7R§ = 2;
                  loop2:
                  while(true)
                  {
                     § 6§ = 3;
                     addr376:
                     while(true)
                     {
                        PARTICLE_NAME_BIRD_TRAIL1 = "Effect_Trail_Bird1";
                        continue loop2;
                     }
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §-s§ = "Effect_Explosion_Core";
               §§goto(addr292);
            }
         }
         §§goto(addr68);
      }
      
      public var §,p§:int;
      
      public var §2b§:int;
      
      public var §93§:String;
      
      public var §@!_§:Number;
      
      public var §,P§:Number;
      
      public var §#!,§:Number;
      
      public var §?!a§:Number;
      
      public var §1!8§:Number = 0;
      
      public var §7!H§:Number;
      
      public var §5!i§:Number;
      
      public var §?s§:String;
      
      public var §5!D§:Number = -1;
      
      public var §%;§:int;
      
      public var §`!%§:Number;
      
      public var §else§:Number;
      
      private var §6!0§:Sprite;
      
      private var §"e§:§7&§;
      
      private var §+!$§:int;
      
      protected var §]c§:int;
      
      protected var §]h§:Boolean;
      
      private var §=n§:Animation;
      
      private var §-!%§:Boolean;
      
      private var §!!]§:AnimationManager;
      
      private var §6! §:TextureManager;
      
      private var §,,§:LevelObject;
      
      public function §0'§(param1:AnimationManager, param2:TextureManager, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(!(_loc19_ && param1))
         {
            this.§6!0§ = new Sprite();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§!!]§ = param1;
                  while(_loc18_)
                  {
                     this.§6! § = param2;
                     loop3:
                     while(true)
                     {
                        this.§93§ = param3;
                        loop4:
                        while(true)
                        {
                           this.§,p§ = param5;
                           while(true)
                           {
                              this.§2b§ = param4;
                              while(!_loc19_)
                              {
                                 continue loop3;
                                 addr88:
                                 if(!(_loc19_ && this))
                                 {
                                    if(this.§,p§ == §&A§)
                                    {
                                       if(!(_loc19_ && this))
                                       {
                                          if(_loc19_)
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                if(!(_loc19_ && param1))
                                                {
                                                   if(_loc18_)
                                                   {
                                                      §§goto(addr88);
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      this.§5!i§ = param8;
                                                      while(true)
                                                      {
                                                         this.§`!%§ = param6;
                                                         loop13:
                                                         while(_loc18_)
                                                         {
                                                            this.§else§ = param7;
                                                            loop14:
                                                            while(true)
                                                            {
                                                               this.§7!H§ = param15;
                                                               while(true)
                                                               {
                                                                  this.§#!,§ = param11;
                                                                  continue loop14;
                                                                  addr107:
                                                                  if(!(_loc19_ && param3))
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                        this.§;E§();
                                                                        continue loop21;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§@!_§ = 0;
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr100);
                                                }
                                                §§goto(addr121);
                                             }
                                             §§goto(addr24);
                                          }
                                          if(_loc18_)
                                          {
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(§]!B§.§>F§.§'g§.§ !c§);
                                                if(_loc18_ || param2)
                                                {
                                                   §§push(§§pop() + this.§6!0§.height * LevelMain.§8N§);
                                                }
                                                §§pop().§5!D§ = §§pop();
                                                §§goto(addr67);
                                             }
                                             addr45:
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr67);
                                    }
                                    addr24:
                                 }
                                 continue;
                                 return;
                              }
                              continue loop4;
                              if(_loc18_ || param1)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     while(_loc18_ || param3)
                     {
                        this.§]c§ = param16;
                        §§goto(addr229);
                        §§goto(addr180);
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public static function §%!`§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(§§pop().toUpperCase().indexOf("BIRD_RED") < 0)
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(!_loc3_)
                  {
                     if(§§pop().toUpperCase().indexOf("BIRD_YELLOW") < 0)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              if(§§pop().toUpperCase().indexOf("BIRD_BLUE") < 0)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop6:
                                    while(§§pop().toUpperCase().indexOf("BIRD_BLACK") < 0)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop8:
                                          while(§§pop().toUpperCase().indexOf("BIRD_WHITE") < 0)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(param1);
                                                loop10:
                                                while(§§pop().toUpperCase().indexOf("BIRD_GREEN") < 0)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop12:
                                                      while(§§pop().toUpperCase().indexOf("MIGHTY_EAGLE") < 0)
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && §0'§))
                                                               {
                                                                  if(!(_loc3_ && §0'§))
                                                                  {
                                                                     if(§§pop().toUpperCase().indexOf("PIG") >= 0)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        loop16:
                                                                        while(_loc2_)
                                                                        {
                                                                           if(§§pop().toUpperCase().indexOf("ICE") < 0)
                                                                           {
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 loop18:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    if(!(_loc2_ || §0'§))
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(§§pop().toUpperCase().indexOf("WOOD") < 0)
                                                                                    {
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(§§pop().toUpperCase().indexOf("STONE") < 0)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   if(_loc2_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc3_ && param1))
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(_loc2_ || param1)
                                                                                                            {
                                                                                                               if(§§pop().toUpperCase().indexOf("SNOW") >= 0)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     break loop20;
                                                                                                                  }
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§9!b§);
                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr297);
                                                                                                                           }
                                                                                                                           addr252:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr214:
                                                                                                                        }
                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                        {
                                                                                                                           break loop12;
                                                                                                                        }
                                                                                                                        if(_loc2_ || param1)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop11;
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     addr129:
                                                                                                                     §§push(§@!H§);
                                                                                                                     if(_loc2_ || param1)
                                                                                                                     {
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        addr187:
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§goto(addr193);
                                                                                                                           }
                                                                                                                           break loop10;
                                                                                                                        }
                                                                                                                        break loop14;
                                                                                                                     }
                                                                                                                     if(!(_loc2_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!(_loc2_ || §0'§))
                                                                                                                        {
                                                                                                                           break loop19;
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     addr369:
                                                                                                                     return §0d§;
                                                                                                                  }
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                §§push(§7!!§);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(!(_loc3_ && §0'§))
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      addr193:
                                                                                                      §§push(§7%§);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         addr308:
                                                                                                         if(!(_loc3_ && param1))
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         addr333:
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         §§goto(addr356);
                                                                                                      }
                                                                                                      §§goto(addr270);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr129);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr84:
                                                                                                   if(_loc2_ || §0'§)
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   §§goto(addr214);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr129);
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                break loop17;
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          §§goto(addr84);
                                                                                          §§push(§-1§);
                                                                                       }
                                                                                       addr354:
                                                                                       addr356:
                                                                                       return §§pop();
                                                                                       §§push(§9T§);
                                                                                    }
                                                                                    §§goto(addr187);
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              if(!(_loc2_ || param1))
                                                                              {
                                                                                 break loop15;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           §§goto(addr214);
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                      }
                                                      addr270:
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr381:
                                                      return §§pop();
                                                   }
                                                }
                                                if(_loc3_)
                                                {
                                                   break loop8;
                                                }
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   break loop6;
                                                }
                                                addr297:
                                                return §§pop();
                                                §§push(§<A§);
                                             }
                                          }
                                          §§goto(addr308);
                                       }
                                    }
                                    if(_loc3_ && param1)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr333);
                                    §§push(§[Z§);
                                 }
                              }
                              §§goto(addr354);
                           }
                        }
                     }
                     §§goto(addr369);
                  }
                  continue loop0;
               }
            }
            §§goto(addr381);
            §§push(§&"§);
         }
         §§goto(addr260);
      }
      
      public static function §'>§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(§§pop().toUpperCase().indexOf("BIRD_RED") < 0)
            {
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(§§pop().toUpperCase().indexOf("BIRD_YELLOW") < 0)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1);
                        loop4:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           if(§§pop().toUpperCase().indexOf("BIRD_BLUE") >= 0)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(§@!Z§);
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              while(true)
                              {
                              }
                              addr212:
                           }
                           loop6:
                           while(true)
                           {
                              §§push(param1);
                              loop7:
                              while(!(_loc2_ && _loc2_))
                              {
                                 if(§§pop().toUpperCase().indexOf("BIRD_BLACK") < 0)
                                 {
                                    loop8:
                                    do
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(!_loc2_)
                                       {
                                          if(§§pop().toUpperCase().indexOf("BIRD_WHITE") >= 0)
                                          {
                                             continue loop8;
                                          }
                                          loop10:
                                          do
                                          {
                                             §§push(param1);
                                             loop11:
                                             while(§§pop().toUpperCase().indexOf("BIRD_GREEN") < 0)
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc2_ && §0'§))
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop().toUpperCase().indexOf("PIG") >= 0)
                                                            {
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(§=!P§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  if(_loc2_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc2_ && _loc3_)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr164:
                                                                  if(!(_loc3_ || _loc2_))
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  if(_loc2_ && §0'§)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  §§push(§ o§);
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr222);
                                                            }
                                                            break;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop11;
                                                }
                                                §§push(§&!1§);
                                                if(_loc3_)
                                                {
                                                   if(!(_loc2_ && §0'§))
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr120:
                                                   if(!_loc2_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr137:
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr232:
                                                      return §§pop();
                                                   }
                                                   break loop4;
                                                }
                                                §§goto(addr74);
                                             }
                                             §§goto(addr120);
                                          }
                                          while(_loc3_);
                                          
                                          continue loop6;
                                       }
                                       continue loop7;
                                    }
                                    while(!_loc3_);
                                    
                                    §§goto(addr137);
                                    §§push(§&!1§);
                                 }
                                 §§goto(addr164);
                              }
                              continue loop4;
                           }
                        }
                        return §§pop();
                     }
                  }
                  addr222:
                  return §§pop();
               }
            }
         }
         §§goto(addr232);
         §§push(§5a§);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§6!0§;
      }
      
      public function §]r§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2034
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:§;K§ = null;
         var _loc6_:Texture = null;
         if(!(_loc11_ && param2))
         {
            if(param1 == "??")
            {
               if(!(_loc11_ && param2))
               {
                  §§goto(addr39);
               }
            }
            else
            {
               this.§-!%§ = param4;
            }
            var _loc7_:* = Number(1);
            if(_loc10_)
            {
               this.§=n§ = this.§!!]§.getAnimation(param1);
               if(!_loc11_)
               {
                  §§push(this.§=n§);
                  if(_loc10_)
                  {
                     if(§§pop())
                     {
                        addr71:
                        _loc5_ = this.§=n§.getFrame(0);
                        _loc6_ = _loc5_.texture;
                        addr69:
                        if(_loc10_ || this)
                        {
                           §§push(_loc5_.scale);
                           if(!(_loc11_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc7_ = §§pop();
                           if(_loc10_ || this)
                           {
                              addr157:
                              this.§+!$§ = param3;
                           }
                        }
                        var _loc8_:§-m§ = this.§28§(_loc6_);
                        if(_loc10_ || param2)
                        {
                           §§push(_loc8_);
                           §§push(_loc8_);
                           §§push(this.§7!H§);
                           if(_loc10_ || param2)
                           {
                              §§push(_loc7_);
                              if(_loc10_)
                              {
                                 addr187:
                                 §§push(§§pop() * §§pop());
                                 §§push(§§pop() * §§pop());
                              }
                              var _loc9_:* = §§pop();
                              §§pop().scaleY = §§pop();
                              §§pop().scaleX = _loc9_;
                              if(_loc10_ || this)
                              {
                                 this.§6!0§.addChild(_loc8_);
                                 loop0:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(_loc8_);
                                       §§push(-this.§6!0§.width);
                                       if(!(_loc11_ && this))
                                       {
                                          §§push(§§pop() / 2);
                                       }
                                       §§pop().x = §§pop();
                                       while(!_loc11_)
                                       {
                                          §§push(_loc8_);
                                          §§push(-this.§6!0§.height);
                                          if(_loc10_ || param3)
                                          {
                                             §§push(§§pop() / 2);
                                          }
                                          §§pop().y = §§pop();
                                          if(_loc10_)
                                          {
                                             if(_loc10_)
                                             {
                                                if(!_loc11_)
                                                {
                                                   addr201:
                                                   return;
                                                   addr227:
                                                }
                                                §§goto(addr302);
                                             }
                                             break loop0;
                                          }
                                       }
                                       continue;
                                    }
                                    if(!(_loc11_ && this))
                                    {
                                       §§push(_loc8_);
                                       §§push(-_loc5_.pivotX);
                                       if(!(_loc11_ && param3))
                                       {
                                          §§push(§§pop() * this.§7!H§);
                                       }
                                       §§pop().x = §§pop();
                                    }
                                    §§push(_loc8_);
                                    §§push(-_loc5_.pivotY);
                                    if(_loc10_ || param1)
                                    {
                                       §§push(§§pop() * this.§7!H§);
                                    }
                                    §§pop().y = §§pop();
                                    break;
                                    addr302:
                                 }
                                 §§goto(addr201);
                                 addr265:
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr265);
                     }
                     else
                     {
                        _loc5_ = this.§6! §.§]&§(param1);
                        if(!(_loc11_ && param3))
                        {
                           if(!_loc5_)
                           {
                              return;
                           }
                           if(_loc11_ && param1)
                           {
                           }
                           §§goto(addr157);
                        }
                        _loc6_ = _loc5_.texture;
                        if(_loc10_ || this)
                        {
                           §§push(_loc5_.scale);
                           if(!_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc7_ = §§pop();
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr69);
         }
         addr39:
      }
      
      protected function §28§(param1:Texture) : §-m§
      {
         return new §-m§(param1,false);
      }
      
      public function §;E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§6!0§);
            loop0:
            while(§§pop())
            {
               if(_loc1_ || this)
               {
                  §§push(this.§6!0§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§`!%§);
                     if(_loc1_)
                     {
                        §§push(LevelMain.§8N§);
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr34:
                           §§push(LevelMain.§8N§);
                           if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           }
                           §§push(§§pop() / §§pop());
                           if(_loc1_)
                           {
                              §§pop().y = §§pop();
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr75:
                                 break loop0;
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop1;
                           }
                           addr97:
                        }
                     }
                     §§goto(addr97);
                  }
               }
               §§goto(addr98);
            }
            return;
         }
         §§goto(addr98);
      }
      
      public function §;!O§(param1:LevelObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,,§ = param1;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§;K§ = null;
         var _loc6_:Texture = null;
         var _loc7_:* = NaN;
         var _loc8_:§-m§ = null;
         if(_loc11_ || _loc3_)
         {
            §§push(this);
            §§push(this.§@!_§);
            if(_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§@!_§ = §§pop();
         }
         §§push(false);
         if(_loc11_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc10_)
         {
            §§push(this.§,,§);
            if(!(_loc10_ && param1))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc11_ || _loc3_)
                     {
                        §§push(this.§,,§);
                        loop39:
                        while(true)
                        {
                           §§push(§§pop().sprite == null);
                           if(!(_loc10_ && this))
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc10_ && this))
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       if(!§§pop())
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§pop();
                                             if(!_loc10_)
                                             {
                                                §§push(this.§,,§);
                                                if(_loc10_ && _loc3_)
                                                {
                                                   continue loop39;
                                                }
                                                addr258:
                                                §§push(Boolean(§§pop().§8!&§ == null));
                                                if(_loc11_ || param1)
                                                {
                                                   addr266:
                                                   if(!§§pop())
                                                   {
                                                      this.§`!%§ = this.§,,§.§9f§().GetPosition().x;
                                                      this.§else§ = this.§,,§.§9f§().GetPosition().y;
                                                      addr235:
                                                      while(true)
                                                      {
                                                         §§push(this.§+!$§);
                                                         addr165:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr752:
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§else§);
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc11_ || this)
                                                                                    {
                                                                                       addr725:
                                                                                       §§push(this.§5!D§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() > §§pop());
                                                                                          addr728:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          addr573:
                                                                                          §§push(this.§5!i§);
                                                                                          if(!(_loc11_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(§§pop() >= §§pop());
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr592:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop34:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc11_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr601:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            loop8:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               loop9:
                                                                                                               while(_loc11_)
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc11_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr534:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       addr761:
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          break loop5;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§5!D§);
                                                                                                                                          addr747:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             addr748:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr761:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr625:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§5!i§);
                                                                                                                                          continue loop20;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr699:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§@!_§);
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    §§goto(addr573);
                                                                                                                                 }
                                                                                                                                 addr678:
                                                                                                                              }
                                                                                                                              else if(!_loc10_)
                                                                                                                              {
                                                                                                                                 addr617:
                                                                                                                                 if(_loc11_ || this)
                                                                                                                                 {
                                                                                                                                    break loop0;
                                                                                                                                 }
                                                                                                                                 addr771:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§;!d§(param1));
                                                                                                                                    addr759:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       addr760:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          §§goto(addr761);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr771:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr700:
                                                                                                                              }
                                                                                                                              §§goto(addr625);
                                                                                                                           }
                                                                                                                           addr553:
                                                                                                                           if(!(_loc10_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr498:
                                                                                                                                 §§push(true);
                                                                                                                                 if(!(_loc10_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc10_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             break loop8;
                                                                                                                                          }
                                                                                                                                          §§goto(addr728);
                                                                                                                                       }
                                                                                                                                       §§goto(addr742);
                                                                                                                                    }
                                                                                                                                    continue loop34;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr767:
                                                                                                                              addr767:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§9J§(param1);
                                                                                                                                 §§goto(addr771);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc11_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       §§push(false);
                                                                                                                                       break loop9;
                                                                                                                                    }
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 addr707:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc11_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§;!d§(param1));
                                                                                                                                       if(_loc11_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr690:
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc11_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          §§goto(addr699);
                                                                                                                                       }
                                                                                                                                       addr691:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr602:
                                                                                                                           }
                                                                                                                           addr741:
                                                                                                                           addr742:
                                                                                                                           return §§pop();
                                                                                                                           §§push(false);
                                                                                                                        }
                                                                                                                        §§goto(addr498);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr741);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr700);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr730:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           while(!(_loc10_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(!(_loc11_ || this))
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              if(_loc11_ || param1)
                                                                                                                              {
                                                                                                                                 addr674:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          §§goto(addr678);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop20;
                                                                                                                                    addr675:
                                                                                                                                 }
                                                                                                                                 continue loop35;
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           §§goto(addr691);
                                                                                                                           addr649:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr759);
                                                                                                                        }
                                                                                                                        §§goto(addr760);
                                                                                                                     }
                                                                                                                     addr644:
                                                                                                                  }
                                                                                                                  §§goto(addr759);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     return §§pop();
                                                                                                                  }
                                                                                                                  §§goto(addr649);
                                                                                                               }
                                                                                                            }
                                                                                                            return §§pop();
                                                                                                            addr521:
                                                                                                         }
                                                                                                         §§goto(addr602);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr593:
                                                                                             }
                                                                                             §§goto(addr675);
                                                                                          }
                                                                                          §§goto(addr593);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr747);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr730);
                                                                        }
                                                                        §§goto(addr741);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr345:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               addr350:
                                                               _loc5_ = this.§=n§.getFrame(_loc4_);
                                                               _loc6_ = _loc5_.texture;
                                                               if(_loc11_)
                                                               {
                                                                  §§push(_loc5_.scale);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc7_ = §§pop();
                                                               }
                                                               _loc8_ = this.§28§(_loc6_);
                                                               if(_loc11_ || this)
                                                               {
                                                                  addr448:
                                                                  this.§6!0§.§'!C§(0,-1,true);
                                                                  addr453:
                                                                  §§push(this.§6!0§);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§pop().addChild(_loc8_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr453);
                                                                        }
                                                                        addr416:
                                                                        §§push(_loc8_);
                                                                        §§push(-_loc5_.pivotX);
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           §§push(§§pop() * this.§7!H§);
                                                                        }
                                                                        §§pop().x = §§pop();
                                                                        §§push(_loc8_);
                                                                        §§push(-_loc5_.pivotY);
                                                                        if(_loc11_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() * this.§7!H§);
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        addr432:
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr416);
                                                                              }
                                                                              §§push(_loc8_);
                                                                              §§push(_loc8_);
                                                                              §§push(this.§7!H§);
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    addr469:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 var _loc9_:* = §§pop();
                                                                                 §§pop().scaleY = §§pop();
                                                                                 §§pop().scaleX = _loc9_;
                                                                                 addr762:
                                                                                 if(this.§,p§ != §&A§)
                                                                                 {
                                                                                    this.§9J§(param1);
                                                                                    §§goto(addr707);
                                                                                 }
                                                                                 §§goto(addr767);
                                                                                 addr475:
                                                                              }
                                                                              §§goto(addr469);
                                                                           }
                                                                           §§goto(addr432);
                                                                        }
                                                                     }
                                                                     §§goto(addr475);
                                                                  }
                                                                  §§goto(addr448);
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                            else
                                                            {
                                                               addr497:
                                                            }
                                                            §§goto(addr762);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§-!%§);
                                                            if(!_loc10_)
                                                            {
                                                               addr480:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr483:
                                                                     this.§6!0§.§'!C§(0,-1,true);
                                                                     if(_loc11_ || this)
                                                                     {
                                                                        §§goto(addr497);
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  §§goto(addr771);
                                                               }
                                                               §§goto(addr762);
                                                            }
                                                         }
                                                         §§goto(addr690);
                                                      }
                                                      addr162:
                                                      addr244:
                                                   }
                                                   §§push(false);
                                                   if(_loc11_ || param1)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr592);
                                                }
                                                §§goto(addr728);
                                             }
                                             break;
                                          }
                                          this.§;E§();
                                          §§goto(addr553);
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr674);
                                 }
                                 addr324:
                              }
                              §§goto(addr480);
                           }
                           §§goto(addr601);
                        }
                        addr305:
                     }
                     break;
                  }
                  §§goto(addr162);
               }
               while(true)
               {
                  §§goto(addr521);
                  §§goto(addr617);
               }
            }
            §§goto(addr305);
         }
         §§goto(addr767);
      }
      
      public function §9J§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this);
            §§push(this.§,P§);
            if(!(_loc3_ && param1))
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() * this.§?!a§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / 1000);
                  }
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().§,P§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§else§);
               if(!(_loc3_ && this))
               {
                  §§push(this.§,P§);
                  if(_loc2_)
                  {
                     §§push(§§pop() * param1);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() / 1000);
                     }
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§else§ = §§pop();
               loop2:
               while(_loc2_ || _loc2_)
               {
                  if(this.§1!8§ != 0)
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr40:
                        if(_loc2_ || _loc2_)
                        {
                           this.§6!0§.rotation += this.§1!8§ * param1 / 1000 / 180 * Math.PI;
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§`!%§);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(this.§#!,§);
                                 if(_loc2_)
                                 {
                                    addr106:
                                    §§push(§§pop() * param1);
                                    if(!(_loc3_ && this))
                                    {
                                       addr103:
                                       §§push(§§pop() / 1000);
                                    }
                                    §§pop().§`!%§ = §§pop() + §§pop();
                                    continue loop2;
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr106);
                              §§goto(addr40);
                           }
                           addr153:
                        }
                     }
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr153);
      }
      
      public function §;!d§(param1:Number) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc8_)
         {
            §§push(this.§,p§);
            loop0:
            while(true)
            {
               §§push(§=!%§);
               addr566:
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(this.§,p§);
                  if(_loc8_)
                  {
                     if(_loc8_)
                     {
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr574:
                              loop28:
                              while(true)
                              {
                                 addr549:
                                 §§push(this.§93§);
                                 §§push(§0!8§);
                                 if(_loc8_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       addr554:
                                       §§push(this.§@!_§);
                                       loop20:
                                       while(true)
                                       {
                                          §§push(this.§5!i§);
                                          loop16:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop17:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop18:
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   addr561:
                                                   §§push(_loc4_);
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      continue loop17;
                                                   }
                                                   loop25:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr545:
                                                      loop14:
                                                      while(true)
                                                      {
                                                         addr395:
                                                         §§push(_loc3_);
                                                         §§push(0.5);
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            if(!(_loc7_ && this))
                                                            {
                                                               addr417:
                                                               §§push(§§pop() * (§§pop() + int(this.§?s§) / 5000));
                                                               if(!_loc7_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr433:
                                                                     while(true)
                                                                     {
                                                                        addr387:
                                                                        this.§6!0§.scaleX = _loc2_;
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           break loop1;
                                                                        }
                                                                        addr676:
                                                                        §§goto(addr675);
                                                                     }
                                                                     addr381:
                                                                     this.§6!0§.scaleY = _loc2_;
                                                                     return true;
                                                                     addr371:
                                                                     addr383:
                                                                     addr382:
                                                                     addr380:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr676);
                                                            }
                                                            else
                                                            {
                                                               loop15:
                                                               while(!_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     while(§§pop() <= §§pop())
                                                                     {
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§push(_loc4_);
                                                                     continue;
                                                                     addr532:
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     addr510:
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        if(!(_loc8_ || _loc2_))
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        addr481:
                                                                        §§push(1);
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              §§push(0.8);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr504:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc8_ || this)
                                                                                 {
                                                                                    addr502:
                                                                                    §§push(§§pop() / 0.2);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       break loop14;
                                                                                    }
                                                                                    addr534:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_ || _loc3_)
                                                                                       {
                                                                                          §§push(0.2);
                                                                                          break loop15;
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop25;
                                                                                 }
                                                                                 addr543:
                                                                              }
                                                                           }
                                                                           §§goto(addr502);
                                                                           §§goto(addr481);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     addr510:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(1);
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr439:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ && _loc2_)
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           addr671:
                                                                           addr671:
                                                                           §§push(true);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§goto(addr674);
                                                                           }
                                                                           §§goto(addr676);
                                                                        }
                                                                     }
                                                                     addr438:
                                                                  }
                                                                  §§goto(addr534);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr543);
                                                               }
                                                            }
                                                            §§goto(addr439);
                                                         }
                                                         §§goto(addr417);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         §§goto(addr510);
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr383);
                                 }
                                 else
                                 {
                                    addr579:
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc7_)
                                       {
                                          addr590:
                                          if(§§pop())
                                          {
                                             if(_loc8_ || this)
                                             {
                                                addr598:
                                                §§push(this.§6!0§);
                                                §§push(this.§6!0§);
                                                §§push(0.2);
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(this.§5!i§);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(this.§@!_§);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            §§push(this.§5!i§);
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§goto(addr635);
                                                            }
                                                            §§goto(addr654);
                                                         }
                                                         §§goto(addr657);
                                                      }
                                                      addr635:
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc8_ || param1)
                                                      {
                                                         addr654:
                                                         §§push(§§pop() * 1.8);
                                                         if(_loc8_)
                                                         {
                                                            addr657:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      var _loc6_:* = §§pop();
                                                      §§pop().scaleY = §§pop();
                                                      §§pop().scaleX = _loc6_;
                                                      if(_loc8_ || this)
                                                      {
                                                         §§goto(addr671);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr675);
                                                      }
                                                   }
                                                }
                                                §§goto(addr657);
                                             }
                                          }
                                          §§goto(addr671);
                                       }
                                       addr674:
                                       return §§pop();
                                    }
                                 }
                                 addr675:
                                 addr676:
                                 return false;
                              }
                           }
                        }
                     }
                     §§goto(addr482);
                  }
                  §§goto(addr438);
               }
               while(true)
               {
                  §§goto(addr569);
               }
            }
         }
         §§goto(addr574);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§"e§);
            if(_loc2_ || this)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§push(this.§"e§);
                        while(true)
                        {
                           §§pop().clear();
                        }
                        addr131:
                     }
                     while(true)
                     {
                        this.§"e§ = null;
                        loop2:
                        while(_loc2_ || _loc1_)
                        {
                           while(true)
                           {
                              addr80:
                              while(true)
                              {
                                 §§push(this.§6!0§);
                                 if(_loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop4:
                                    while(_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§6!0§);
                                             addr91:
                                             while(true)
                                             {
                                                §§pop().dispose();
                                                addr93:
                                                while(true)
                                                {
                                                   this.§6!0§ = null;
                                                   addr79:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             addr52:
                                             if(_loc1_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(_loc1_)
                                             {
                                                continue loop2;
                                             }
                                             this.§,,§ = null;
                                             addr20:
                                             return;
                                             addr74:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(Boolean(this.§,,§));
                                          if(_loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   if(_loc1_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      §§goto(addr52);
                                                   }
                                                   §§goto(addr93);
                                                }
                                                §§goto(addr74);
                                             }
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr20);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr91);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr131);
         }
         §§goto(addr115);
      }
   }
}
