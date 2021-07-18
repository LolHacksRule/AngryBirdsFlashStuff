package §'4§
{
   import § !Y§.§]!,§;
   import § M§.§`"B§;
   import §"!&§.§-!M§;
   import §+!a§.§@!_§;
   import §+!a§.§`b§;
   import §,"&§.§9q§;
   import §0N§.§2!@§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4"#§.§ O§;
   import §4&§.§ "E§;
   import §4&§.§'!,§;
   import §4&§.§,C§;
   import §5Q§.§^!e§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §9!w§.§9!,§;
   import §9t§.b2Vec2;
   import §<!o§.§3!$§;
   import §<W§.§!!u§;
   import §@!'§.b2Settings;
   import §@w§.§`a§;
   import §]">§.§ 6§;
   import §]">§.§-%§;
   import §]">§.§1!0§;
   import §]">§.§50§;
   import §]">§.§<!=§;
   import §`!j§.§#b§;
   import §`!j§.§1U§;
   import §`!j§.§9"!§;
   import §`",§.§'8§;
   import §`",§.§?" §;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^g§
   {
      
      private static const §?!?§:int = 20;
      
      public static const §6!9§:Number;
      
      public static const §4A§:Number;
      
      public static const §5!-§:Number = 0.05;
      
      public static const § !G§:Number;
      
      public static const §?f§:Number;
      
      public static const §`x§:§]!,§;
      
      protected static var §#a§:String;
      
      protected static var § !,§:Number = 1.0;
      
      protected static var §4!0§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!?§ = 20;
         }
         loop0:
         while(true)
         {
            §6!9§ = §9q§.§?[§;
            loop1:
            while(true)
            {
               §4A§ = §9q§.§3!h§;
               while(true)
               {
                  §5!-§ = 1 / 20;
                  while(!(_loc2_ && _loc1_))
                  {
                     § !G§ = §9q§.§3!h§ * §5!-§;
                     loop4:
                     while(_loc1_)
                     {
                        §§push(§§findproperty(§?f§));
                        §§push(§6!9§);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(§§pop() * §5!-§);
                        }
                        §§pop().§?f§ = §§pop();
                        loop5:
                        while(_loc1_)
                        {
                           §`x§ = new §]!,§(13 - 3);
                           do
                           {
                              § !,§ = 1;
                              while(true)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                    continue loop4;
                                 }
                                 continue loop5;
                                 addr78:
                                 §4!0§ = §#b§.§`!0§;
                                 if(_loc2_ && §^g§)
                                 {
                                    continue;
                                 }
                                 §§goto(addr35);
                              }
                              continue loop1;
                           }
                           while(_loc2_ && §^g§);
                           
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      protected var §9u§:§-%§;
      
      private var §8"B§:Array = null;
      
      protected var §3"C§:§3!$§;
      
      public var mLevelEngine:§4q§;
      
      protected var §!!!§:§86§;
      
      protected var §+%§:§9!,§;
      
      protected var §-!t§:§3!n§;
      
      protected var §?S§:§0"@§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §=>§:Boolean = false;
      
      protected var §1m§:Boolean = false;
      
      protected var §7!-§:Boolean = false;
      
      public var §#d§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §3"1§:Number;
      
      public var §0!4§:Number;
      
      private var §[!Z§:§[h§;
      
      private var §+;§:Sprite;
      
      protected var §^`§:§#b§;
      
      protected var §?!T§:§`"B§ = null;
      
      private var §`!<§:EventDispatcher;
      
      private var §4!X§:Array;
      
      private var §^B§:§^!e§;
      
      private var §6+§:§'8§;
      
      protected var §7!T§:§,C§;
      
      protected var §8-§:§'!,§;
      
      private var §7_§:§ "E§;
      
      private var §`!z§:§ "E§;
      
      private var §,!g§:§ "E§;
      
      private var §#[§:Stage;
      
      private var §"!2§:§>"A§;
      
      protected var §%^§:§ O§;
      
      protected var §6!v§:§ O§;
      
      protected var §=J§:Number = 0.0;
      
      protected var §!"!§:String;
      
      private var §&^§:Boolean;
      
      private var §'H§:Number;
      
      private var §@"E§:Number;
      
      protected var §]3§:§2!;§;
      
      protected var §3"4§:§-!M§;
      
      protected var §+Q§:§`b§;
      
      protected var §6u§:§9"!§;
      
      protected var §%"6§:uint = 1.417339207E9;
      
      public var §;3§:Boolean;
      
      protected var § "4§:int = 0;
      
      protected var §]"%§:int = 0;
      
      protected var §?!x§:Number = 1.0;
      
      protected var §,!Q§:Number = 1.0;
      
      protected var §,&§:Boolean;
      
      public function §^g§(param1:Stage, param2:§-!M§, param3:§`b§, param4:§9"!§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§4!X§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§`!<§ = new EventDispatcher();
                  loop2:
                  for(; _loc6_ || param3; while(!(_loc7_ && param3))
                  {
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§6u§ = param4;
                        §§goto(addr90);
                     }
                     §§goto(addr48);
                  })
                  {
                     this.§#[§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§3"4§ = param2;
                        while(true)
                        {
                           this.§+Q§ = param3;
                           continue loop2;
                           addr55:
                           if(!(_loc7_ && param2))
                           {
                              loop11:
                              while(true)
                              {
                                 this.§`!z§ = this.initThemeSoundsManager();
                                 do
                                 {
                                    this.§,!g§ = this.initCutSceneManager();
                                 }
                                 while(!(_loc6_ || param3));
                                 
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                                 addr48:
                                 addr48:
                                 while(!(_loc7_ && param3))
                                 {
                                    §§goto(addr55);
                                    continue loop11;
                                 }
                                 continue loop2;
                              }
                              loop9:
                              while(true)
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    this.§7_§ = this.initThemeGraphicsManager();
                                    §§goto(addr48);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§8-§ = this.initAnimationManager(this.§7!T§);
                                       continue loop9;
                                    }
                                    addr85:
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
         §§goto(addr111);
      }
      
      public static function §9D§(param1:§<!=§, param2:§<!=§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§=!J§);
         if(_loc6_)
         {
            §§push(§§pop() - param2.§=!J§);
            if(!(_loc5_ && §^g§))
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§;!U§);
            if(_loc6_)
            {
               §§push(§§pop() - param2.§;!U§);
               if(_loc6_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §%"5§(_loc3_,_loc4_);
         }
         §§goto(addr41);
      }
      
      public static function §%"5§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§+;§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr88:
                        while(true)
                        {
                           §§push(Boolean(this.§5!`§));
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(!(_loc1_ || _loc1_))
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           this.§+;§ = this.§[!Z§.§#c§;
                        }
                        else
                        {
                           §§goto(addr88);
                        }
                     }
                     break;
                  }
                  §§push(this.§+;§);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr88);
      }
      
      public function get §5!`§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§[!Z§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     this.§[!Z§ = this.§^B§.§?"=§ as §[h§;
                     loop4:
                     while(true)
                     {
                        §§push(this.§[!Z§);
                        addr50:
                        while(_loc1_)
                        {
                           §§pop().§]!D§ = false;
                           if(_loc2_ && this)
                           {
                              continue loop4;
                           }
                           if(_loc2_ && _loc1_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop0;
                     }
                  }
                  addr82:
               }
               while(true)
               {
                  §§push(this.§[!Z§);
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  §§goto(addr50);
               }
               return §§pop();
            }
         }
         §§goto(addr82);
      }
      
      private function get §=I§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§5!`§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§5!`§);
                  }
                  else
                  {
                     §§goto(addr61);
                  }
               }
               §§goto(addr61);
            }
            return (§§pop() as §[h§).§=I§;
         }
         addr61:
         return null;
      }
      
      public function get animationManager() : §'!,§
      {
         return this.§8-§;
      }
      
      public function get textureManager() : §,C§
      {
         return this.§7!T§;
      }
      
      public function get camera() : §9!,§
      {
         return this.§+%§;
      }
      
      public function get objects() : §-%§
      {
         return this.§9u§;
      }
      
      public function get particles() : §0"@§
      {
         return this.§?S§;
      }
      
      public function get background() : §3!$§
      {
         return this.§3"C§;
      }
      
      public function get slingshot() : §3!n§
      {
         return this.§-!t§;
      }
      
      public function get §&+§() : §86§
      {
         return this.§!!!§;
      }
      
      public function get stage() : Stage
      {
         return this.§#[§;
      }
      
      public function get levelItemManager() : §-!M§
      {
         return this.§3"4§;
      }
      
      public function get §[!l§() : § "E§
      {
         return this.§,!g§;
      }
      
      protected function get §>!p§() : § "E§
      {
         return this.§7_§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§]3§ = new §2!;§(param1,param2,param3,param4);
         }
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §^g§.§`x§.getValue();
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6+§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§6+§);
                     addr218:
                     while(true)
                     {
                        §§pop().dispose();
                        addr219:
                        while(true)
                        {
                        }
                     }
                     loop24:
                     while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           continue loop0;
                        }
                        addr200:
                        while(true)
                        {
                           §§push(this.§7_§);
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          addr178:
                                          loop27:
                                          while(true)
                                          {
                                             §§push(this.§7_§);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§push(§§pop().textureManager);
                                                if(!_loc2_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop28:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§7_§);
                                                               addr154:
                                                               while(!(_loc2_ && this))
                                                               {
                                                                  §§push(§§pop().textureManager);
                                                                  while(true)
                                                                  {
                                                                     §§pop().dispose();
                                                                     addr163:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ && this)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                     continue loop24;
                                                                  }
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr152:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§,!g§);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     continue loop28;
                                                                  }
                                                                  §§push(§§pop());
                                                                  if(!_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§pop();
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§,!g§);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(§§pop().textureManager);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    if(_loc1_ || _loc1_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr162);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§push(§§pop().textureManager);
                                                                                 }
                                                                                 addr94:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().dispose();
                                                                                 addr98:
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       if(_loc1_ || _loc2_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§^B§);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc1_ || _loc2_)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   addr53:
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             addr52:
                                                                                             §§pop().dispose();
                                                                                             §§goto(addr53);
                                                                                          }
                                                                                          addr28:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr219);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr152);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr154);
                                                                              }
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop27;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr94);
                                                                                 §§push(this.§,!g§);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§7!T§);
                                                                                 addr192:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().dispose();
                                                                                    continue loop24;
                                                                                 }
                                                                              }
                                                                              addr190:
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr98);
                                                                     }
                                                                     §§goto(addr28);
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr162);
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                              }
                           }
                           §§goto(addr200);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§7!T§);
                  if(_loc1_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr190);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr192);
                  §§goto(addr219);
               }
            }
            §§goto(addr218);
         }
         §§goto(addr178);
      }
      
      protected function initThemeGraphicsManager() : § "E§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§ "E§));
         if(_loc2_)
         {
            §§push(this.§#[§.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || this)
            {
               §§push(§§pop());
               if(_loc2_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr82);
                  }
                  §§push(this.§#[§.loaderInfo.parameters.buildNumber);
                  if(!_loc1_)
                  {
                     §§goto(addr79);
                  }
                  §§goto(addr81);
               }
               addr79:
               if(!§§pop())
               {
                  addr81:
                  §§pop();
               }
               §§goto(addr82);
            }
            addr82:
            if(_loc2_ || _loc2_)
            {
               §§pop();
               addr60:
               §§push("");
            }
            return new §§pop().§ "E§(§§pop(),"",this.§6u§);
         }
         §§goto(addr60);
      }
      
      protected function initThemeSoundsManager() : § "E§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§ "E§));
         if(!_loc2_)
         {
            §§push(this.§#[§.loaderInfo.parameters.assetsUrl);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr66);
                  }
                  §§push(this.§#[§.loaderInfo.parameters.buildNumber);
                  if(_loc1_)
                  {
                     §§goto(addr63);
                  }
                  §§goto(addr65);
               }
               addr63:
               if(!§§pop())
               {
                  addr65:
                  §§pop();
               }
               §§goto(addr66);
            }
            addr66:
            if(!_loc2_)
            {
               §§pop();
               addr44:
               §§push("");
            }
            return new §§pop().§ "E§(§§pop(),"",this.§6u§,false);
         }
         §§goto(addr44);
      }
      
      protected function initCutSceneManager() : § "E§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§ "E§));
         if(!_loc2_)
         {
            §§push(this.§#[§.loaderInfo.parameters.assetsUrl);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop());
               if(_loc1_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr81);
                  }
                  §§push(this.§#[§.loaderInfo.parameters.buildNumber);
                  if(_loc1_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        addr80:
                        §§pop();
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr80);
            }
            addr81:
            if(!_loc2_)
            {
               §§pop();
               addr54:
               §§push("");
            }
            return new §§pop().§ "E§(§§pop(),"",this.§6u§);
         }
         §§goto(addr54);
      }
      
      protected function initAnimationManager(param1:§,C§) : §'!,§
      {
         return new §'!,§(param1);
      }
      
      public function §0!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§^!e§.§`?§);
            loop0:
            for(; §§pop(); loop1:
            for(; !(_loc3_ && _loc3_); §§push(§^!e§.§`?§),if(_loc3_ && this)
            {
               continue;
            },if(!_loc3_)
            {
               §§goto(addr40);
            },§§goto(addr97))
            {
               §§pop().stop();
               while(true)
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                     §§goto(addr95);
                  }
                  break;
                  addr40:
                  §§pop().color = 0;
                  if(_loc2_ || this)
                  {
                     break loop0;
                  }
               }
               §§goto(addr98);
            })
            {
               if(!_loc3_)
               {
                  if(!param1)
                  {
                     §§push(§^!e§.§`?§);
                     continue;
                  }
                  §^!e§.§`?§.start();
                  break;
                  addr95:
               }
               §§goto(addr95);
            }
            return;
         }
         §§goto(addr97);
      }
      
      public function §1!L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.sprite);
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr59);
            }
            §§pop().visible = param1;
         }
         addr59:
         if(_loc2_)
         {
            §§push(this.sprite);
         }
      }
      
      public function §15§(param1:§`"B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§?!T§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  addr88:
                  while(true)
                  {
                     §§push(this.§?!T§);
                     addr90:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr91:
                        while(true)
                        {
                        }
                     }
                  }
                  addr88:
               }
               loop0:
               while(true)
               {
                  this.§?!T§ = param1;
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(this.mReadyToRun)
                        {
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(!(_loc3_ || this))
                              {
                                 continue loop0;
                              }
                              §§push(this.§?!T§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§pop().addEventListeners();
                           }
                        }
                        return;
                     }
                     §§goto(addr88);
                  }
               }
            }
            §§goto(addr90);
         }
         §§goto(addr88);
      }
      
      public function §!!k§() : § O§
      {
         return this.§%^§;
      }
      
      protected function §5J§(param1:§?" §) : int
      {
         return 0;
      }
      
      public function §&!&§(param1:§'8§, param2:Function) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:§?" § = null;
         var _loc6_:* = 0;
         if(!(_loc8_ && param1))
         {
            this.§6+§ = param1;
         }
         §§push(this.§6+§.§4T§);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         loop0:
         for(; _loc4_ < _loc3_; while(false)
         {
            §§goto(addr74);
         })
         {
            _loc5_ = this.§6+§.§5!v§(_loc4_);
            if(_loc8_)
            {
               continue;
            }
            §§push(this.§5J§(_loc5_));
            if(!_loc8_)
            {
               §§push(int(§§pop()));
            }
            _loc6_ = §§pop();
            while(true)
            {
               addr74:
               while(true)
               {
                  this.§7!T§.§?";§(_loc5_,_loc6_);
                  do
                  {
                     _loc4_++;
                  }
                  while(!_loc7_);
                  
                  if(_loc8_ && param2)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
         if(_loc7_ || _loc3_)
         {
            if(param2 != null)
            {
               if(!(_loc8_ && _loc3_))
               {
                  this.§`!<§.addEventListener(Event.INIT,param2);
                  if(!_loc8_)
                  {
                     this.§4!X§.push(param2);
                     while(true)
                     {
                        §§goto(addr123);
                     }
                     addr117:
                  }
               }
               §§goto(addr142);
            }
            addr123:
            while(this.§+!f§())
            {
               if(!_loc8_)
               {
                  this.§["?§();
               }
               if(_loc7_)
               {
                  addr142:
                  break;
               }
               continue loop6;
            }
            return;
         }
         §§goto(addr117);
      }
      
      private function §+!f§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§7!T§);
            if(!_loc3_)
            {
               §§push(§§pop().§;!j§());
               loop0:
               do
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr178:
                        §§push(this.§7!T§);
                        while(true)
                        {
                           §§push(§§pop().§<!b§);
                           addr179:
                           while(true)
                           {
                              §§push(1000);
                              addr180:
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 addr181:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr182:
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                        addr178:
                     }
                     while(true)
                     {
                        §§push(this.§7!T§);
                        if(!_loc3_)
                        {
                           §§push(§§pop().§5"C§);
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§push(1000);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc4_ || this)
                                    {
                                       addr149:
                                       §§push(int(§§pop()));
                                       if(_loc4_ || _loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr180);
                                 }
                                 §§goto(addr181);
                              }
                              else
                              {
                                 §§goto(addr179);
                              }
                           }
                           §§goto(addr149);
                        }
                        else
                        {
                           §§goto(addr178);
                        }
                     }
                     _loc2_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(§2!@§);
                        §§push("\n\nMain texture manager memory usage:\n   textures " + _loc1_);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() + " kilobytes\n   bitmaps ");
                           if(!_loc3_)
                           {
                              §§push(§§pop() + _loc2_);
                              if(_loc4_ || _loc2_)
                              {
                                 addr118:
                                 §§push(§§pop() + " kilobytes\n\n");
                              }
                           }
                           §§pop().log(§§pop());
                           while(true)
                           {
                              this.initializeAnimations();
                              addr82:
                              while(true)
                              {
                                 this.§,&§ = false;
                                 continue loop3;
                              }
                           }
                           addr121:
                        }
                        §§goto(addr118);
                     }
                     addr61:
                     return true;
                     addr183:
                     addr157:
                     addr78:
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        this.§,&§ = true;
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    continue loop1;
                                 }
                                 addr71:
                              }
                           }
                           break;
                        }
                        if(!_loc3_)
                        {
                           if(_loc4_ || _loc1_)
                           {
                              §§push(false);
                              if(_loc4_ || _loc3_)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr183);
                           }
                           §§goto(addr61);
                        }
                        §§goto(addr82);
                        §§goto(addr121);
                     }
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr157);
                     }
                     §§goto(addr78);
                  }
               }
               while(_loc3_);
               
               return §§pop();
            }
            §§goto(addr178);
         }
         §§goto(addr71);
      }
      
      protected function initializeAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8-§.initializeAnimations();
         }
         do
         {
            this.§3"4§.initAnimations();
         }
         while(!_loc1_);
         
      }
      
      private function §2"'§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!T§.§7"$§();
            while(true)
            {
               §§push(this.§>!p§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§>!p§);
                                 if(!(_loc2_ && param1))
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().textureManager);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr306:
                                       while(true)
                                       {
                                          loop44:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop45:
                                                while(true)
                                                {
                                                   §§push(this.§>!p§);
                                                   addr310:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      addr311:
                                                      while(true)
                                                      {
                                                         §§pop().§7"$§();
                                                         addr312:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop45;
                                                   }
                                                }
                                                addr308:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§[!l§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(this.§[!l§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop().textureManager);
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr266:
                                                                        while(true)
                                                                        {
                                                                           loop42:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr268:
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       addr241:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§,&§);
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ || this))
                                                                                             {
                                                                                                continue loop42;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(!_loc2_)
                                                                                                {
                                                                                                   this.§+!f§();
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§["?§();
                                                                                                      while(_loc3_)
                                                                                                      {
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr308);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§?!T§);
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == null);
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      if(!(_loc3_ || this))
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§push(!§§pop());
                                                                                                      if(!(_loc2_ && param1))
                                                                                                      {
                                                                                                         addr220:
                                                                                                         if(_loc2_ && param1)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.mReadyToRun);
                                                                                                                  if(_loc3_ || this)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  if(_loc2_ && _loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     continue loop44;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                        continue loop26;
                                                                                                                        addr176:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        loop31:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§7_§);
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§7_§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§;!j§();
                                                                                                                                          addr134:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc2_ && this)
                                                                                                                                             {
                                                                                                                                                while(_loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                                continue loop19;
                                                                                                                                                addr188:
                                                                                                                                             }
                                                                                                                                             loop46:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr45:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr48);
                                                                                                                                                   continue loop46;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr133:
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    addr91:
                                                                                                                                    if(!(_loc3_ || param1))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr102);
                                                                                                                                       §§push(this.§,!g§);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr176);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr312);
                                                                                                                              }
                                                                                                                              §§goto(addr45);
                                                                                                                           }
                                                                                                                           §§goto(addr133);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            addr233:
                                                                                                         }
                                                                                                         §§goto(addr174);
                                                                                                      }
                                                                                                      §§goto(addr233);
                                                                                                   }
                                                                                                   §§goto(addr220);
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                          continue loop42;
                                                                                       }
                                                                                       §§goto(addr268);
                                                                                    }
                                                                                    addr283:
                                                                                 }
                                                                                 addr270:
                                                                                 §§push(this.§[!l§);
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    §§push(§§pop().textureManager);
                                                                                    continue loop6;
                                                                                    §§goto(addr270);
                                                                                 }
                                                                                 continue loop11;
                                                                                 addr272:
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                        }
                                                                        if(!(_loc3_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr91);
                                                                              }
                                                                              §§goto(addr134);
                                                                           }
                                                                           §§goto(addr113);
                                                                        }
                                                                        §§goto(addr20);
                                                                     }
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr310);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr306);
                     }
                  }
               }
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               §§push(this.§,!g§);
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc3_)
                  {
                     §§goto(addr36);
                  }
                  §§goto(addr113);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr141);
      }
      
      private function §["?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`!<§.dispatchEvent(new Event(Event.INIT));
         }
         do
         {
            this.§5n§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private function §5n§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§4!X§)
         {
            if(_loc4_)
            {
               this.§`!<§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(_loc4_ || this)
         {
            this.§4!X§ = [];
         }
      }
      
      public function init(param1:§#b§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.mReadyToRun);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.clearLevel();
                     addr306:
                     while(true)
                     {
                     }
                  }
                  addr304:
               }
               addr283:
               while(true)
               {
                  this.§!!!§ = new §86§(this,param1);
                  while(true)
                  {
                     this.§+%§ = this.initializeLevelCamera(param1);
                     loop5:
                     while(true)
                     {
                        this.§3"1§ = 0;
                        while(true)
                        {
                           this.§0!4§ = 0;
                           loop7:
                           while(true)
                           {
                              this.§&^§ = false;
                              loop8:
                              while(true)
                              {
                                 this.mReadyToRun = false;
                                 loop9:
                                 for(; !(_loc2_ && _loc3_); if(!(_loc3_ || param1))
                                 {
                                    continue;
                                 },if(_loc3_)
                                 {
                                    §§goto(addr44);
                                 },§§goto(addr304))
                                 {
                                    this.§=>§ = false;
                                    while(true)
                                    {
                                       this.mPigsAnimationTimer1 = 2000;
                                       addr243:
                                       while(true)
                                       {
                                          this.mPigsAnimationTimer2 = 1000;
                                          addr238:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(_loc3_)
                                             {
                                                §§push(param1.theme);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc3_)
                                                   {
                                                      §§pop().theme = §§pop() || "background_blue_grass";
                                                      continue;
                                                   }
                                                }
                                             }
                                             §§goto(addr221);
                                          }
                                       }
                                       if(_loc2_ && this)
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop8;
                                       }
                                       §!!t§.init();
                                       if(_loc2_)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr65);
                                             }
                                             else
                                             {
                                                loop23:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr91:
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      continue loop9;
                                                   }
                                                   addr165:
                                                   loop21:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.§7!-§);
                                                         if(_loc3_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         addr116:
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(_loc2_ && param1)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop7;
                                                               }
                                                               this.§^!`§(param1.theme);
                                                               continue loop23;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop21;
                                                               §§goto(addr116);
                                                            }
                                                            addr175:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr243);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      continue loop0;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr165);
                                                   §§goto(addr91);
                                                }
                                                addr186:
                                             }
                                             §§goto(addr238);
                                          }
                                          loop27:
                                          while(true)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   this.§-<§(param1.name);
                                                   §§goto(addr49);
                                                   §§goto(addr161);
                                                }
                                                addr161:
                                             }
                                             addr194:
                                             while(true)
                                             {
                                                this.§7!-§ = this.§5!'§(param1.theme);
                                                §§goto(addr186);
                                                continue loop27;
                                             }
                                          }
                                          addr49:
                                          addr152:
                                       }
                                       §§goto(addr29);
                                    }
                                 }
                                 §§goto(addr306);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr194);
      }
      
      protected function §-<§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%^§ = new § O§(param1);
         }
      }
      
      protected function §4!m§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§7_§)
            {
               if(_loc3_ || _loc2_)
               {
                  addr39:
                  §§push(false);
                  if(!(_loc2_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr58);
         }
         §§goto(addr39);
      }
      
      protected function §5!'§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@!_§ = null;
         if(!(_loc4_ && param1))
         {
            if(this.§`!z§)
            {
               addr29:
               _loc2_ = this.§+Q§.getBackground(param1);
               if(!(_loc4_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§push(Boolean(_loc2_.§break§));
                        if(_loc3_ || this)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr80);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr98);
                        }
                        addr80:
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(this.§`!z§.§2!5§(_loc2_.§break§));
                           if(_loc3_)
                           {
                              addr90:
                              §§push(!§§pop());
                              if(!(_loc4_ && param1))
                              {
                                 addr98:
                                 if(§§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(false);
                                    }
                                    else
                                    {
                                       §§goto(addr118);
                                    }
                                 }
                                 §§goto(addr118);
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr118);
                     }
                  }
               }
            }
            addr118:
            return true;
         }
         §§goto(addr29);
      }
      
      protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         return null;
      }
      
      protected function §^!`§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:§@!_§ = null;
         if(!(_loc4_ && param1))
         {
            §§push(this.§7_§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr155:
                           §§goto(addr180);
                        }
                     }
                     §§goto(addr121);
                  }
                  addr180:
                  while(true)
                  {
                     §§push(this.§4!m§(param1));
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        addr184:
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(this.§5!'§(param1));
                           if(!(_loc4_ && _loc2_))
                           {
                              break;
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr245);
                     }
                     break;
                  }
                  §§goto(addr266);
               }
               break;
               loop15:
               while(true)
               {
                  if(_loc4_ && this)
                  {
                     continue loop0;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§6!E§);
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(this.§7_§);
                        continue loop15;
                     }
                     §§goto(addr129);
                     addr57:
                  }
                  else
                  {
                     §§goto(addr254);
                  }
               }
            }
            addr266:
            if(§§pop())
            {
               loop4:
               while(true)
               {
                  §§push(this.§`!z§);
                  while(true)
                  {
                     §§pop().removeEventListener(Event.COMPLETE,this.§]!Q§);
                     loop6:
                     while(true)
                     {
                        §§push(this.§`!z§);
                        addr249:
                        loop7:
                        while(true)
                        {
                           §§pop().removeEventListener(Event.CANCEL,this.§2!H§);
                           addr254:
                           while(true)
                           {
                              addr235:
                              while(true)
                              {
                                 §§push(this.§`!z§);
                                 loop10:
                                 while(true)
                                 {
                                    §§pop().addEventListener(Event.COMPLETE,this.§]!Q§);
                                    addr243:
                                    while(_loc5_)
                                    {
                                       §§push(this.§`!z§);
                                       if(_loc5_)
                                       {
                                          continue loop7;
                                       }
                                       continue loop10;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
            return;
            §§push(!§§pop());
         }
         §§goto(addr127);
      }
      
      private function §#E§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§7_§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§#E§);
               loop1:
               while(true)
               {
                  §§push(this.§7_§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§6!E§);
                  while(true)
                  {
                     this.§1m§ = true;
                     loop3:
                     for(; !(_loc3_ && _loc2_); if(!(_loc3_ && _loc2_))
                     {
                        addr24:
                     },continue,return)
                     {
                        while(true)
                        {
                           §§push(this.§1m§);
                           if(_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       loop7:
                                       while(§§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             this.initialize(this.§^`§);
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          addr85:
                                          while(_loc2_ || _loc2_)
                                          {
                                             §§push(this.§7!-§);
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   continue loop5;
                                                }
                                                continue;
                                             }
                                             continue loop7;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr24);
                                    }
                                    continue;
                                    addr48:
                                 }
                              }
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr85);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      private function §6!E§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§7_§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§#E§);
               addr80:
               while(true)
               {
                  §§push(this.§7_§);
                  if(_loc2_)
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§6!E§);
                     while(!_loc3_)
                     {
                        this.§=>§ = true;
                        if(_loc2_ || this)
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
         §§goto(addr80);
      }
      
      private function §]!Q§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§7_§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§]!Q§);
               while(true)
               {
                  §§push(this.§7_§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§2!H§);
                  while(true)
                  {
                     this.§7!-§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§1m§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr95:
                                    while(true)
                                    {
                                       §§push(this.§7!-§);
                                       if(!(_loc2_ && param1))
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                       addr49:
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                              }
                              while(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_)
                                 {
                                    this.initialize(this.§^`§);
                                    continue loop3;
                                 }
                                 §§goto(addr95);
                              }
                              addr25:
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      private function §2!H§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§7_§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§]!Q§);
               loop1:
               while(true)
               {
                  §§push(this.§7_§);
                  if(!(_loc2_ || this))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§2!H§);
                  while(true)
                  {
                     this.§7!-§ = true;
                     loop3:
                     for(; _loc2_ || this; if(!_loc2_)
                     {
                        continue;
                     },while(true)
                     {
                        this.initialize(this.§^`§);
                        §§goto(addr70);
                     })
                     {
                        §§push(this.§1m§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr82:
                                    do
                                    {
                                       §§push(this.§7!-§);
                                       if(_loc2_)
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                       addr48:
                                    }
                                    while(_loc2_);
                                    
                                 }
                              }
                              loop8:
                              while(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 addr70:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break loop8;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr82);
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function get backgroundTextureManager() : §,C§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§>!p§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.§>!p§);
                  }
                  else
                  {
                     §§goto(addr65);
                  }
               }
               §§goto(addr65);
            }
            return §§pop().textureManager;
         }
         addr65:
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§#b§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§+!q§;
         }
      }
      
      private function initialize(param1:§#b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]3§ = null;
            loop0:
            while(true)
            {
               this.§;3§ = false;
               loop1:
               while(true)
               {
                  §§push(§^!e§.§1!P§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§^!e§.§1!P§);
                           addr269:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr281:
                              while(true)
                              {
                              }
                           }
                        }
                        addr267:
                     }
                     loop3:
                     while(true)
                     {
                        this.initializePhysicsConstants(param1);
                        while(true)
                        {
                           this.initLevelEngine(param1);
                           loop5:
                           while(true)
                           {
                              this.§3"C§ = this.initializeLevelBackground(param1.theme,0 / §5!-§,this.backgroundTextureManager,this.§+%§.§1!z§());
                              loop6:
                              while(_loc2_ || _loc2_)
                              {
                                 this.§3"C§.§]i§(§9q§.§&T§());
                                 while(true)
                                 {
                                    §§push(§^!e§.§`?§);
                                    if(_loc2_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(§^!e§.§`?§);
                                             addr216:
                                             while(true)
                                             {
                                                §§pop().color = this.§3"C§.skyColor;
                                                addr220:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr179:
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(this.§+%§);
                                             while(true)
                                             {
                                                §§pop().init();
                                                continue loop5;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§9u§ = this.initializeLevelObjectManager(param1);
                                          addr202:
                                          while(true)
                                          {
                                             this.§-!t§ = this.initializeLevelSlingshot(param1);
                                             loop11:
                                             while(true)
                                             {
                                                this.§?S§ = this.§!!?§(this.§8-§,this.§7!T§);
                                                addr177:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr179);
                                                }
                                                continue loop6;
                                             }
                                          }
                                          §§goto(addr220);
                                       }
                                    }
                                    §§goto(addr216);
                                    addr37:
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             return;
                                          }
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr269);
               }
            }
         }
         §§goto(addr98);
      }
      
      protected function levelInitialized() : void
      {
      }
      
      protected function initLevelEngine(param1:§#b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.mLevelEngine = new §4q§(this);
         }
      }
      
      protected function §+L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§!"!§)
            {
               loop0:
               while(true)
               {
                  this.§6!v§ = § O§.initialize(this.§!"!§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§6!v§);
                     while(true)
                     {
                        §§pop().speed = 1;
                        loop3:
                        while(true)
                        {
                           §§push(this.§6!v§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§pop().play();
                           loop4:
                           while(_loc2_)
                           {
                              while(true)
                              {
                                 this.§=J§ = -1000;
                                 do
                                 {
                                    this.§!"!§ = null;
                                 }
                                 while(_loc1_);
                                 
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr65);
      }
      
      public function §?""§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§!"!§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§6!v§ == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6!v§);
            for(; §§pop(); if(!(_loc3_ || param1))
            {
               continue;
            },§§pop().speed = Math.max(this.§6!v§.speed / 1.25,Math.pow(1 / 1.25,10)),if(!(_loc2_ && _loc3_))
            {
               if(_loc3_ || param1)
               {
                  break;
               }
               §§goto(addr89);
            })
            {
               if(_loc3_)
               {
                  if(param1)
                  {
                     addr89:
                     §§push(this.§6!v§);
                  }
                  else
                  {
                     §§push(this.§6!v§);
                     if(_loc3_ || this)
                     {
                        continue;
                     }
                  }
                  §§pop().speed = Math.min(this.§6!v§.speed * 1.25,Math.pow(1.25,2));
                  addr113:
                  break;
                  addr113:
               }
               §§goto(addr113);
            }
            return;
         }
         §§goto(addr113);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6!v§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr53:
                     this.§6!v§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected function initializeLevelObjectManager(param1:§#b§) : §-%§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§@!_§.§!z§);
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return new §-%§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelCamera(param1:§#b§) : §9!,§
      {
         return new §9!,§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§,C§, param4:Number) : §3!$§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§@!_§;
         if((_loc5_ = this.§+Q§.getBackground(param1)) == null)
         {
            if(!(_loc7_ && param2))
            {
               §2!@§.log("UNKNOWN LEVEL THEME! " + param1);
               if(!_loc7_)
               {
                  addr49:
                  §§push(§#b§.§`!0§);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
               }
               _loc5_ = this.§+Q§.getBackground(param1);
               §§goto(addr66);
            }
            §§goto(addr49);
         }
         addr66:
         §§push(§§findproperty(§3!$§));
         §§push(_loc5_);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         §§push(§^!e§.§use§);
         if(_loc6_)
         {
            §§push(!§§pop());
         }
         return new §§pop().§3!$§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
      }
      
      protected function initializeLevelSlingshot(param1:§#b§) : §3!n§
      {
         return new §3!n§(this,param1,new Sprite());
      }
      
      protected function §!!?§(param1:§'!,§, param2:§,C§) : §0"@§
      {
         return new §0"@§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            if(this.mReadyToRun)
            {
               if(!(_loc7_ && param1))
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§#b§ = new §#b§();
         if(_loc6_ || _loc3_)
         {
            _loc3_.slingshotY = -12;
         }
         var _loc4_:§1U§;
         (_loc4_ = new §1U§()).left = 0;
         if(_loc6_ || _loc3_)
         {
            §§push(_loc4_);
            §§push(§9!,§.§-!?§);
            if(_loc6_)
            {
               §§push(-§§pop());
               if(!(_loc7_ && this))
               {
                  addr159:
                  §§push(10);
                  if(_loc6_)
                  {
                     addr177:
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        §§push(8);
                     }
                     §§pop().top = §§pop();
                     loop0:
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.top);
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop() + §9!,§.§-!?§);
                        }
                        §§pop().bottom = §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.left);
                           if(!(_loc7_ && param1))
                           {
                              §§push(§§pop() + §9!,§.§5F§);
                           }
                           §§pop().right = §§pop();
                           loop2:
                           for(; _loc6_; if(!(_loc7_ && this))
                           {
                              continue loop1;
                           })
                           {
                              _loc4_.y = -13.929;
                              loop3:
                              while(true)
                              {
                                 _loc4_.x = §9!,§.§5F§;
                                 loop4:
                                 while(true)
                                 {
                                    addr91:
                                    while(true)
                                    {
                                       _loc4_.id = §9!,§.§,]§;
                                       while(_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             _loc3_.§,!Z§(_loc4_);
                                             if(_loc6_ || _loc3_)
                                             {
                                                continue loop2;
                                             }
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr178:
                  }
                  §§push(§§pop() * §§pop());
               }
               §§goto(addr177);
            }
            §§goto(addr159);
         }
         §§goto(addr178);
      }
      
      protected function §^!x§(param1:§#b§, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(param2)
            {
               if(_loc4_)
               {
                  addr48:
                  this.§'"9§(param1);
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      protected function §1"%§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%"6§ ^= this.§%"6§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§%"6§);
               §§push(this.§%"6§);
               if(_loc1_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§%"6§ = §§pop() ^ §§pop();
               §§goto(addr77);
            }
         }
         addr77:
         while(true)
         {
            this.§%"6§ ^= this.§%"6§ << 4;
            if(!(_loc2_ && _loc2_))
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
         return this.§%"6§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §'"9§(param1:§#b§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§`a§ = null;
         if(!_loc7_)
         {
            §§push(this);
            §§push(0.33);
            if(!_loc7_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§%"6§ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(10);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(!(_loc7_ && _loc3_))
                     {
                        _loc3_ = §§pop();
                        if(!(_loc6_ || this))
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc7_ && _loc2_))
                           {
                              while(true)
                              {
                                 §§push(5);
                                 if(_loc6_ || this)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       break loop2;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr457);
                           }
                           break;
                        }
                        continue loop1;
                        addr428:
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        if(!_loc7_)
                        {
                           §§push(_loc5_ = new §`a§());
                           §§push(30 + _loc3_ * 10);
                           if(_loc6_)
                           {
                              §§push(this.§1"%§());
                              if(_loc6_)
                              {
                                 §§push(§§pop() * 9);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().x = §§pop();
                           if(!_loc7_)
                           {
                              §§push(_loc2_);
                              loop6:
                              while(true)
                              {
                                 §§push(0);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc5_);
                                       §§push(-100 + _loc2_ * 6);
                                       if(!_loc7_)
                                       {
                                          §§push(this.§1"%§());
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             §§push(§§pop() * 3);
                                             if(_loc6_ || param1)
                                             {
                                                addr324:
                                                §§push(§§pop() - §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc3_ * 8);
                                                }
                                                §§pop().y = §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(_loc3_);
                                                         loop9:
                                                         while(_loc6_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc7_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + §§pop() * _loc3_);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr266:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           §§push(5);
                                                                        }
                                                                        §§push(int(§§pop()));
                                                                        loop23:
                                                                        for(; _loc6_; if(_loc7_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        },if(!_loc7_)
                                                                        {
                                                                           §§push(3);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr270);
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       _loc5_.type = "BIRD_BLUE";
                                                                                       §§goto(addr159);
                                                                                    }
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr416);
                                                                              }
                                                                              addr359:
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    §§goto(addr376);
                                                                                 }
                                                                                 §§goto(addr419);
                                                                              }
                                                                              §§goto(addr407);
                                                                           }
                                                                           §§goto(addr272);
                                                                        },§§goto(addr413))
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§push(2);
                                                                                 addr272:
                                                                                 addr413:
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_.type = "BIRD_RED";
                                                                                             addr285:
                                                                                             loop38:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      §§push(this.§1"%§());
                                                                                                      if(_loc6_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() * 360);
                                                                                                      }
                                                                                                      §§pop().angle = §§pop();
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               loop14:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.addObject(_loc5_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc7_ && param1)
                                                                                                                     {
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     _loc3_++;
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!(_loc7_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        §§goto(addr428);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                               addr108:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr420:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               addr393:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr199:
                                                                                                            _loc5_.type = "BIRD_YELLOW";
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop38;
                                                                                                            §§goto(addr199);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr328:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         §§push(45);
                                                                                                         §§push(this.§1"%§());
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop() * 90);
                                                                                                         }
                                                                                                         §§pop().angle = §§pop() - §§pop();
                                                                                                      }
                                                                                                   }
                                                                                                   addr348:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§goto(addr108);
                                                                                                   }
                                                                                                   addr427:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      break loop26;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr282:
                                                                                       }
                                                                                       §§push(_loc3_);
                                                                                       break loop23;
                                                                                       addr410:
                                                                                    }
                                                                                    §§goto(addr285);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§push(1);
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
                                                                                                   §§goto(addr420);
                                                                                                }
                                                                                                addr419:
                                                                                             }
                                                                                             addr397:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc7_ && _loc2_)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   addr407:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      §§goto(addr410);
                                                                                                   }
                                                                                                   §§goto(addr393);
                                                                                                   addr407:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            _loc5_.type = "PIG_MUSTACHE";
                                                                                                            addr390:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr328);
                                                                                                            }
                                                                                                            addr390:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc5_.y = 0;
                                                                                                            }
                                                                                                            addr424:
                                                                                                         }
                                                                                                         §§goto(addr427);
                                                                                                      }
                                                                                                      §§goto(addr390);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc5_.type = "PIG_HELMET";
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§goto(addr359);
                                                                              §§push(4);
                                                                           }
                                                                           §§goto(addr393);
                                                                        }
                                                                        addr267:
                                                                     }
                                                                     §§goto(addr266);
                                                                     §§push(§§pop() % §§pop());
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr397);
                                                            }
                                                            §§goto(addr407);
                                                            §§goto(addr393);
                                                         }
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr390);
                                                }
                                             }
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§goto(addr324);
                                    }
                                    §§goto(addr424);
                                 }
                              }
                           }
                           §§goto(addr282);
                        }
                        addr457:
                        _loc2_++;
                        if(!_loc7_)
                        {
                           break loop2;
                        }
                        §§goto(addr463);
                     }
                  }
                  addr463:
                  return;
               }
               continue loop0;
            }
         }
      }
      
      private function §"";§() : void
      {
      }
      
      protected function §4!W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§3!$§.§,"5§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§]"5§(this.§3"C§.§3!_§);
                     addr182:
                     while(true)
                     {
                     }
                  }
                  addr177:
               }
               while(true)
               {
                  this.§]"5§(this.§?S§.§ S§(§0"@§.§!![§));
                  loop4:
                  while(true)
                  {
                     this.§]"5§(this.§?S§.§ S§(§0"@§.§8!%§));
                     loop5:
                     while(true)
                     {
                        this.§]"5§(this.§9u§.§-"%§);
                        loop6:
                        for(; _loc2_; while(!(_loc1_ && _loc2_))
                        {
                           this.§]"5§(this.§?S§.§ S§(§0"@§.§5"#§));
                           §§goto(addr53);
                        })
                        {
                           this.§]"5§(this.§-!t§.sprite);
                           loop7:
                           while(true)
                           {
                              this.§]"5§(this.§?S§.§ S§(§0"@§.§3!W§));
                              loop8:
                              while(true)
                              {
                                 this.§]"5§(this.§3"C§.§'^§);
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc1_)
                                          {
                                             while(true)
                                             {
                                                §§push(§3!$§.§,"5§);
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(!_loc1_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      continue loop9;
                                                      addr76:
                                                   }
                                                   else
                                                   {
                                                      addr58:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§]"5§(this.§9u§.overlaySprite);
                                                      continue loop6;
                                                   }
                                                   addr57:
                                                   §§push(§4q§.§default§);
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               while(_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr57);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr76);
                                                                  }
                                                               }
                                                               continue loop7;
                                                               addr53:
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             addr120:
                                          }
                                          else
                                          {
                                             §§goto(addr177);
                                          }
                                       }
                                       break;
                                    }
                                    continue loop8;
                                 }
                                 §§goto(addr182);
                              }
                           }
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      protected function §]"5§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.sprite);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr58:
                     this.sprite.addChild(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function screenToBox2D(param1:Number, param2:Number, param3:Point = null) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            if(!param3)
            {
               if(_loc4_ || param3)
               {
                  param3 = new Point();
               }
               loop15:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     param3.x = ((param1 - this.sprite.x) / §9!,§.§8"4§ + this.§+%§.§;=§) * §5!-§;
                     while(_loc4_ || param2)
                     {
                        param3.y = ((param2 - this.sprite.y) / §9!,§.§8"4§ + this.§+%§.§""!§) * §5!-§;
                        if(_loc4_)
                        {
                           return param3;
                        }
                     }
                     loop2:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           loop3:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 continue loop15;
                              }
                              while(true)
                              {
                                 §§push(param2);
                                 if(!_loc5_)
                                 {
                                    §§push(§9q§.§+w§);
                                    if(!_loc5_)
                                    {
                                       if(_loc4_ || param3)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc5_ && param3))
                                          {
                                             if(_loc4_ || param2)
                                             {
                                                if(_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr182:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            addr189:
                                                            if(_loc4_ || param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  param2 = §§pop();
                                                                  continue loop2;
                                                                  §§goto(addr189);
                                                               }
                                                               addr196:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§9q§.§9!$§);
                                                                  addr233:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                               }
                                                               addr231:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr216:
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               continue loop3;
                                                            }
                                                            addr216:
                                                         }
                                                      }
                                                   }
                                                   addr181:
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             while(true)
                                             {
                                                param2 = §§pop();
                                                continue loop15;
                                             }
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr233);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc4_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       addr207:
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr182);
                              }
                           }
                           continue loop15;
                        }
                        while(true)
                        {
                           continue loop7;
                        }
                     }
                  }
               }
               addr236:
            }
            §§push(§9q§.§9!$§);
            if(_loc4_)
            {
               §§push(§9q§.§+w§);
               if(!_loc5_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc4_ || param3)
                     {
                        §§push(param1);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§9q§.§9!$§);
                           if(_loc4_ || param2)
                           {
                              §§push(§§pop() / §§pop());
                              if(!(_loc5_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc5_)
                                 {
                                    addr80:
                                    param1 = §§pop();
                                    if(!(_loc5_ && param2))
                                    {
                                       §§goto(addr231);
                                       §§push(param2);
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr229);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§goto(addr207);
                        §§push(§9q§.§+w§);
                     }
                  }
                  §§goto(addr216);
               }
               §§goto(addr233);
            }
            §§goto(addr181);
         }
         §§goto(addr236);
      }
      
      public function §;!A§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(!param3)
            {
               if(!(_loc6_ && param2))
               {
                  param3 = new Point();
                  addr31:
                  param3.x = (param1 / §5!-§ - this.§+%§.§;=§) * §9!,§.§8"4§ + this.sprite.x;
                  if(!_loc6_)
                  {
                     addr59:
                     param3.y = (param2 / §5!-§ - this.§+%§.§""!§) * §9!,§.§8"4§ + this.sprite.y;
                  }
               }
               var _loc4_:Number = Math.max(§9q§.§9!$§,§9q§.§+w§);
               if(_loc5_)
               {
                  param3.x *= _loc4_;
               }
               do
               {
                  param3.y *= _loc4_;
               }
               while(!_loc5_);
               
               return param3;
            }
            §§goto(addr31);
         }
         §§goto(addr59);
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(this.sprite);
            loop0:
            while(true)
            {
               §§push(param3);
               addr202:
               while(true)
               {
                  §§pop().scaleX = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §4"6§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§9u§.addObject(param1,param2,param3,0,§-%§.§;!J§);
         }
      }
      
      public function §&9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§=I§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§=I§);
                     addr90:
                     loop4:
                     while(true)
                     {
                        §§pop().visible = true;
                        addr92:
                        addr63:
                        addr65:
                        while(true)
                        {
                           §§push(this.§=I§);
                           if(_loc2_ || _loc1_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        §§pop().alpha = 0;
                        addr72:
                        while(_loc1_ && this)
                        {
                           §§goto(addr92);
                           §§goto(addr63);
                        }
                        while(true)
                        {
                        }
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  this.§#d§ = 0;
                  if(_loc2_ || _loc2_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr65);
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr72);
      }
      
      public function §&c§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(!param1)
            {
               this.§"!2§ = null;
               if(_loc6_)
               {
                  if(_loc5_)
                  {
                     addr57:
                     this.§"!2§ = new §>"A§(param2,param3,param4);
                     addr64:
                  }
                  else
                  {
                     addr44:
                  }
                  return;
               }
               §§goto(addr64);
            }
            §§goto(addr57);
         }
         §§goto(addr44);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§3"C§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§3"C§);
                     addr611:
                     while(true)
                     {
                        §§pop().dispose();
                        addr612:
                        while(true)
                        {
                           this.§3"C§ = null;
                           addr593:
                           while(true)
                           {
                           }
                        }
                     }
                     loop32:
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           while(true)
                           {
                              §§push(this.mLevelEngine);
                              if(!_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(this.mLevelEngine);
                                          if(_loc2_)
                                          {
                                             if(§§pop().§9!_§)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue loop32;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.mLevelEngine);
                                                         addr560:
                                                         while(true)
                                                         {
                                                            §§pop().clear();
                                                            addr561:
                                                            loop6:
                                                            while(true)
                                                            {
                                                               this.mLevelEngine = null;
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§!!!§);
                                                                     if(!_loc1_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§-!t§);
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§-!t§);
                                                                                       addr495:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().dispose();
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§-!t§ = null;
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      if(_loc2_ || _loc2_)
                                                                                                      {
                                                                                                         addr486:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§+%§);
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               addr402:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§?S§);
                                                                                                                  if(!(_loc1_ && this))
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.§?S§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().dispose();
                                                                                                                                 addr418:
                                                                                                                                 while(!_loc1_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc2_ || _loc1_))
                                                                                                                                    {
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    addr427:
                                                                                                                                    if(_loc2_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       this.§?S§ = null;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc1_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr394:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§!!!§);
                                                                                                                                          addr519:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().clear();
                                                                                                                                             addr520:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§!!!§ = null;
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr427);
                                                                                                                                       }
                                                                                                                                       addr517:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop16:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§+%§ = null;
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       continue loop7;
                                                                                                                                       addr373:
                                                                                                                                       if(!(_loc2_ || _loc1_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§+%§);
                                                                                                                                             if(_loc1_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§pop().clear();
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          continue loop13;
                                                                                                                                          addr472:
                                                                                                                                       }
                                                                                                                                       addr340:
                                                                                                                                       §§push(this.sprite);
                                                                                                                                       if(!(_loc1_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          if(§§pop().numChildren <= 0)
                                                                                                                                          {
                                                                                                                                             addr354:
                                                                                                                                             this.§3"1§ = 0;
                                                                                                                                             this.§0!4§ = 0;
                                                                                                                                             this.mReadyToRun = false;
                                                                                                                                             this.§&^§ = false;
                                                                                                                                             addr339:
                                                                                                                                             addr334:
                                                                                                                                             if(!(_loc1_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc1_ && this))
                                                                                                                                                {
                                                                                                                                                   this.§#d§ = §4#§.§`"%§;
                                                                                                                                                   addr310:
                                                                                                                                                   §§push(this.§5!`§);
                                                                                                                                                   if(_loc2_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr303:
                                                                                                                                                         (this.§5!`§ as §[h§).§2!F§.x = 0;
                                                                                                                                                         addr304:
                                                                                                                                                         addr287:
                                                                                                                                                         addr292:
                                                                                                                                                         §§push(this.§5!`§);
                                                                                                                                                         if(_loc2_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push((§§pop() as §[h§).§2!F§);
                                                                                                                                                            if(!(_loc1_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(!(_loc1_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  addr266:
                                                                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr221:
                                                                                                                                                                        §§push(this.§=I§);
                                                                                                                                                                        if(!(_loc1_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr234:
                                                                                                                                                                              this.§=I§.visible = false;
                                                                                                                                                                              addr236:
                                                                                                                                                                              addr232:
                                                                                                                                                                           }
                                                                                                                                                                           this.§6!v§ = null;
                                                                                                                                                                           this.§%^§ = null;
                                                                                                                                                                           addr220:
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§7_§);
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr190:
                                                                                                                                                                                    if(!_loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr194:
                                                                                                                                                                                       this.§7_§.removeEventListener(Event.COMPLETE,this.§#E§);
                                                                                                                                                                                       addr199:
                                                                                                                                                                                       if(_loc2_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§7_§);
                                                                                                                                                                                             if(!(_loc1_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().removeEventListener(Event.CANCEL,this.§6!E§);
                                                                                                                                                                                                addr183:
                                                                                                                                                                                                §§push(this.§`!z§);
                                                                                                                                                                                                if(!_loc1_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr156:
                                                                                                                                                                                                      if(!_loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr160:
                                                                                                                                                                                                         this.§`!z§.removeEventListener(Event.COMPLETE,this.§]!Q§);
                                                                                                                                                                                                         addr165:
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§`!z§);
                                                                                                                                                                                                            if(_loc2_ || _loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().removeEventListener(Event.CANCEL,this.§2!H§);
                                                                                                                                                                                                               addr130:
                                                                                                                                                                                                               this.§5n§();
                                                                                                                                                                                                               addr133:
                                                                                                                                                                                                               addr149:
                                                                                                                                                                                                               §§push(§^!e§.§`?§);
                                                                                                                                                                                                               if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr102:
                                                                                                                                                                                                                     if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr118:
                                                                                                                                                                                                                           §^!e§.§`?§.color = 0;
                                                                                                                                                                                                                           addr120:
                                                                                                                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr54:
                                                                                                                                                                                                                                 §§push(this.§?!T§);
                                                                                                                                                                                                                                 if(!_loc1_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr60:
                                                                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc2_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr78:
                                                                                                                                                                                                                                                this.§?!T§.removeEventListeners();
                                                                                                                                                                                                                                                addr79:
                                                                                                                                                                                                                                                if(!_loc1_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc1_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr24:
                                                                                                                                                                                                                                                         this.mReadyToRun = false;
                                                                                                                                                                                                                                                         if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc2_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc1_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc2_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc1_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr199);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     return;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr156);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr133);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr60);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr79);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr339);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr310);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr190);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr165);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr102);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr120);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr24);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr78);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr304);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr149);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr389:
                                                                                                                                                                                                                        §§goto(addr340);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr236);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr54);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr118);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr160);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr334);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr183);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr130);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr160);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr194);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr220);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr232);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr183);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr194);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr266);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr234);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr339);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr287);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr303);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr292);
                                                                                                                                                         }
                                                                                                                                                         addr289:
                                                                                                                                                         §§goto(addr289);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr221);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr303);
                                                                                                                                                }
                                                                                                                                                §§goto(addr354);
                                                                                                                                             }
                                                                                                                                             addr357:
                                                                                                                                             §§goto(addr357);
                                                                                                                                             addr353:
                                                                                                                                          }
                                                                                                                                          §§push(this.sprite);
                                                                                                                                       }
                                                                                                                                       §§pop().removeChildAt(0,true);
                                                                                                                                       §§goto(addr389);
                                                                                                                                    }
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr417:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§9u§);
                                                                                                                                 addr587:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().dispose();
                                                                                                                                    addr588:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§9u§ = null;
                                                                                                                                       continue loop32;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr585:
                                                                                                                           }
                                                                                                                           addr366:
                                                                                                                           if(!(_loc2_ || this))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr373);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(this.sprite)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§goto(addr366);
                                                                                                                           }
                                                                                                                           §§goto(addr418);
                                                                                                                        }
                                                                                                                        §§goto(addr353);
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  §§goto(addr417);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr486);
                                                                                                         }
                                                                                                         addr456:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr612);
                                                                                                      }
                                                                                                      §§goto(addr587);
                                                                                                   }
                                                                                                }
                                                                                                addr498:
                                                                                             }
                                                                                             §§goto(addr520);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr456);
                                                                              }
                                                                              §§goto(addr495);
                                                                              addr510:
                                                                           }
                                                                        }
                                                                        §§goto(addr517);
                                                                     }
                                                                     §§goto(addr519);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr558:
                                                   }
                                                   §§goto(addr593);
                                                }
                                                continue loop32;
                                             }
                                             §§goto(addr558);
                                          }
                                          §§goto(addr560);
                                       }
                                       §§goto(addr588);
                                    }
                                    §§goto(addr561);
                                 }
                                 §§goto(addr511);
                              }
                              §§goto(addr560);
                              continue loop32;
                           }
                           addr528:
                        }
                        continue loop0;
                     }
                     §§goto(addr611);
                  }
               }
               while(true)
               {
                  §§push(this.§9u§);
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr585);
                     }
                     §§goto(addr528);
                  }
                  §§goto(addr587);
                  §§goto(addr593);
               }
            }
            §§goto(addr611);
         }
         §§goto(addr498);
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §-[§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§%^§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr57);
                  }
               }
               return null;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§%^§.toString();
      }
      
      public function get §+"1§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§]3§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr63);
                  }
               }
               return 1;
            }
            §§goto(addr63);
         }
         addr63:
         return this.§]3§.speed;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.mReadyToRun);
            loop0:
            while(true)
            {
               §§push(!§§pop());
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
                           addr159:
                           while(true)
                           {
                              §§push(§^!e§.§>c§());
                              addr128:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr129:
                                 while(true)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        addr158:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§6!v§);
                              loop6:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   if(_loc3_ && this)
                                                   {
                                                      addr138:
                                                      §§push(0);
                                                      break;
                                                   }
                                                   §§push(this.§6!v§);
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(§§pop().§9"%§);
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr128);
                                                      }
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr69:
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         break loop5;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         break loop8;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr158);
                                          }
                                          §§goto(addr159);
                                       }
                                       while(§§pop())
                                       {
                                          if(!(_loc4_ || param2))
                                          {
                                             break;
                                          }
                                          §§goto(addr69);
                                       }
                                       §§push(this.§^!&§(param1,true,param2));
                                       if(_loc3_ && _loc3_)
                                       {
                                          §§goto(addr97);
                                       }
                                    }
                                    continue loop2;
                                    if(_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    addr139:
                                    return §§pop();
                                 }
                                 §§goto(addr129);
                              }
                           }
                           addr97:
                           return §§pop();
                           §§push(this.§?&§(param1,param2));
                        }
                        §§goto(addr138);
                     }
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      protected function §^!&§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = false;
         if(_loc6_ || param2)
         {
            §§push(this.§]3§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr200:
                     §§push(this.§]3§.update(param1));
                     if(!_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                     }
                     addr205:
                  }
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(§§pop() * this.§]3§.speed);
                        if(!(_loc5_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                        while(true)
                        {
                           param1 = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(§^!e§.§1!P§);
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    while(_loc6_ || param3)
                                    {
                                       §§push(§^!e§.§1!P§);
                                       while(true)
                                       {
                                          §§pop().speed = this.§]3§.speed;
                                          addr164:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    continue loop0;
                                    addr151:
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                this.§]3§ = null;
                                             }
                                             else
                                             {
                                                §§goto(addr151);
                                             }
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop5;
                                             }
                                             if(!(_loc6_ || param2))
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§0!4§);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§0!4§ = §§pop();
                                                addr124:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§3"1§);
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                   §§pop().§3"1§ = §§pop();
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr115);
                                    }
                                 }
                              }
                              §§goto(addr160);
                           }
                        }
                     }
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr200);
         }
         §§goto(addr114);
      }
      
      private function §?&§(param1:Number, param2:Boolean) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         §§push(§4q§.§1""§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            if(this.§6!v§)
            {
               loop17:
               while(true)
               {
                  §§push(param1);
                  loop18:
                  while(true)
                  {
                     §§push(this.§6!v§.speed);
                     loop19:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        loop20:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop21:
                           while(true)
                           {
                              param1 = §§pop();
                              while(true)
                              {
                                 §§push(this.§0!4§);
                                 if(!(_loc6_ && this))
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          §§push(param1);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc5_ || param2)
                                             {
                                                addr275:
                                                if(_loc6_)
                                                {
                                                   continue loop21;
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop19;
                                       }
                                       continue loop18;
                                    }
                                    continue loop20;
                                 }
                                 §§goto(addr275);
                              }
                              continue loop17;
                           }
                        }
                     }
                  }
               }
               addr302:
            }
            else
            {
               §§push(param1);
               if(!(_loc6_ && param2))
               {
                  if(_loc5_)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc5_ || param2)
                        {
                           if(!_loc6_)
                           {
                              return §§pop();
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr96);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr302);
      }
      
      private function §0!&§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc4_ && _loc3_))
         {
            this.§3"C§.update(param1);
            loop0:
            while(true)
            {
               this.§9u§.renderObjects(param1,this.mLevelEngine.§4z§,this.§3"1§);
               loop1:
               while(true)
               {
                  this.§9g§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§#d§);
                     loop3:
                     while(true)
                     {
                        §§push(§4#§.§`"%§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§=I§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(_loc5_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          continue loop2;
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§push(this.§"!2§);
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(this.§"!2§);
                                                         addr92:
                                                         addr275:
                                                         while(true)
                                                         {
                                                            if(!§§pop().§`!r§(this.§+%§,param1))
                                                            {
                                                               addr106:
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.§&c§(false);
                                                               }
                                                               while(true)
                                                               {
                                                               }
                                                               addr106:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§4#§.§`"%§);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / 2);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  loop9:
                                                                  while(!_loc4_)
                                                                  {
                                                                     §§push(-Math.abs(this.§#d§ - _loc2_));
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        if(!(_loc5_ || this))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(_loc2_);
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           addr246:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        else
                                                                        {
                                                                           addr234:
                                                                           if(_loc4_ && param1)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§push(§§pop() * (§§pop() / _loc2_));
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr246);
                                                                           }
                                                                        }
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§=I§);
                                                                        addr168:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§=I§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().alpha = _loc3_;
                                                                                    addr177:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop1;
                                                                              addr169:
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                         addr69:
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  this.mLevelEngine.§+0§();
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc5_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr106);
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               break;
                                                            }
                                                            continue loop14;
                                                         }
                                                         §§goto(addr169);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§+%§.§4!d§(param1);
                                                      §§goto(addr69);
                                                      §§goto(addr106);
                                                   }
                                                }
                                                §§goto(addr92);
                                             }
                                             return;
                                             addr79:
                                             addr47:
                                          }
                                          else
                                          {
                                             addr267:
                                          }
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§#d§);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() + param1);
                                             }
                                             §§pop().§#d§ = §§pop();
                                          }
                                          §§goto(addr275);
                                       }
                                       addr157:
                                    }
                                    §§goto(addr79);
                                 }
                                 §§goto(addr175);
                              }
                              else
                              {
                                 addr143:
                                 if(!_loc4_)
                                 {
                                    §§pop().visible = false;
                                    §§goto(addr157);
                                 }
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr267);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §?"B§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.objects.updateObjects(param1);
         }
         do
         {
            this.§%A§();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      protected function §9g§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§1!0§ = null;
         if(!(_loc4_ && this))
         {
            if(this.§8"B§ != null)
            {
               addr41:
               for each(_loc1_ in this.§8"B§)
               {
                  if(_loc5_)
                  {
                     if(_loc1_.isLeavingTrail)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
                  this.§0!,§(_loc1_);
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§50§ = null;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc4_)
            {
               §§goto(addr37);
            }
            §§goto(addr57);
         }
         addr37:
         §§push(this.mPigsAnimationTimer1);
         if(!(_loc3_ && param1))
         {
            §§push(0);
            if(_loc4_)
            {
               if(§§pop() <= §§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     addr57:
                     §§push(this.§9u§);
                     if(_loc4_)
                     {
                        §§push(true);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop().§&6§(§§pop()));
                           if(_loc4_ || _loc2_)
                           {
                              _loc2_ = §§pop();
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       _loc2_.scream();
                                       if(_loc4_ || param1)
                                       {
                                       }
                                       addr132:
                                       §§push(this);
                                       §§push(this.mPigsAnimationTimer2);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().mPigsAnimationTimer2 = §§pop();
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§goto(addr155);
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                                 §§goto(addr132);
                              }
                              §§push(this);
                              §§push(500 + Math.random() * 1000);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + 4000 / (3 + this.§9u§.§-"8§()));
                              }
                              §§pop().mPigsAnimationTimer1 = §§pop();
                              §§goto(addr132);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr160);
               }
               §§goto(addr132);
            }
            §§goto(addr155);
         }
         addr155:
         if(this.mPigsAnimationTimer2 <= 0)
         {
            addr160:
            _loc2_ = this.§9u§.§&6§(true);
            addr156:
            addr159:
            addr158:
            if(!(_loc3_ && _loc3_))
            {
               if(_loc2_)
               {
                  if(!_loc3_)
                  {
                     _loc2_.blink();
                     if(!_loc4_)
                     {
                     }
                  }
               }
               §§goto(addr205);
            }
            §§push(this);
            §§push(250 + Math.random() * 500);
            if(_loc4_)
            {
               §§push(§§pop() + 2000 / (3 + this.§9u§.§-"8§()));
            }
            §§pop().mPigsAnimationTimer2 = §§pop();
         }
         addr205:
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            §§push(param6);
            while(true)
            {
               §§push(-9999);
               addr172:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§2!V§.§["8§);
                        addr175:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr176:
                           while(true)
                           {
                              param6 = §§pop();
                              addr177:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr173:
                  }
                  addr154:
                  while(true)
                  {
                     §!!t§.addScore(param1,param2);
                  }
               }
            }
            addr171:
         }
         loop7:
         while(true)
         {
            this.§?!T§.addScore(param1);
            loop8:
            while(true)
            {
               §§push(param3);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     §§push(§§pop());
                     loop11:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop13:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc8_)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(0);
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() > §§pop());
                                             while(true)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(_loc8_ || this)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               loop17:
                                                               while(_loc8_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     §§push(this.§;3§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                     addr140:
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     addr128:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop17;
                                                                        §§goto(addr140);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr173);
                                                                  }
                                                               }
                                                               continue loop13;
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            this.§=!G§(param1.toString(),param4,param5,800,param6,0,0);
                                                         }
                                                         if(_loc8_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      return;
                                                      addr65:
                                                   }
                                                   §§goto(addr128);
                                                }
                                                continue loop11;
                                             }
                                             addr123:
                                          }
                                          else
                                          {
                                             §§goto(addr172);
                                          }
                                          §§goto(addr154);
                                       }
                                       else
                                       {
                                          §§goto(addr171);
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                                 break;
                              }
                              §§goto(addr176);
                           }
                        }
                        §§goto(addr123);
                     }
                  }
               }
            }
         }
      }
      
      public function §=!G§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §§push(param5);
            if(_loc8_)
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§2!V§.§#!J§);
                     if(_loc8_)
                     {
                        while(true)
                        {
                           §§push(int(§§pop()));
                        }
                        addr79:
                     }
                     while(true)
                     {
                        param5 = §§pop();
                        while(true)
                        {
                           §§goto(addr23);
                        }
                     }
                  }
               }
               addr23:
               §§goto(addr59);
            }
            §§goto(addr79);
         }
         addr59:
         while(true)
         {
            this.§?S§.§%!y§(§2!V§.§[r§,§0"@§.§5"#§,§2!V§.§@x§,param2,param3,param4,param1,param5,param6,param7);
            if(_loc8_ || param3)
            {
               if(_loc8_)
               {
                  break;
               }
               continue loop0;
            }
            continue loop1;
         }
      }
      
      public function §^!#§(param1:§<!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§8"B§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§8"B§ = new Array();
                  }
                  addr75:
               }
               while(true)
               {
                  continue loop0;
                  addr44:
                  §§pop().push(param1);
                  if(!(_loc2_ && this))
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §'b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-!t§.§'b§();
            while(true)
            {
               this.§9u§.§19§();
               while(!_loc2_)
               {
                  this.§;3§ = true;
                  if(!_loc2_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §0!,§(param1:§1!0§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§?S§.§+@§(§0"@§.§!![§);
            loop0:
            while(true)
            {
               §§push(this.§8"B§);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        continue loop0;
                     }
                     addr101:
                     while(true)
                     {
                     }
                     addr101:
                  }
                  while(true)
                  {
                     §§push(this.§8"B§);
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           if(§§pop().length == 0)
                           {
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    this.§8"B§ = null;
                                 }
                                 else
                                 {
                                    §§goto(addr101);
                                 }
                              }
                              break;
                           }
                           break;
                        }
                        continue loop1;
                     }
                     addr85:
                     while(true)
                     {
                        §§pop().splice(this.§8"B§.indexOf(param1),1);
                     }
                     §§goto(addr101);
                  }
                  return;
               }
            }
         }
         while(true)
         {
            §§goto(addr85);
         }
      }
      
      public function §3!<§(param1:§-T§, param2:Number, param3:Number) : § 6§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§ 6§ = § 6§(this.§9u§.addObject(param1.name,param1.x,param1.y,0,§-%§.§;!J§,true,true,true,param1.scale));
         §§push(param1.§`!$§);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc9_)
         {
            §§push(param1.§ !K§);
            if(_loc9_ || param3)
            {
               §§push(1);
               if(!(_loc8_ && this))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        _loc4_.§&!f§(param1.§ !K§);
                        if(_loc9_ || this)
                        {
                           addr82:
                           §§push(param1.§@!Y§);
                           if(_loc9_ || param2)
                           {
                              addr92:
                              if(§§pop() != 0)
                              {
                                 if(_loc9_ || param3)
                                 {
                                    addr100:
                                    §§push(param1.§@!Y§);
                                    if(!(_loc8_ && param2))
                                    {
                                       addr109:
                                       §§push(Number(§§pop()));
                                       if(!_loc8_)
                                       {
                                          _loc5_ = §§pop();
                                          addr113:
                                          §§push(_loc5_);
                                          if(!_loc8_)
                                          {
                                             §§push(-§§pop());
                                             if(!_loc9_)
                                             {
                                             }
                                             addr150:
                                             var _loc6_:Number = §§pop();
                                             §§push(_loc5_);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() * param2);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                   if(_loc9_ || param3)
                                                   {
                                                      addr174:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   if(_loc9_ || this)
                                                   {
                                                      _loc4_.§=9§(new b2Vec2(_loc6_,_loc7_),false,true);
                                                      while(true)
                                                      {
                                                         this.camera.§^!P§(§9!,§.§&!u§);
                                                         while(_loc9_)
                                                         {
                                                            if(_loc9_ || param3)
                                                            {
                                                               addr211:
                                                               this.§%^§.§3!<§(this.mLevelEngine.§`!8§,param1.x,param1.y,param2,param3);
                                                               addr184:
                                                               return _loc4_;
                                                               addr221:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§%^§);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§goto(addr202);
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr211);
                                                }
                                             }
                                             §§goto(addr174);
                                          }
                                          §§push(§§pop() * param2);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                             if(_loc9_ || param2)
                                             {
                                             }
                                             §§goto(addr150);
                                          }
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr82);
               }
               §§goto(addr92);
            }
            §§goto(addr150);
         }
         §§goto(addr100);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&^§ = true;
            while(true)
            {
               this.§'H§ = param1;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§@"E§ = param2;
            if(_loc4_ || this)
            {
               if(_loc4_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §%A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§&^§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr126:
               }
               while(true)
               {
                  this.§&^§ = false;
                  while(true)
                  {
                     §§push(this.§9u§);
                     if(!(_loc2_ || _loc2_))
                     {
                        break;
                     }
                     continue loop0;
                     addr83:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        addr92:
                        §§push(this.§9u§);
                        break;
                     }
                     §§goto(addr126);
                  }
                  §§pop().activateSpecialPower(this.§'H§,this.§@"E§);
                  addr99:
                  while(true)
                  {
                     addr24:
                     §§push(this.§%^§);
                     if(!(_loc1_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 §§push(this.§%^§);
                                 break;
                              }
                              continue;
                           }
                           addr49:
                        }
                        return;
                     }
                     break;
                  }
                  §§pop().§;L§(this.mLevelEngine.§`!8§,this.§'H§,this.§@"E§);
                  §§goto(addr49);
               }
            }
            return;
         }
         §§goto(addr92);
      }
      
      public function §[Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§9u§.§[Q§();
         }
      }
      
      public function §<!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§9u§.§'e§();
         }
      }
      
      public function getCurrentLevelData() : §#b§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§#b§ = new §#b§();
         if(!_loc3_)
         {
            _loc1_.scoreGold = this.§^`§.scoreGold;
            while(true)
            {
               _loc1_.scoreSilver = this.§^`§.scoreSilver;
            }
            addr100:
         }
         loop1:
         while(true)
         {
            this.§+%§.writeCameraInformation(_loc1_);
            while(true)
            {
               this.§9u§.writeObjectInformation(_loc1_);
               while(!_loc3_)
               {
                  this.§-!t§.writeSlingshotInformation(_loc1_);
                  while(!(_loc3_ && _loc2_))
                  {
                     _loc1_.theme = this.§3"C§.getCurrentThemeName();
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                     if(_loc2_)
                     {
                        break loop1;
                     }
                     §§goto(addr100);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §[[§() : int
      {
         return this.§^`§.scoreSilver;
      }
      
      public function §;@§() : int
      {
         return this.§^`§.scoreGold;
      }
      
      public function §;"C§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^`§.scoreSilver = param1;
         }
      }
      
      public function §<";§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§^`§.scoreGold = param1;
         }
      }
      
      public function §!q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§ "4§ = param1;
            loop0:
            while(true)
            {
               addr115:
               this.§]"%§ = param2;
               while(true)
               {
                  this.§?!x§ = param3;
                  while(!_loc6_)
                  {
                     addr50:
                     if(!_loc5_)
                     {
                        continue;
                     }
                     addr64:
                     this.§+%§.§4!d§(0);
                     addr66:
                     if(!(_loc5_ || param2))
                     {
                        loop8:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(this.§+%§);
                                 if(_loc5_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          addr36:
                                          if(_loc5_ || param2)
                                          {
                                             addr43:
                                             if(!(_loc5_ || this))
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§[!Z§);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§[!Z§);
                                                         §§goto(addr36);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§&w§(param1,param2);
                                                      continue loop8;
                                                   }
                                                   §§goto(addr43);
                                                }
                                                addr19:
                                                return;
                                                addr97:
                                             }
                                             §§goto(addr50);
                                             §§goto(addr19);
                                          }
                                          §§goto(addr85);
                                       }
                                       §§goto(addr66);
                                    }
                                    §§goto(addr19);
                                 }
                                 §§goto(addr64);
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr19);
                  }
               }
            }
         }
         while(true)
         {
            this.§,!Q§ = param4;
            §§goto(addr97);
         }
      }
      
      public function get currentLevel() : §#b§
      {
         return this.§^`§;
      }
      
      public function get levelObjects() : §-%§
      {
         return this.§9u§;
      }
      
      protected function get §%z§() : §^!e§
      {
         return this.§^B§;
      }
      
      public function get §+r§() : int
      {
         return §?!?§;
      }
   }
}
