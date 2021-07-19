package §^#>§
{
   import § !w§.§0p§;
   import § #§.§&!>§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §"a§.§?#&§;
   import §&#H§.§3#J§;
   import §-!_§.§,#Q§;
   import §1!i§.§,#_§;
   import §1!i§.§;7§;
   import §2"Y§.§,§;
   import §2d§.§3!R§;
   import §2d§.§;H§;
   import §5"i§.b2Settings;
   import §5t§.Log;
   import §69§.§!!u§;
   import §69§.§4!e§;
   import §7!F§.§1x§;
   import §7!F§.§7§;
   import §7!F§.§`y§;
   import §7P§.§&#=§;
   import §7P§.§7B§;
   import §7P§.§;=§;
   import §7P§.§<!2§;
   import §7P§.§?"N§;
   import §9#@§.§ "V§;
   import §<"B§.§94§;
   import §<w§.§^!q§;
   import §?m§.§+"2§;
   import §?m§.§0!§;
   import §?m§.§8!B§;
   import §[R§.b2Vec2;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import com.angrybirds.§,!q§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#_§
   {
      
      private static const §9Y§:int = 20;
      
      public static const §]#Q§:Number;
      
      public static const §@#!§:Number;
      
      public static const §8]§:Number = 0.05;
      
      public static const §45§:Number;
      
      public static const §]!1§:Number;
      
      public static const §,#7§:§;7§;
      
      protected static var §>#7§:String;
      
      protected static var §4"=§:Number = 1.0;
      
      protected static var §%J§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9Y§ = 20;
            loop0:
            while(true)
            {
               §]#Q§ = §,!q§.§%N§;
               addr140:
               while(true)
               {
                  §@#!§ = §,!q§.§>#O§;
                  loop2:
                  while(true)
                  {
                     §8]§ = 1 / 20;
                     while(true)
                     {
                        §45§ = §,!q§.§>#O§ * §8]§;
                        continue loop0;
                        addr45:
                        if(!(_loc1_ && _loc2_))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §,#7§ = new §;7§(13 - 3);
            while(!_loc1_)
            {
               §4"=§ = 1;
               do
               {
                  §%J§ = §8!B§.§7#M§;
               }
               while(!_loc2_);
               
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr38);
            }
            §§goto(addr104);
         }
         §§goto(addr59);
      }
      
      protected var §%H§:§;=§;
      
      private var §7!J§:Array = null;
      
      protected var §1!C§:§ "V§;
      
      public var mLevelEngine:§^P§;
      
      protected var §1j§:§2-§;
      
      protected var §#b§:§,#Q§;
      
      protected var §[!s§:§;x§;
      
      protected var §2!d§:§,!w§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §;!F§:Boolean = false;
      
      protected var §""f§:Boolean = false;
      
      protected var §=",§:Boolean = false;
      
      public var §]#U§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §@!B§:Number;
      
      public var §9""§:Number;
      
      private var §^K§:§2"Z§;
      
      private var §9!z§:Sprite;
      
      protected var §@!F§:§8!B§;
      
      protected var §@!P§:§?#&§ = null;
      
      private var §[4§:EventDispatcher;
      
      private var §8!K§:Array;
      
      private var §["0§:§3#J§;
      
      private var §5W§:§3!R§;
      
      protected var §6V§:§7#5§;
      
      protected var §+"4§:§`y§;
      
      private var §6I§:§1x§;
      
      private var §?<§:§1x§;
      
      private var §22§:§1x§;
      
      private var § "u§:Stage;
      
      private var §5#K§:§40§;
      
      protected var §5!;§:§0p§;
      
      protected var §;#3§:§0p§;
      
      protected var §0!"§:Number = 0.0;
      
      protected var §[a§:String;
      
      private var §6P§:Boolean;
      
      private var §-z§:Number;
      
      private var §%!i§:Number;
      
      protected var §4<§:§ !r§;
      
      protected var §?4§:§2"Y§.§,#5§;
      
      protected var §?"1§:§!!u§;
      
      protected var §+!b§:§+"2§;
      
      protected var §"#!§:uint = 1.417339207E9;
      
      public var §]9§:Boolean;
      
      private var §,"M§:Boolean = true;
      
      protected var §2!i§:int = 0;
      
      protected var §;!r§:int = 0;
      
      protected var §0"`§:Number = 1.0;
      
      protected var §]"!§:Number = 1.0;
      
      protected var §-!+§:Boolean;
      
      private var §6@§:§,#_§;
      
      public function §#_§(param1:Stage, param2:§2"Y§.§,#5§, param3:§!!u§, param4:§+"2§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.§8!K§ = [];
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§[4§ = new EventDispatcher();
                  addr157:
                  while(true)
                  {
                     this.§ "u§ = param1;
                     continue loop1;
                  }
               }
               if(!(_loc6_ || param2))
               {
                  continue;
               }
               this.§?"1§ = param3;
               §§goto(addr120);
            }
         }
         §§goto(addr97);
      }
      
      public static function §!!y§(param1:§7B§, param2:§7B§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§&!d§);
         if(!_loc6_)
         {
            §§push(§§pop() - param2.§&!d§);
            if(_loc5_ || param2)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§var§);
            if(_loc5_)
            {
               §§push(§§pop() - param2.§var§);
               if(_loc5_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §!#"§(_loc3_,_loc4_);
         }
         §§goto(addr40);
      }
      
      public static function §!#"§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§9!z§);
            while(true)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr84:
                        while(true)
                        {
                           §§push(Boolean(this.§!h§));
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr83:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr84))
                  {
                     if(_loc2_)
                     {
                        if(_loc1_ && this)
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§9!z§ = this.§^K§.§2"E§;
                        }
                     }
                     while(true)
                     {
                        break loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr83);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public function get §!h§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§^K§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§^K§);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
                  addr25:
               }
               if(!_loc1_)
               {
                  while(true)
                  {
                     this.§^K§ = this.§["0§.§8"B§ as §2"Z§;
                  }
                  addr73:
               }
               while(true)
               {
                  §§push(this.§^K§);
                  continue loop0;
               }
            }
         }
         §§goto(addr73);
      }
      
      private function get §>D§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§!h§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr58);
                  }
               }
               return null;
            }
            §§goto(addr58);
         }
         addr58:
         return (this.§!h§ as §2"Z§).§>D§;
      }
      
      public function get animationManager() : §`y§
      {
         return this.§+"4§;
      }
      
      public function get textureManager() : §7#5§
      {
         return this.§6V§;
      }
      
      public function get camera() : §,#Q§
      {
         return this.§#b§;
      }
      
      public function get objects() : §;=§
      {
         return this.§%H§;
      }
      
      public function get particles() : §,!w§
      {
         return this.§2!d§;
      }
      
      public function get background() : § "V§
      {
         return this.§1!C§;
      }
      
      public function get slingshot() : §;x§
      {
         return this.§[!s§;
      }
      
      public function get §""?§() : §2-§
      {
         return this.§1j§;
      }
      
      public function get stage() : Stage
      {
         return this.§ "u§;
      }
      
      public function get levelItemManager() : §2"Y§.§,#5§
      {
         return this.§?4§;
      }
      
      public function get § =§() : §1x§
      {
         return this.§22§;
      }
      
      protected function get §;!@§() : §1x§
      {
         return this.§6I§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§4<§ = new § !r§(param1,param2,param3,param4);
         }
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §#_§.§,#7§.getValue();
      }
      
      public function get §9W§() : Boolean
      {
         return this.§,"M§;
      }
      
      public function set §9W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,"M§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§5W§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§5W§);
                     addr235:
                     while(true)
                     {
                        §§pop().dispose();
                        addr236:
                        while(true)
                        {
                        }
                     }
                  }
                  addr233:
               }
               loop1:
               while(true)
               {
                  §§push(this.§6V§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§6V§);
                           addr203:
                           loop4:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.INIT,this.§>!8§);
                              addr208:
                              while(!(_loc2_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    §§push(this.§6V§);
                                    if(!_loc1_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc2_ && this)
                                    {
                                       continue loop2;
                                    }
                                    §§pop().dispose();
                                    while(true)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr233);
                                 }
                              }
                              continue loop1;
                           }
                        }
                        addr201:
                     }
                     loop7:
                     while(true)
                     {
                        §§push(this.§6I§);
                        loop8:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              loop10:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr180:
                                       while(_loc1_)
                                       {
                                          §§push(this.§6I§);
                                          if(_loc2_)
                                          {
                                             continue loop8;
                                          }
                                          §§push(Boolean(§§pop().textureManager));
                                       }
                                       continue loop7;
                                    }
                                    addr179:
                                 }
                                 while(true)
                                 {
                                    loop24:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             §§push(this.§22§);
                                             loop16:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc2_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop18:
                                                      while(!(_loc2_ && this))
                                                      {
                                                         §§pop();
                                                         loop28:
                                                         while(true)
                                                         {
                                                            §§push(this.§22§);
                                                            if(_loc1_)
                                                            {
                                                               if(_loc2_ && _loc1_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               §§push(Boolean(§§pop().textureManager));
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               if(!(_loc1_ || _loc2_))
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(!(_loc1_ || _loc2_))
                                                               {
                                                                  continue loop24;
                                                               }
                                                               addr93:
                                                               if(_loc2_ && this)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           §§push(this.§22§);
                                                                           while(true)
                                                                           {
                                                                              §§pop().textureManager.dispose();
                                                                              addr125:
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§["0§);
                                                                                       if(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   addr50:
                                                                                                   this.§["0§.dispose();
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr180);
                                                                                                }
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             addr53:
                                                                                             if(!(_loc2_ && this))
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr208);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                   §§goto(addr53);
                                                                                                }
                                                                                                addr172:
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr50);
                                                                                    }
                                                                                    return;
                                                                                    addr28:
                                                                                 }
                                                                                 continue loop28;
                                                                              }
                                                                              continue loop28;
                                                                           }
                                                                           addr123:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 addr161:
                                                                                 §§push(this.§6I§);
                                                                                 continue loop8;
                                                                              }
                                                                              §§goto(addr201);
                                                                           }
                                                                           addr159:
                                                                        }
                                                                        §§goto(addr203);
                                                                     }
                                                                     §§goto(addr125);
                                                                  }
                                                                  §§goto(addr28);
                                                                  §§goto(addr93);
                                                               }
                                                            }
                                                            §§goto(addr123);
                                                         }
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr100);
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                       §§goto(addr159);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr235);
         }
         §§goto(addr149);
      }
      
      protected function initThemeGraphicsManager() : §1x§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§1x§));
         if(_loc2_)
         {
            §§push(this.§ "u§.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr82);
                  }
                  §§push(this.§ "u§.loaderInfo.parameters.buildNumber);
                  if(!(_loc1_ && _loc2_))
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
            if(!_loc1_)
            {
               §§pop();
               addr55:
               §§push("");
            }
            return new §§pop().§1x§(§§pop(),"",this.§+!b§);
         }
         §§goto(addr55);
      }
      
      protected function initThemeSoundsManager() : §1x§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§1x§));
         if(_loc1_ || _loc2_)
         {
            §§push(this.§ "u§.loaderInfo.parameters.assetsUrl);
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr81);
                  }
                  §§push(this.§ "u§.loaderInfo.parameters.buildNumber);
                  if(_loc1_)
                  {
                     §§goto(addr78);
                  }
                  §§goto(addr80);
               }
               addr78:
               if(!§§pop())
               {
                  addr80:
                  §§pop();
               }
               §§goto(addr81);
            }
            addr81:
            if(_loc1_ || _loc1_)
            {
               §§pop();
               addr59:
               §§push("");
            }
            return new §§pop().§1x§(§§pop(),"",this.§+!b§,false);
         }
         §§goto(addr59);
      }
      
      protected function initCutSceneManager() : §1x§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§1x§));
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§ "u§.loaderInfo.parameters.assetsUrl);
            if(_loc2_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        addr49:
                        §§pop();
                        addr51:
                        §§push("");
                        §§push(this.§ "u§.loaderInfo.parameters.buildNumber);
                        if(_loc2_ || this)
                        {
                           return new §§pop().§1x§(§§pop(),§§pop() || "",this.§+!b§);
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr51);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr49);
      }
      
      protected function §^"v§(param1:§7#5§) : §`y§
      {
         return new §`y§(param1);
      }
      
      public function §]"J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§3#J§.§2!C§);
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(!param1)
                  {
                     §§push(§3#J§.§2!C§);
                     loop2:
                     while(true)
                     {
                        §§pop().stop();
                        addr71:
                        while(_loc3_ || _loc3_)
                        {
                           if(_loc2_)
                           {
                              break loop1;
                           }
                           continue loop2;
                        }
                        addr99:
                     }
                  }
                  addr96:
                  §§goto(addr98);
                  §§push(§3#J§.§2!C§);
                  addr94:
               }
               addr20:
               return;
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§pop().color = 0;
               if(_loc3_)
               {
                  if(_loc2_ && _loc3_)
                  {
                     §§goto(addr94);
                  }
                  §§goto(addr20);
               }
               §§goto(addr71);
            }
         }
         §§goto(addr96);
      }
      
      public function §--§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.sprite);
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
               }
               §§goto(addr54);
            }
            §§pop().visible = param1;
         }
         addr54:
         if(_loc2_)
         {
            §§push(this.sprite);
         }
      }
      
      public function §3!Q§(param1:§?#&§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§@!P§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§@!P§);
                     while(true)
                     {
                        §§pop().removeEventListeners();
                     }
                     addr105:
                  }
                  while(true)
                  {
                  }
                  addr106:
               }
               while(true)
               {
                  this.§@!P§ = param1;
                  loop2:
                  for(; _loc3_ || param1; if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr25))
                  {
                     while(this.mReadyToRun)
                     {
                        if(!(_loc3_ || _loc2_))
                        {
                           continue loop2;
                        }
                        §§push(this.§@!P§);
                        if(_loc3_ || param1)
                        {
                           §§pop().addEventListeners();
                           continue loop2;
                        }
                     }
                     return;
                  }
                  §§goto(addr106);
               }
            }
            §§goto(addr105);
         }
         §§goto(addr79);
      }
      
      public function §##'§() : §0p§
      {
         return this.§5!;§;
      }
      
      protected function getSpriteSheetGroup(param1:§;H§) : int
      {
         return 0;
      }
      
      public function §[#Z§(param1:§3!R§, param2:Function) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:§;H§ = null;
         var _loc6_:* = 0;
         if(!(_loc8_ && param2))
         {
            this.§5W§ = param1;
         }
         §§push(this.§5W§.§^"A§);
         if(!_loc8_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§5W§.§"#B§(_loc4_);
            if(_loc7_ || param2)
            {
               §§push(this.getSpriteSheetGroup(_loc5_));
               if(!_loc8_)
               {
                  §§push(int(§§pop()));
               }
               _loc6_ = §§pop();
               loop1:
               while(true)
               {
                  addr62:
                  while(true)
                  {
                     this.§6V§.§5j§(_loc5_,_loc6_);
                     continue loop1;
                  }
               }
            }
            while(true)
            {
               _loc4_++;
               if(_loc7_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr62);
               }
               §§goto(addr68);
            }
         }
         if(!(_loc8_ && param2))
         {
            if(param2 != null)
            {
               if(!_loc8_)
               {
                  this.§[4§.addEventListener(Event.INIT,param2);
                  if(_loc7_)
                  {
                     this.§8!K§.push(param2);
                     while(true)
                     {
                        §§goto(addr123);
                     }
                     addr117:
                  }
               }
               §§goto(addr152);
            }
            addr123:
            while(this.§2!X§())
            {
               if(_loc7_ || _loc3_)
               {
                  if(_loc7_ || _loc3_)
                  {
                     this.§?0§();
                     addr152:
                     break;
                  }
                  continue loop6;
               }
               §§goto(addr152);
            }
            return;
         }
         §§goto(addr117);
      }
      
      private function §2!X§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6V§);
            while(true)
            {
               §§pop().removeEventListener(Event.INIT,this.§>!8§);
               while(true)
               {
                  §§push(this.§6V§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().initializeTextures());
                     addr93:
                     while(true)
                     {
                        if(§§pop())
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  if(!(_loc1_ && this))
                  {
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     this.§0!8§();
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr42);
      }
      
      private function §>!8§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6V§.removeEventListener(Event.INIT,this.§>!8§);
            while(true)
            {
               this.§0!8§();
               while(true)
               {
                  this.§-!+§ = false;
                  §§goto(addr58);
               }
            }
         }
         addr58:
         while(true)
         {
            this.§?0§();
            if(_loc3_ || _loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      protected function §0!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§+"4§.§0!8§();
            do
            {
               this.§?4§.initAnimations();
            }
            while(!_loc1_);
            
         }
      }
      
      private function §%!b§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§3#J§.§;[§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§6V§.reInitializeTextures();
                     loop2:
                     while(true)
                     {
                        §§push(this.§;!@§);
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
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
                                          §§push(this.§;!@§);
                                          if(_loc3_ || this)
                                          {
                                             §§push(Boolean(§§pop().textureManager));
                                             while(true)
                                             {
                                                loop39:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop40:
                                                      while(true)
                                                      {
                                                         §§push(this.§;!@§);
                                                         addr280:
                                                         while(!_loc2_)
                                                         {
                                                            §§pop().textureManager.reInitializeTextures();
                                                            while(true)
                                                            {
                                                               loop33:
                                                               while(_loc3_ || param1)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(this.§6I§);
                                                                  loop35:
                                                                  while(true)
                                                                  {
                                                                     §§pop().initializeTextures();
                                                                     loop36:
                                                                     while(!_loc2_)
                                                                     {
                                                                        addr91:
                                                                        loop34:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§22§);
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop33;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(this.§22§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr45:
                                                                                          if(§§pop().textureManager)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr53:
                                                                                                   this.§22§.initializeTextures();
                                                                                                   addr54:
                                                                                                   if(_loc2_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop36;
                                                                                                   }
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            this.§?0§();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§@!P§);
                                                                                                                  loop25:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == null);
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           §§push(!§§pop());
                                                                                                                           loop26:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             loop27:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr191:
                                                                                                                                                loop28:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.mReadyToRun);
                                                                                                                                                   if(_loc2_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ || param1)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr263:
                                                                                                                                                               loop30:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§@!P§);
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().addEventListeners();
                                                                                                                                                                        break loop36;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop25;
                                                                                                                                                                  }
                                                                                                                                                                  addr203:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§2!X§());
                                                                                                                                                                     addr205:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop22;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop24;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop30;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               loop41:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§ =§);
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop().textureManager));
                                                                                                                                                                     while(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           continue loop41;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(this.§ =§);
                                                                                                                                                                                 while(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().textureManager.reInitializeTextures();
                                                                                                                                                                                    while(_loc3_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    return;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    break loop25;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr241);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§-!+§);
                                                                                                                                                                              break loop28;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop1;
                                                                                                                                                                        addr224:
                                                                                                                                                                     }
                                                                                                                                                                     continue loop39;
                                                                                                                                                                     addr220:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr237);
                                                                                                                                                               }
                                                                                                                                                               addr121:
                                                                                                                                                               addr263:
                                                                                                                                                            }
                                                                                                                                                            addr71:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§6I§);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop34;
                                                                                                                                                               }
                                                                                                                                                               continue loop35;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr119:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr112:
                                                                                                                                                   }
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                while(!(_loc2_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr203);
                                                                                                                                                   §§goto(addr112);
                                                                                                                                                }
                                                                                                                                                §§goto(addr220);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr119);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              §§goto(addr205);
                                                                                                                           }
                                                                                                                           while(_loc3_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr262);
                                                                                                                              }
                                                                                                                              §§goto(addr224);
                                                                                                                           }
                                                                                                                           continue loop5;
                                                                                                                           addr175:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr175);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr254);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr241);
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   §§goto(addr212);
                                                                                                }
                                                                                                §§goto(addr121);
                                                                                             }
                                                                                             §§goto(addr54);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr53);
                                                                                    }
                                                                                    §§goto(addr191);
                                                                                 }
                                                                                 §§goto(addr53);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr45);
                                                                        }
                                                                        return;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           if(_loc2_ && this)
                                                                           {
                                                                              continue loop40;
                                                                           }
                                                                           §§goto(addr71);
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop40;
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr252);
                                                   }
                                                }
                                             }
                                             addr276:
                                          }
                                          §§goto(addr280);
                                       }
                                    }
                                 }
                                 §§goto(addr276);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr311);
            }
         }
         §§goto(addr263);
      }
      
      private function §?0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§[4§.dispatchEvent(new Event(Event.INIT));
         }
         do
         {
            this.§&i§();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private function §&i§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§8!K§)
         {
            if(_loc5_)
            {
               this.§[4§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(_loc5_)
         {
            this.§8!K§ = [];
         }
      }
      
      public function init(param1:§8!B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                     addr286:
                     while(true)
                     {
                     }
                  }
                  addr284:
               }
               while(true)
               {
                  this.§1j§ = new §2-§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§#b§ = this.§'!W§(param1);
                     loop5:
                     while(true)
                     {
                        this.§@!B§ = 0;
                        while(_loc3_)
                        {
                           this.§9""§ = 0;
                           while(true)
                           {
                              addr239:
                              addr243:
                              this.§6P§ = false;
                              while(true)
                              {
                                 this.mReadyToRun = false;
                                 addr236:
                                 while(_loc3_)
                                 {
                                    this.§;!F§ = false;
                                    continue loop5;
                                 }
                                 continue loop4;
                              }
                           }
                           for(; !(_loc2_ && _loc3_); loop13:
                           while(!(_loc2_ && param1))
                           {
                              §%J§ = param1.theme;
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§@!F§ = param1;
                                    loop16:
                                    while(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§""f§ = this.§!l§(param1.theme);
                                             loop17:
                                             while(true)
                                             {
                                                this.§=",§ = this.§7J§(param1.theme);
                                                while(true)
                                                {
                                                   §§push(this.§""f§);
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc3_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  this.loadTheme(param1.theme);
                                                                  continue loop17;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.initialize(param1);
                                                               }
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§3!g§(param1.name);
                                                                     addr39:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     addr79:
                                                                     §§goto(addr248);
                                                                  }
                                                               }
                                                               addr143:
                                                               §§push(this.§=",§);
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               addr125:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop13;
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        §§goto(addr143);
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr125);
                                                                  §§goto(addr143);
                                                               }
                                                               addr125:
                                                            }
                                                            continue loop16;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr125);
                                                }
                                             }
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr236);
                                    }
                                    addr219:
                                    while(true)
                                    {
                                       this.mPigsAnimationTimer2 = 1000;
                                       break loop13;
                                    }
                                 }
                              }
                              continue loop5;
                           })
                           {
                              §§push(param1);
                              if(!_loc2_)
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
                              §§goto(addr192);
                           }
                        }
                        §§goto(addr286);
                     }
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      protected function §3!g§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!;§ = new §0p§(param1);
         }
      }
      
      protected function §!l§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§6I§)
            {
               if(!_loc2_)
               {
                  addr49:
                  §§push(false);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      protected function §7J§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!e§ = null;
         if(!_loc3_)
         {
            if(this.§?<§)
            {
               addr25:
               _loc2_ = this.§?"1§.getBackground(param1);
               if(!(_loc3_ && param1))
               {
                  if(_loc2_)
                  {
                     if(_loc4_)
                     {
                        addr42:
                        §§push(Boolean(_loc2_.§0;§));
                        if(_loc4_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr66);
                              }
                              return §§pop();
                           }
                           §§goto(addr87);
                        }
                        addr66:
                        §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           addr74:
                           §§push(!this.§?<§.§1#X§(_loc2_.§0;§));
                           if(!(_loc3_ && _loc3_))
                           {
                              addr87:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(false);
                                 }
                                 else
                                 {
                                    §§goto(addr107);
                                 }
                              }
                              §§goto(addr107);
                           }
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr107);
               }
               §§goto(addr42);
            }
            addr107:
            return true;
         }
         §§goto(addr25);
      }
      
      protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         return null;
      }
      
      protected function loadTheme(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:§4!e§ = null;
         if(_loc4_)
         {
            §§push(this.§6I§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§pop();
                           addr144:
                           while(true)
                           {
                              §§push(this.§!l§(param1));
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                              if(!(_loc4_ || param1))
                              {
                                 break loop0;
                              }
                              continue loop1;
                           }
                           addr188:
                           addr278:
                           §§pop();
                           if(_loc4_ || param1)
                           {
                              §§push(this.§7J§(param1));
                              if(_loc4_)
                              {
                                 §§push(!§§pop());
                                 break loop0;
                              }
                              break loop0;
                              addr196:
                           }
                           loop11:
                           while(true)
                           {
                              §§push(this.§?<§);
                              loop12:
                              while(!(_loc5_ && _loc2_))
                              {
                                 §§pop().removeEventListener(Event.CANCEL,this.§,"U§);
                                 loop13:
                                 for(; _loc4_; while(true)
                                 {
                                    if(_loc5_ && this)
                                    {
                                       continue loop13;
                                    }
                                    §§push(this.§?<§);
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          §§pop().addEventListener(Event.CANCEL,this.§,"U§);
                                          if(_loc4_ || _loc3_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop12;
                                    }
                                    §§goto(addr226);
                                 },while(false)
                                 {
                                    §§goto(addr223);
                                 },_loc3_ = this.§?"1§.getBackground(param1),if(_loc4_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          this.§?<§.§'!t§(_loc3_.§0;§);
                                       }
                                    }
                                 },return)
                                 {
                                    addr256:
                                    if(!(_loc5_ && param1))
                                    {
                                       addr263:
                                       while(true)
                                       {
                                          §§push(this.§?<§);
                                          addr226:
                                          while(true)
                                          {
                                             §§pop().addEventListener(Event.COMPLETE,this.§?Y§);
                                             continue loop13;
                                          }
                                       }
                                       addr223:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§?<§);
                                          break loop12;
                                          §§goto(addr256);
                                       }
                                       addr271:
                                    }
                                 }
                                 continue loop11;
                              }
                              addr273:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§?Y§);
                                 continue loop11;
                              }
                           }
                        }
                     }
                     while(§§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(this.§6I§);
                           while(true)
                           {
                              §§pop().removeEventListener(Event.COMPLETE,this.§6!B§);
                           }
                           addr123:
                        }
                        while(true)
                        {
                           §§push(this.§6I§);
                           continue loop0;
                        }
                     }
                     addr167:
                     §§push(this.§?<§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc4_ || param1)
                        {
                           addr185:
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                              }
                              break;
                           }
                           break;
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr273);
                  }
                  §§goto(addr185);
               }
               break;
            }
            if(§§pop())
            {
               §§goto(addr271);
            }
            §§goto(addr311);
         }
         §§goto(addr221);
      }
      
      private function §6!B§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§6I§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§6!B§);
               loop1:
               while(true)
               {
                  §§push(this.§6I§);
                  if(!(_loc3_ || param1))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§!#_§);
                  loop2:
                  while(true)
                  {
                     this.§""f§ = true;
                     loop3:
                     while(_loc3_)
                     {
                        §§push(this.§""f§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          this.initialize(this.§@!F§);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§=",§);
                                             if(!_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(_loc3_ || _loc3_)
                                             {
                                                continue loop4;
                                             }
                                             continue loop5;
                                          }
                                          addr93:
                                       }
                                    }
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 return;
                                 addr51:
                              }
                              §§goto(addr92);
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      private function §!#_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§6I§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§6!B§);
               addr75:
               while(true)
               {
                  §§push(this.§6I§);
                  if(_loc2_)
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§!#_§);
                     while(!_loc3_)
                     {
                        this.§;!F§ = true;
                        if(_loc2_)
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
         §§goto(addr75);
      }
      
      private function §?Y§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6I§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§?Y§);
               addr119:
               while(true)
               {
                  §§push(this.§6I§);
                  if(!(_loc2_ && param1))
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§,"U§);
                     loop2:
                     for(; _loc3_ || param1; if(_loc3_ || param1)
                     {
                        addr20:
                     },continue,return)
                     {
                        this.§=",§ = true;
                        loop3:
                        while(true)
                        {
                           §§push(this.§""f§);
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§pop();
                                       addr73:
                                       while(true)
                                       {
                                          §§push(this.§=",§);
                                          if(_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    addr72:
                                 }
                                 while(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       this.initialize(this.§@!F§);
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr73);
                                 }
                                 §§goto(addr20);
                              }
                              §§goto(addr72);
                           }
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr119);
      }
      
      private function §,"U§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6I§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§?Y§);
               while(true)
               {
                  §§push(this.§6I§);
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§,"U§);
                  loop2:
                  while(true)
                  {
                     this.§=",§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§""f§);
                        if(!(_loc2_ && param1))
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc2_ && _loc3_))
                           {
                              addr97:
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§=",§);
                                       if(_loc3_ || this)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop5;
                                          }
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc2_ && _loc3_)
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             this.initialize(this.§@!F§);
                                             continue loop2;
                                          }
                                       }
                                    }
                                    addr20:
                                    return;
                                 }
                                 addr99:
                              }
                              §§goto(addr37);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr97);
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function get backgroundTextureManager() : §7#5§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§;!@§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr57);
                  }
               }
               return null;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§;!@§.textureManager;
      }
      
      protected function initializePhysicsConstants(param1:§8!B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§-!S§;
         }
      }
      
      private function initialize(param1:§8!B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4<§ = null;
            loop0:
            while(true)
            {
               this.§]9§ = false;
               loop1:
               while(true)
               {
                  §§push(§3#J§.§^#A§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§3#J§.§^#A§);
                           addr296:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr308:
                              while(true)
                              {
                              }
                           }
                        }
                        addr294:
                     }
                     loop3:
                     while(true)
                     {
                        this.initializePhysicsConstants(param1);
                        while(true)
                        {
                           this.initLevelEngine(param1);
                           loop5:
                           for(; _loc3_ || this; if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           },§§goto(addr130))
                           {
                              this.§1!C§ = this.initializeLevelBackground(param1.theme,0 / §8]§,this.backgroundTextureManager,this.§#b§.§+"n§());
                              loop6:
                              while(true)
                              {
                                 this.§1!C§.§%Q§(§,!q§.§0@§());
                                 while(true)
                                 {
                                    §§push(§3#J§.§2!C§);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(§3#J§.§2!C§);
                                             addr236:
                                             while(true)
                                             {
                                                §§pop().color = this.§1!C§.skyColor;
                                                addr240:
                                                while(true)
                                                {
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr247:
                                                }
                                             }
                                             loop18:
                                             for(; !(_loc2_ && param1); while(_loc3_ || _loc3_)
                                             {
                                                §§goto(addr120);
                                                §§push(this.§@!P§);
                                                §§goto(addr53);
                                             })
                                             {
                                                §§push(this.§@!P§);
                                                if(_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   loop20:
                                                   while(true)
                                                   {
                                                      if(param1.name != §>#7§)
                                                      {
                                                         §>#7§ = param1.name;
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  addr53:
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(!(_loc2_ && _loc2_))
                                                                        {
                                                                           this.§%H§.§-7§ = this.§>"=§(param1.name);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    this.§[!s§ = this.initializeLevelSlingshot(param1);
                                                                                    continue;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr294);
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        §§goto(addr240);
                                                                        addr215:
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr93:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§#b§);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        §§pop().§[W§(§4"=§);
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           this.§0_§(0);
                                                                           addr71:
                                                                           while(_loc2_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              break loop21;
                                                                           }
                                                                           addr80:
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           addr162:
                                                                           while(!_loc2_)
                                                                           {
                                                                              this.mReadyToRun = true;
                                                                              continue loop18;
                                                                              §§goto(addr80);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§6#C§();
                                                                              §§goto(addr146);
                                                                           }
                                                                           addr146:
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().init();
                                                                     §§goto(addr93);
                                                                  }
                                                                  addr93:
                                                                  addr166:
                                                               }
                                                               while(!_loc2_)
                                                               {
                                                                  this.§>#B§();
                                                                  §§goto(addr162);
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            §§goto(addr71);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break loop20;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr121:
                                                      }
                                                      §§goto(addr93);
                                                      addr130:
                                                   }
                                                   while(_loc3_)
                                                   {
                                                      §§goto(addr166);
                                                      §§push(this.§#b§);
                                                   }
                                                   continue loop6;
                                                }
                                                addr120:
                                                while(true)
                                                {
                                                   §§pop().addEventListeners();
                                                }
                                                §§goto(addr121);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§%H§ = this.initializeLevelObjectManager(param1);
                                          §§goto(addr215);
                                          §§goto(addr247);
                                       }
                                    }
                                    §§goto(addr236);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr296);
               }
            }
         }
         §§goto(addr66);
      }
      
      protected function levelInitialized() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§%H§.levelInitialized();
         }
      }
      
      protected function initLevelEngine(param1:§8!B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.mLevelEngine = new §^P§(this);
         }
      }
      
      protected function §6#C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§[a§)
            {
               loop0:
               while(true)
               {
                  this.§;#3§ = §0p§.initialize(this.§[a§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§;#3§);
                     loop2:
                     while(true)
                     {
                        §§pop().speed = 1;
                        addr86:
                        while(true)
                        {
                           §§push(this.§;#3§);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§pop().play();
                              while(!(_loc1_ && this))
                              {
                                 continue loop0;
                              }
                              continue loop1;
                              addr66:
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      public function § r§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§[a§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;#3§ == null);
         if(_loc1_ || _loc1_)
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
            §§push(this.§;#3§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr70:
                     if(param1)
                     {
                        if(!_loc2_)
                        {
                           this.§;#3§.speed = Math.min(this.§;#3§.speed * 1.25,Math.pow(1.25,2));
                           addr76:
                        }
                     }
                     else
                     {
                        §§push(this.§;#3§);
                        if(!_loc2_)
                        {
                           §§pop().speed = Math.max(this.§;#3§.speed / 1.25,Math.pow(1 / 1.25,10));
                           if(_loc2_)
                           {
                           }
                           §§goto(addr20);
                        }
                        else
                        {
                           §§goto(addr76);
                        }
                     }
                     §§goto(addr76);
                  }
               }
               addr20:
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr70);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§;#3§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr58:
                     this.§;#3§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      protected function initializeLevelObjectManager(param1:§8!B§) : §;=§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§4!e§.§0!K§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return new §;=§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §>"=§(param1:String) : §&!>§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!param1)
            {
               if(_loc4_)
               {
                  §§goto(addr22);
               }
            }
            var _loc2_:Class = this.§6@§[param1.toLowerCase()];
            if(_loc4_ || this)
            {
               if(!_loc2_)
               {
                  if(!_loc5_)
                  {
                     return null;
                     addr52:
                  }
               }
               return new _loc2_() as §&!>§;
            }
            §§goto(addr52);
         }
         addr22:
         return null;
      }
      
      public function §?!5§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§6@§[param1.toLowerCase()] = param2;
         }
      }
      
      protected function §'!W§(param1:§8!B§) : §,#Q§
      {
         return new §,#Q§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§7#5§, param4:Number) : § "V§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§4!e§;
         if((_loc5_ = this.§?"1§.getBackground(param1)) == null)
         {
            if(_loc7_ || param3)
            {
               Log.log("UNKNOWN LEVEL THEME! " + param1);
               if(_loc7_ || param3)
               {
                  §§push(§8!B§.§7#M§);
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
               }
            }
            _loc5_ = this.§?"1§.getBackground(param1);
         }
         §§push(§§findproperty(§ "V§));
         §§push(_loc5_);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         §§push(§3#J§.§3!s§);
         if(_loc7_ || param1)
         {
            §§push(!§§pop());
         }
         return new §§pop().§ "V§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
      }
      
      protected function initializeLevelSlingshot(param1:§8!B§) : §;x§
      {
         return new §;x§(this,param1,new Sprite());
      }
      
      protected function §!#;§(param1:§`y§, param2:§7#5§) : §,!w§
      {
         return new §,!w§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.mReadyToRun)
            {
               if(_loc7_)
               {
                  addr24:
                  this.clearLevel();
               }
            }
            var _loc3_:§8!B§ = new §8!B§();
            if(!(_loc6_ && _loc3_))
            {
               _loc3_.slingshotY = -12;
            }
            var _loc4_:§0!§;
            (_loc4_ = new §0!§()).left = 0;
            if(_loc7_)
            {
               §§push(_loc4_);
               §§push(§,#Q§.§`"!§);
               if(_loc7_)
               {
                  §§push(-§§pop());
                  if(!_loc6_)
                  {
                     addr140:
                     §§push(10);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc7_ || _loc3_)
                        {
                           addr157:
                           §§push(§§pop() * 8);
                        }
                        §§pop().top = §§pop();
                        loop0:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §,#Q§.§`"!§);
                           }
                           §§pop().bottom = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(§§pop() + §,#Q§.§"#N§);
                              }
                              §§pop().right = §§pop();
                              loop2:
                              for(; !_loc6_; loop4:
                              for(; _loc7_ || _loc3_; while(!(_loc6_ && _loc3_))
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr102);
                              })
                              {
                                 while(true)
                                 {
                                    do
                                    {
                                       _loc4_.id = §,#Q§.§>"2§;
                                       continue loop4;
                                    }
                                    while(false);
                                    
                                    var _loc5_:§0!§;
                                    (_loc5_ = new §0!§()).top = _loc4_.top;
                                    if(!(_loc6_ && param2))
                                    {
                                       _loc5_.bottom = _loc4_.bottom;
                                       while(true)
                                       {
                                          _loc5_.left = 150;
                                          loop9:
                                          while(_loc7_ || param2)
                                          {
                                             §§push(_loc5_);
                                             §§push(_loc5_.left);
                                             if(_loc7_ || param1)
                                             {
                                                §§push(§§pop() + §,#Q§.§"#N§);
                                             }
                                             §§pop().right = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                §§push(_loc5_.top);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + §,#Q§.§`"!§);
                                                }
                                                §§pop().bottom = §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   _loc5_.y = _loc4_.y;
                                                   addr313:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      §§push(_loc5_.left);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§,#Q§.§"#N§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() / 2);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().x = §§pop();
                                                      loop13:
                                                      while(true)
                                                      {
                                                         _loc5_.id = §,#Q§.§?i§;
                                                         loop14:
                                                         while(true)
                                                         {
                                                            _loc3_.§'!h§(_loc5_);
                                                            loop15:
                                                            while(!_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  this.§<!F§(_loc3_,param2);
                                                                  continue loop11;
                                                               }
                                                               continue loop9;
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc3_.theme = §%J§;
                                                                     loop20:
                                                                     while(!_loc6_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.init(_loc3_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           continue loop20;
                                                                           addr257:
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                }
                                                if(!(_loc7_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(param1);
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   addr239:
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         continue loop17;
                                                      }
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         _loc3_.theme = param1;
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr190);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr313);
                                 }
                              })
                              {
                                 _loc4_.y = -13.929;
                                 while(true)
                                 {
                                    _loc4_.x = §,#Q§.§"#N§;
                                    continue loop2;
                                 }
                              }
                              continue loop0;
                              if(!(_loc7_ || param2))
                              {
                                 continue;
                              }
                              _loc3_.§'!h§(_loc4_);
                              if(!(_loc6_ && param2))
                              {
                                 §§goto(addr61);
                              }
                              §§goto(addr68);
                           }
                        }
                     }
                  }
                  §§goto(addr157);
               }
               §§goto(addr140);
            }
            §§goto(addr97);
         }
         §§goto(addr24);
      }
      
      protected function §<!F§(param1:§8!B§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(param2)
            {
               if(_loc3_ || param1)
               {
                  addr52:
                  this.§3k§(param1);
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      protected function §0U§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§"#!§ ^= this.§"#!§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§"#!§);
               §§push(this.§"#!§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§"#!§ = §§pop() ^ §§pop();
               while(!_loc2_)
               {
                  this.§"#!§ ^= this.§"#!§ << 4;
                  if(!_loc2_)
                  {
                     return this.§"#!§ * (1 / uint.MAX_VALUE);
                     addr57:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function §3k§(param1:§8!B§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§94§ = null;
         if(!(_loc7_ && param1))
         {
            §§push(this);
            §§push(0.33);
            if(!_loc7_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§"#!§ = §§pop();
         }
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(10);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(!(_loc8_ || _loc3_))
                  {
                     continue loop1;
                  }
                  _loc4_ = §§pop();
                  if(_loc8_)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           continue loop1;
                        }
                        §§push(5);
                        if(_loc7_ && param1)
                        {
                           continue loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           break;
                        }
                        §§push(this.§0U§());
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(§§pop() * 5);
                        }
                        §§push(int(§§pop()));
                        if(_loc7_ && param1)
                        {
                           continue loop1;
                        }
                        _loc5_ = §§pop();
                        if(!_loc8_)
                        {
                           continue loop0;
                        }
                     }
                     if(!_loc7_)
                     {
                        _loc3_++;
                        if(!(_loc8_ || _loc3_))
                        {
                           break;
                        }
                     }
                     continue loop0;
                     addr463:
                  }
                  while(true)
                  {
                     §§push(_loc6_ = new §94§());
                     §§push(30 + _loc4_ * 10);
                     if(!_loc7_)
                     {
                        §§push(this.§0U§());
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(§§pop() * 9);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().x = §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc3_);
                        loop5:
                        while(true)
                        {
                           §§push(0);
                           loop6:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(_loc6_);
                                 §§push(-30 + _loc3_ * 6);
                                 if(_loc8_ || _loc2_)
                                 {
                                    §§push(this.§0U§());
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(§§pop() * 3);
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          addr356:
                                          §§push(§§pop() - §§pop());
                                          if(_loc8_)
                                          {
                                             §§push(_loc4_ * 8);
                                          }
                                          §§pop().y = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                loop9:
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            §§push(§§pop() + §§pop() * _loc4_);
                                                            if(_loc8_)
                                                            {
                                                               addr273:
                                                               §§push(_loc3_);
                                                               if(!(_loc7_ && _loc2_))
                                                               {
                                                                  addr286:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(5);
                                                                  }
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr210:
                                                                        if(!(_loc8_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc8_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           _loc6_.type = "BIRD_BLUE";
                                                                           addr191:
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr175:
                                                                              §§push(_loc6_);
                                                                              §§push(this.§0U§());
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(§§pop() * 360);
                                                                              }
                                                                              §§pop().angle = §§pop();
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_.id = _loc2_;
                                                                                 loop31:
                                                                                 while(!(_loc7_ && this))
                                                                                 {
                                                                                    param1.addObject(_loc6_);
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop31;
                                                                                       }
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             do
                                                                                             {
                                                                                                _loc2_++;
                                                                                                continue loop32;
                                                                                             }
                                                                                             while(false);
                                                                                             
                                                                                             §§goto(addr463);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(2);
                                                                                                   addr422:
                                                                                                   loop22:
                                                                                                   for(; !_loc7_; continue loop21)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(!(_loc7_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr440:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           addr386:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 addr388:
                                                                                                                                 if(!(_loc8_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           addr443:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              break loop22;
                                                                                                                              §§goto(addr388);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr439:
                                                                                                                  }
                                                                                                                  §§goto(addr411);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr434);
                                                                                                               }
                                                                                                               §§goto(addr454);
                                                                                                            }
                                                                                                            addr434:
                                                                                                            addr453:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr453);
                                                                                                         }
                                                                                                         addr452:
                                                                                                      }
                                                                                                      §§goto(addr439);
                                                                                                   }
                                                                                                   while(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr452);
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_ && this)
                                                                                             {
                                                                                                while(_loc7_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                _loc6_.type = "BIRD_RED";
                                                                                                break;
                                                                                                addr314:
                                                                                                addr309:
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   break loop30;
                                                                                                }
                                                                                                §§goto(addr440);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr175);
                                                                                          addr223:
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    }
                                                                                    §§goto(addr191);
                                                                                 }
                                                                                 addr220:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_.type = "BIRD_YELLOW";
                                                                                    §§goto(addr223);
                                                                                 }
                                                                                 §§goto(addr175);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr443);
                                                                              }
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                  }
                                                                  loop11:
                                                                  while(_loc8_)
                                                                  {
                                                                     §§push(2);
                                                                     for(; !(_loc7_ && param1); §§push(3),if(_loc7_ && _loc2_)
                                                                     {
                                                                        continue;
                                                                     },§§goto(addr210))
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc8_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr422);
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               §§push(§§pop() % §§pop());
                                                            }
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr396);
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§goto(addr356);
                              }
                              §§goto(addr459);
                           }
                        }
                     }
                     §§goto(addr413);
                  }
               }
               return;
            }
         }
      }
      
      private function §%X§() : void
      {
      }
      
      protected function §0$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§ "V§.§8#$§)
            {
               if(_loc2_ || _loc1_)
               {
                  addr54:
                  this.§1!g§(this.§1!C§.§?!]§);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      protected function §[Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§1!g§(this.§2!d§.§>!z§(§,!w§.§#Z§));
            do
            {
               this.§1!g§(this.§2!d§.§>!z§(§,!w§.§9F§));
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §8<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1!g§(this.§2!d§.§>!z§(§,!w§.§7!v§));
            while(true)
            {
               this.§1!g§(this.§%H§.§8#G§);
               §§goto(addr76);
            }
         }
         addr76:
         while(true)
         {
            this.§1!g§(this.§[!s§.sprite);
            do
            {
               this.§1!g§(this.§2!d§.§>!z§(§,!w§.§ !B§));
            }
            while(!_loc1_);
            
            if(!(_loc2_ && this))
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §`"p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1!g§(this.§1!C§.§4!C§);
            while(§ "V§.§8#$§)
            {
               if(!(_loc1_ || _loc2_))
               {
                  break;
               }
               addr66:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               this.§1!g§(this.§1!C§.§>"a§);
               addr51:
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr51);
      }
      
      protected function §?#Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1!g§(this.§%H§.§!'§);
            do
            {
               this.§1!g§(this.§2!d§.§>!z§(§,!w§.§,!"§));
               do
               {
                  this.§1!g§(this.§2!d§.§>!z§(§,!w§.§7"-§));
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      private function §>#B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0$§();
            while(true)
            {
               this.§[Y§();
               addr70:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            this.§8<§();
            loop3:
            do
            {
               this.§`"p§();
               while(!_loc1_)
               {
                  this.§?#Z§();
                  if(!(_loc1_ && _loc1_))
                  {
                     continue loop3;
                  }
               }
               §§goto(addr70);
            }
            while(_loc1_);
            
            return;
         }
      }
      
      protected function §1!g§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.sprite);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            if(!param3)
            {
               if(!_loc4_)
               {
                  addr28:
                  param3 = new Point();
                  addr32:
                  §§push(§,!q§.§6G§);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§,!q§.§!"N§);
                     if(!_loc4_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(param1);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§,!q§.§6G§);
                                 if(_loc5_ || param2)
                                 {
                                    addr65:
                                    §§push(§§pop() / §§pop());
                                    if(!_loc4_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc4_)
                                       {
                                          param1 = §§pop();
                                          §§goto(addr111);
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§,!q§.§6G§);
                                          addr219:
                                          loop5:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop6:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr221:
                                                loop7:
                                                while(true)
                                                {
                                                   param2 = §§pop();
                                                   loop8:
                                                   while(true)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         param3.x = ((param1 - this.sprite.x) / §,#Q§.§ #b§ + this.§#b§.§9";§) * §8]§;
                                                         addr129:
                                                         addr136:
                                                         while(_loc4_ && param1)
                                                         {
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            param3.y = ((param2 - this.sprite.y) / §,#Q§.§ #b§ + this.§#b§.§ !4§) * §8]§;
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               addr203:
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(param2);
                                                                  if(!(_loc4_ && param3))
                                                                  {
                                                                     §§push(§,!q§.§!"N§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!(_loc4_ && param2))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!(_loc5_ || this))
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              addr168:
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    param2 = §§pop();
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§,!q§.§!"N§);
                                                                                 addr191:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ && param3)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                              }
                                                                              addr189:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr168);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  §§goto(addr168);
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§goto(addr129);
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       §§goto(addr203);
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr221);
                           }
                           addr111:
                           if(!_loc4_)
                           {
                              §§push(param2);
                           }
                           return param3;
                        }
                        §§push(param1);
                        §§goto(addr189);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr201);
               }
               §§goto(addr136);
            }
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      public function §@C§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(!param3)
            {
               if(!_loc5_)
               {
                  addr23:
                  param3 = new Point();
                  §§goto(addr27);
               }
               §§goto(addr50);
            }
            addr27:
            param3.x = (param1 / §8]§ - this.§#b§.§9";§) * §,#Q§.§ #b§ + this.sprite.x;
            if(!(_loc5_ && param3))
            {
               param3.y = (param2 / §8]§ - this.§#b§.§ !4§) * §,#Q§.§ #b§ + this.sprite.y;
               addr50:
            }
            var _loc4_:Number = Math.max(§,!q§.§6G§,§,!q§.§!"N§);
            if(!(_loc5_ && this))
            {
               param3.x *= _loc4_;
            }
            do
            {
               param3.y *= _loc4_;
            }
            while(!_loc6_);
            
            return param3;
         }
         §§goto(addr23);
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.sprite);
            loop0:
            while(true)
            {
               §§push(param3);
               addr218:
               while(true)
               {
                  §§pop().scaleX = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr127);
      }
      
      public function §8!`§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§%H§.addObject(param1,param2,param3,0,§;=§.§""3§);
         }
      }
      
      public function §@"1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>D§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§>D§);
                     loop2:
                     while(true)
                     {
                        §§pop().visible = true;
                        while(true)
                        {
                           §§push(this.§>D§);
                           if(_loc2_ || this)
                           {
                              if(!_loc2_)
                              {
                                 break;
                                 addr60:
                              }
                              §§pop().alpha = 0;
                              while(!(_loc1_ && this))
                              {
                                 if(!_loc1_)
                                 {
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§]#U§ = 0;
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  §§goto(addr60);
               }
            }
         }
      }
      
      public function §&!G§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            if(!param1)
            {
               this.§5#K§ = null;
               if(_loc6_ || param3)
               {
                  if(_loc5_ && this)
                  {
                     addr72:
                     this.§5#K§ = new §40§(param2,param3,param4);
                     addr79:
                  }
                  return;
               }
               §§goto(addr79);
            }
         }
         §§goto(addr72);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§1!C§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§1!C§);
                     addr591:
                     while(true)
                     {
                        §§pop().dispose();
                        addr592:
                        while(true)
                        {
                           this.§1!C§ = null;
                           addr568:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr589:
               }
               while(true)
               {
                  §§push(this.§%H§);
                  if(!(_loc1_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc1_ && this))
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              addr555:
                              this.§%H§.dispose();
                              loop2:
                              while(_loc2_ || _loc1_)
                              {
                                 this.§%H§ = null;
                                 while(true)
                                 {
                                    addr505:
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this.mLevelEngine);
                                       if(!_loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this.mLevelEngine);
                                                if(!_loc1_)
                                                {
                                                   if(§§pop().§&#?§)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         addr367:
                                                         if(_loc1_ && _loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         addr320:
                                                         §§push(this.sprite);
                                                         if(!_loc1_)
                                                         {
                                                            if(§§pop().numChildren <= 0)
                                                            {
                                                               addr329:
                                                               this.§@!B§ = 0;
                                                               this.§9""§ = 0;
                                                               this.mReadyToRun = false;
                                                               this.§6P§ = false;
                                                               this.§]#U§ = §0"x§.§"#a§;
                                                               addr332:
                                                               addr314:
                                                               addr309:
                                                               addr304:
                                                               addr319:
                                                               §§push(this.§!h§);
                                                               if(!_loc1_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr297:
                                                                     (this.§!h§ as §2"Z§).§`"D§.x = 0;
                                                                     addr281:
                                                                     addr298:
                                                                     addr296:
                                                                     §§push(this.§!h§);
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push((§§pop() as §2"Z§).§`"D§);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              addr274:
                                                                              §§push(this.§>D§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr257:
                                                                                    this.§>D§.visible = false;
                                                                                    addr259:
                                                                                    addr255:
                                                                                 }
                                                                                 this.§;#3§ = null;
                                                                                 addr241:
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    this.§5!;§ = null;
                                                                                    addr234:
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr205:
                                                                                       if(this.§6I§)
                                                                                       {
                                                                                          addr206:
                                                                                          if(_loc2_ || this)
                                                                                          {
                                                                                             addr215:
                                                                                             this.§6I§.removeEventListener(Event.COMPLETE,this.§6!B§);
                                                                                             addr220:
                                                                                             if(!(_loc1_ && _loc1_))
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(this.§6I§);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§pop().removeEventListener(Event.CANCEL,this.§!#_§);
                                                                                                         addr194:
                                                                                                         if(!(_loc1_ && this))
                                                                                                         {
                                                                                                            addr152:
                                                                                                            §§push(this.§?<§);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr158:
                                                                                                                  if(_loc2_ || this)
                                                                                                                  {
                                                                                                                     addr167:
                                                                                                                     this.§?<§.removeEventListener(Event.COMPLETE,this.§?Y§);
                                                                                                                     addr172:
                                                                                                                     if(!_loc1_)
                                                                                                                     {
                                                                                                                        if(_loc2_ || this)
                                                                                                                        {
                                                                                                                           §§push(this.§?<§);
                                                                                                                           if(!_loc1_)
                                                                                                                           {
                                                                                                                              §§pop().removeEventListener(Event.CANCEL,this.§,"U§);
                                                                                                                              addr142:
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr126:
                                                                                                                                    this.§&i§();
                                                                                                                                    addr129:
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§3#J§.§2!C§);
                                                                                                                                       if(_loc2_ || this)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc2_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                if(_loc2_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc1_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      addr114:
                                                                                                                                                      §3#J§.§2!C§.color = 0;
                                                                                                                                                      addr116:
                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc1_)
                                                                                                                                                         {
                                                                                                                                                            addr57:
                                                                                                                                                            §§push(this.§@!P§);
                                                                                                                                                            if(!_loc1_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr71:
                                                                                                                                                                           this.§@!P§.removeEventListeners();
                                                                                                                                                                           addr72:
                                                                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr29:
                                                                                                                                                                              this.mReadyToRun = false;
                                                                                                                                                                              if(!(_loc1_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc1_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc2_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr274);
                                                                                                                                                                                       }
                                                                                                                                                                                       return;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr194);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr116);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr72);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr332);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr314);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr142);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr72);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr29);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr71);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr281);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr129);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr206);
                                                                                                                                                }
                                                                                                                                                §§goto(addr172);
                                                                                                                                             }
                                                                                                                                             §§goto(addr116);
                                                                                                                                          }
                                                                                                                                          §§goto(addr57);
                                                                                                                                       }
                                                                                                                                       §§goto(addr114);
                                                                                                                                    }
                                                                                                                                    §§goto(addr158);
                                                                                                                                 }
                                                                                                                                 §§goto(addr309);
                                                                                                                              }
                                                                                                                              §§goto(addr234);
                                                                                                                           }
                                                                                                                           §§goto(addr167);
                                                                                                                        }
                                                                                                                        §§goto(addr329);
                                                                                                                     }
                                                                                                                     §§goto(addr241);
                                                                                                                  }
                                                                                                                  §§goto(addr304);
                                                                                                               }
                                                                                                               §§goto(addr126);
                                                                                                            }
                                                                                                            §§goto(addr167);
                                                                                                         }
                                                                                                         §§goto(addr220);
                                                                                                      }
                                                                                                      §§goto(addr205);
                                                                                                   }
                                                                                                   §§goto(addr215);
                                                                                                }
                                                                                                addr381:
                                                                                                §§goto(addr320);
                                                                                             }
                                                                                             §§goto(addr259);
                                                                                          }
                                                                                          §§goto(addr255);
                                                                                       }
                                                                                       §§goto(addr152);
                                                                                    }
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              §§goto(addr257);
                                                                           }
                                                                           §§goto(addr297);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     addr293:
                                                                     §§goto(addr293);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr297);
                                                               addr328:
                                                            }
                                                            §§push(this.sprite);
                                                         }
                                                         §§pop().removeChildAt(0,true);
                                                         §§goto(addr381);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.mLevelEngine);
                                                      addr521:
                                                      while(true)
                                                      {
                                                         §§pop().clear();
                                                         addr522:
                                                         while(true)
                                                         {
                                                            this.mLevelEngine = null;
                                                            addr504:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr521);
                                             }
                                             addr511:
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§1j§);
                                             if(!_loc1_)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§1j§);
                                                      addr498:
                                                      while(true)
                                                      {
                                                         §§pop().clear();
                                                         addr499:
                                                         while(true)
                                                         {
                                                            this.§1j§ = null;
                                                            addr489:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr496:
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§[!s§);
                                                   if(_loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               addr483:
                                                               this.§[!s§.dispose();
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  this.§[!s§ = null;
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     addr442:
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#b§);
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(_loc1_ && _loc1_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §4"=§ = this.§#b§.§'"2§;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           addr389:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§2!d§);
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 loop20:
                                                                                 for(; this.sprite; while(true)
                                                                                 {
                                                                                    continue loop20;
                                                                                 })
                                                                                 {
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             addr353:
                                                                                             if(_loc2_ || _loc1_)
                                                                                             {
                                                                                                addr360:
                                                                                                if(!(_loc2_ || this))
                                                                                                {
                                                                                                   while(!_loc1_)
                                                                                                   {
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            this.§#b§ = null;
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr589);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr511);
                                                                                                      }
                                                                                                      §§goto(addr360);
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                   addr433:
                                                                                                }
                                                                                                §§goto(addr367);
                                                                                                §§goto(addr521);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                continue loop14;
                                                                                                §§goto(addr353);
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr405:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2!d§ = null;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().dispose();
                                                                                 }
                                                                                 addr404:
                                                                              }
                                                                              §§goto(addr405);
                                                                           }
                                                                        }
                                                                        §§goto(addr499);
                                                                     }
                                                                  }
                                                               }
                                                               addr484:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr484);
                                                      }
                                                      §§goto(addr442);
                                                   }
                                                   §§goto(addr483);
                                                }
                                                §§goto(addr522);
                                             }
                                             §§goto(addr498);
                                          }
                                       }
                                       §§goto(addr521);
                                    }
                                 }
                              }
                              continue;
                              addr556:
                           }
                           §§goto(addr592);
                        }
                        §§goto(addr556);
                     }
                     §§goto(addr505);
                  }
                  §§goto(addr555);
               }
            }
            §§goto(addr591);
         }
         §§goto(addr388);
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §#!M§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§5!;§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr52);
                  }
               }
               return null;
            }
            §§goto(addr52);
         }
         addr52:
         return this.§5!;§.toString();
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§4<§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§4<§);
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr59);
            }
            return §§pop().speed;
         }
         addr59:
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.mReadyToRun);
            while(true)
            {
               §§push(!§§pop());
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
                           loop4:
                           while(true)
                           {
                              §§push(§3#J§.§;[§());
                              if(_loc4_ || param1)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                 }
                              }
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(0);
                                       break;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr157:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§;#3§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr115:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ || param2))
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc4_ || param2)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      §§goto(addr102);
                                                   }
                                                   continue loop4;
                                                }
                                                if(_loc4_ || this)
                                                {
                                                   break;
                                                }
                                                addr125:
                                                while(_loc4_)
                                                {
                                                   continue loop8;
                                                   §§goto(addr124);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§push(this.updateWithTime(param1,true,param2));
                                             if(!(_loc3_ && param1))
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   return §§pop();
                                                }
                                                break loop5;
                                             }
                                             addr102:
                                             return this.§,"5§(param1,param2);
                                          }
                                          addr124:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          addr124:
                                          §§goto(addr125);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              return §§pop();
                           }
                        }
                     }
                     §§goto(addr141);
                  }
               }
               if(_loc3_ && param2)
               {
                  continue;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr127);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = false;
         if(_loc6_ || param2)
         {
            §§push(this.§4<§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§4<§);
                     addr265:
                     while(true)
                     {
                        §§push(§§pop().update(param1));
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop13:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop14:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * this.§4<§.speed);
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop16:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       loop17:
                                       while(true)
                                       {
                                          §§push(§3#J§.§^#A§);
                                          if(!_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(§3#J§.§^#A§);
                                                   addr232:
                                                   while(true)
                                                   {
                                                      §§pop().speed = this.§4<§.speed;
                                                      addr236:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                                addr230:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         this.§4<§ = null;
                                                         loop22:
                                                         while(_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§9""§);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop() + param1);
                                                               }
                                                               §§pop().§9""§ = §§pop();
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(this.§9W§);
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ && param2)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        this.§@!B§ = 0;
                                                                        loop4:
                                                                        for(; !_loc5_; if(!(_loc6_ || param1))
                                                                        {
                                                                           continue;
                                                                        },if(_loc5_)
                                                                        {
                                                                           continue loop2;
                                                                        },this.§0_§(param1),if(_loc6_ || param2)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    addr27:
                                                                                    §§push(param1);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!(_loc5_ && param3))
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                           §§goto(addr165);
                                                                        },§§goto(addr111))
                                                                        {
                                                                           if(!(_loc5_ && param2))
                                                                           {
                                                                              this.handleEngineUpdateStep(param1);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ || param3)
                                                                                 {
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§[!s§.update(param1,param3);
                                                                                       addr111:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       addr165:
                                                                                       continue loop21;
                                                                                       addr165:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr62:
                                                                                 if(_loc6_ || param3)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr230);
                                                                           }
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§@!B§);
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           §§push(§§pop() + param1);
                                                                        }
                                                                        §§pop().§@!B§ = §§pop();
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                         continue loop17;
                                                      }
                                                   }
                                                   §§goto(addr205);
                                                }
                                             }
                                          }
                                          §§goto(addr232);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(_loc5_ && param3)
                     {
                        continue;
                     }
                     this.§@!B§ = this.mLevelEngine.§2!3§(this.§@!B§);
                     §§goto(addr165);
                  }
               }
               §§goto(addr205);
            }
            §§goto(addr265);
         }
         §§goto(addr236);
      }
      
      private function §,"5§(param1:Number, param2:Boolean) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         §§push(§^P§.§7!x§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc6_ && _loc3_))
         {
            if(this.§;#3§)
            {
               loop15:
               while(true)
               {
                  §§push(param1);
                  if(_loc5_)
                  {
                     §§push(this.§;#3§.speed);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                     }
                     addr306:
                  }
                  loop17:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop18:
                     while(true)
                     {
                        param1 = §§pop();
                        while(true)
                        {
                           §§push(this.§9""§);
                           if(_loc5_ || _loc3_)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 break;
                              }
                              §§push(param1);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc6_ && param2))
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop18;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                              }
                              else
                              {
                                 §§goto(addr306);
                              }
                           }
                           _loc4_ = §§pop();
                           if(!_loc5_)
                           {
                              continue;
                           }
                           if(_loc6_)
                           {
                              continue loop15;
                           }
                           loop25:
                           while(true)
                           {
                              §§push(this.§9""§);
                              loop24:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_ || param1)
                                 {
                                    addr189:
                                    §§push(§§pop() + §§pop());
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(this.§0!"§);
                                                      loop4:
                                                      while(!_loc6_)
                                                      {
                                                         §§push(§§pop() + _loc3_);
                                                         loop5:
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(this.§;#3§);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop().step(this);
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§0!"§);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§push(§§pop() + _loc3_);
                                                                           }
                                                                           §§pop().§0!"§ = §§pop();
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§9""§);
                                                                                 continue loop5;
                                                                              }
                                                                              addr93:
                                                                           }
                                                                           addr126:
                                                                           §§push(this);
                                                                           §§push(_loc4_);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              §§push(§§pop() - this.§9""§);
                                                                           }
                                                                           §§pop().updateWithTime(§§pop(),true,param2);
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              addr53:
                                                                              §§push(param1);
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 if(!(_loc5_ || _loc3_))
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr240:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       break loop4;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§0!"§);
                                                                                    addr244:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§;#3§);
                                                                                             addr247:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().step(this);
                                                                                                addr249:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§0!"§);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc3_);
                                                                                                   }
                                                                                                   §§pop().§0!"§ = §§pop();
                                                                                                   addr234:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr245:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.updateWithTime(_loc3_,false,param2);
                                                                                          continue loop25;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              return §§pop();
                                                                              addr55:
                                                                           }
                                                                        }
                                                                        continue loop2;
                                                                        addr217:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr247);
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr245);
                                                                  }
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr93);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr242);
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§9""§);
                                             }
                                             §§goto(addr240);
                                             continue loop24;
                                          }
                                          continue;
                                          addr198:
                                       }
                                       §§goto(addr206);
                                    }
                                    addr190:
                                 }
                                 §§goto(addr198);
                              }
                           }
                        }
                        continue loop17;
                     }
                  }
               }
            }
            else
            {
               §§push(param1);
               if(!_loc6_)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     if(_loc5_)
                     {
                        return §§pop();
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr96);
               }
            }
            §§goto(addr55);
         }
         §§goto(addr286);
      }
      
      private function §0_§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            this.§1!C§.update(param1);
            loop0:
            while(true)
            {
               this.§%H§.renderObjects(param1,this.mLevelEngine.§^"B§,this.§@!B§);
               loop1:
               while(true)
               {
                  this.§=g§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§]#U§);
                     loop3:
                     while(true)
                     {
                        §§push(§0"x§.§"#a§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§>D§);
                              if(_loc5_)
                              {
                                 if(_loc5_ || this)
                                 {
                                    if(!§§pop())
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push(this.§5#K§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(§§pop())
                                             {
                                                loop14:
                                                for(; !_loc4_; if(_loc4_ && _loc2_)
                                                {
                                                   continue;
                                                },addr61:,if(_loc5_ || _loc2_)
                                                {
                                                   §§goto(addr68);
                                                },while(true)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(this.§>D§);
                                                      while(true)
                                                      {
                                                         §§pop().visible = false;
                                                         continue loop1;
                                                      }
                                                      addr165:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr285);
                                                   }
                                                   §§goto(addr61);
                                                })
                                                {
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(this.§5#K§);
                                                   while(true)
                                                   {
                                                      if(!§§pop().§9"f§(this.§#b§,param1))
                                                      {
                                                         loop24:
                                                         while(true)
                                                         {
                                                            this.§&!G§(false);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  addr272:
                                                                  while(true)
                                                                  {
                                                                     this.§#b§.§"%§(param1);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ && _loc2_)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           this.mLevelEngine.§+"$§();
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop16;
                                                                              addr68:
                                                                              this.§2!d§.update(param1);
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        addr263:
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(-Math.abs(this.§]#U§ - _loc2_));
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr203:
                                                                              if(!(_loc5_ || _loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(§0"x§.§;"$§);
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          addr236:
                                                                                          §§push(§§pop() * (§§pop() / _loc2_));
                                                                                          if(_loc4_ && _loc2_)
                                                                                          {
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          continue loop9;
                                                                                       }
                                                                                       addr264:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr236);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           §§goto(addr236);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr264);
                                                                           §§goto(addr203);
                                                                        }
                                                                     }
                                                                     continue loop25;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr272:
                                                                  addr69:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr272);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  §§push(§§pop() + param1);
                                                               }
                                                               §§pop().§]#U§ = §§pop();
                                                               addr285:
                                                               while(true)
                                                               {
                                                                  §§push(§0"x§.§"#a§);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() / 2);
                                                                  }
                                                                  §§goto(addr263);
                                                                  §§goto(addr272);
                                                               }
                                                            }
                                                         }
                                                         addr120:
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   addr131:
                                                   while(true)
                                                   {
                                                      continue loop13;
                                                   }
                                                }
                                                addr192:
                                             }
                                             §§goto(addr69);
                                          }
                                          §§goto(addr115);
                                       }
                                       continue loop1;
                                       addr93:
                                    }
                                    §§goto(addr146);
                                 }
                                 else
                                 {
                                    addr190:
                                    while(true)
                                    {
                                       §§pop().alpha = _loc3_;
                                    }
                                    addr190:
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr272);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.objects.updateObjects(param1);
         }
         do
         {
            this.§]z§();
         }
         while(_loc3_);
         
      }
      
      protected function §=g§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&#=§ = null;
         if(!_loc5_)
         {
            if(this.§7!J§ != null)
            {
               for each(_loc1_ in this.§7!J§)
               {
                  if(!_loc5_)
                  {
                     if(_loc1_.isLeavingTrail)
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  this.§&"u§(_loc1_);
               }
               addr25:
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<!2§ = null;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!(_loc4_ && this))
            {
               §§push(this.mPigsAnimationTimer1);
               if(_loc3_ || _loc2_)
               {
                  §§push(0);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_ || this)
                        {
                           addr66:
                           §§push(this.§%H§);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(true);
                              if(_loc3_)
                              {
                                 §§push(§§pop().§,O§(§§pop()));
                                 if(_loc3_ || _loc2_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc4_)
                                          {
                                             _loc2_.scream();
                                             addr99:
                                             if(_loc3_ || param1)
                                             {
                                             }
                                             addr141:
                                             §§push(this);
                                             §§push(this.mPigsAnimationTimer2);
                                             if(_loc3_ || this)
                                             {
                                                §§push(§§pop() - param1);
                                             }
                                             §§pop().mPigsAnimationTimer2 = §§pop();
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§goto(addr161);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§push(this);
                                          §§push(500 + Math.random() * 1000);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(§§pop() + 4000 / (3 + this.§%H§.§3"z§()));
                                          }
                                          §§pop().mPigsAnimationTimer1 = §§pop();
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr99);
                                 }
                              }
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr161);
               }
               addr161:
               if(this.mPigsAnimationTimer2 <= 0)
               {
                  addr169:
                  _loc2_ = this.§%H§.§,O§(true);
                  addr165:
                  if(_loc3_)
                  {
                     if(_loc2_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc2_.blink();
                           if(_loc3_ || this)
                           {
                           }
                           §§goto(addr219);
                        }
                        §§push(this);
                        §§push(250 + Math.random() * 500);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + 2000 / (3 + this.§%H§.§3"z§()));
                        }
                        §§pop().mPigsAnimationTimer2 = §§pop();
                     }
                  }
               }
               addr219:
               return;
            }
         }
         §§goto(addr66);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            §§push(param6);
            if(_loc7_)
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§ U§.§^#+§);
                        if(!_loc8_)
                        {
                           addr160:
                           §§push(int(§§pop()));
                           while(true)
                           {
                              param6 = §§pop();
                              addr161:
                              while(true)
                              {
                              }
                           }
                           addr160:
                        }
                        §§goto(addr160);
                     }
                     addr155:
                  }
                  while(true)
                  {
                     §&'§.addScore(param1,param2);
                     loop3:
                     while(true)
                     {
                        this.§@!P§.addScore(param1);
                        loop4:
                        while(true)
                        {
                           §§push(param3);
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
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                §§push(param1);
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(0);
                                                   if(!_loc7_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(§§pop() > §§pop());
                                                   if(!_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop10:
                                                            for(; _loc7_ || param3; §§push(this.§]9§),if(!_loc8_)
                                                            {
                                                               §§push(!§§pop());
                                                            },if(_loc8_ && param3)
                                                            {
                                                               continue;
                                                            },if(_loc8_)
                                                            {
                                                               continue loop8;
                                                            })
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || param3)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr155);
                                                               }
                                                               §§goto(addr161);
                                                            }
                                                            continue loop6;
                                                            addr96:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        this.§1#[§(param1.toString(),param4,param5,800,param6,0,0);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr161);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr106);
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      continue loop7;
                                                      addr91:
                                                   }
                                                   §§goto(addr96);
                                                }
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr91);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr160);
         }
         §§goto(addr161);
      }
      
      public function §1#[§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            §§push(param5);
            if(_loc9_ || param3)
            {
               if(§§pop() == -9999)
               {
                  if(_loc9_ || this)
                  {
                     §§push(§ U§.§#!p§);
                     if(_loc9_ || this)
                     {
                        addr101:
                        param5 = §§pop();
                        while(true)
                        {
                        }
                        addr102:
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr102);
               }
               while(true)
               {
                  this.§2!d§.§;!0§(§ U§.§6?§,§,!w§.§,!"§,§ U§.§8-§,param2,param3,param4,param1,param5,param6,param7);
                  if(_loc9_ || this)
                  {
                     break;
                  }
                  §§goto(addr101);
               }
               return;
            }
         }
         §§goto(addr101);
      }
      
      public function §"!N§(param1:§7B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§7!J§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§[!s§.useMightyEagle();
            while(true)
            {
               this.§%H§.§<"Z§();
               while(!(_loc1_ && _loc2_))
               {
                  this.§]9§ = true;
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §&"u§(param1:§&#=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§2!d§.§7p§(§,!w§.§#Z§);
         }
         loop0:
         while(true)
         {
            §§push(this.§7!J§);
            if(!(_loc2_ && param1))
            {
               if(§§pop().indexOf(param1) < 0)
               {
                  while(true)
                  {
                     §§push(this.§7!J§);
                     if(!_loc2_)
                     {
                        if(§§pop().length != 0)
                        {
                           break;
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§7!J§ = null;
                        }
                        if(_loc3_ || param1)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                  }
               }
               continue;
               return;
            }
            addr90:
            while(true)
            {
               §§pop().splice(this.§7!J§.indexOf(param1),1);
               §§goto(addr106);
            }
         }
      }
      
      public function shootBird(param1:§`"]§, param2:Number, param3:Number) : §?"N§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§?"N§ = §?"N§(this.§%H§.addObject(param1.name,param1.x,param1.y,0,§;=§.§""3§,true,true,true,param1.scale));
         §§push(param1.§^"+§);
         if(!_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc9_ || this)
         {
            §§push(param1.§<z§);
            if(!_loc8_)
            {
               §§push(1);
               if(!(_loc8_ && param1))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc8_ && this))
                     {
                        _loc4_.§8" §(param1.§<z§);
                        if(!(_loc8_ && param2))
                        {
                           addr82:
                           §§push(param1.§&"D§);
                           if(_loc9_ || this)
                           {
                              addr92:
                              if(§§pop() != 0)
                              {
                                 if(_loc9_ || param3)
                                 {
                                    addr100:
                                    §§push(param1.§&"D§);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc8_ && param1))
                                       {
                                          _loc5_ = §§pop();
                                          addr118:
                                          §§push(_loc5_);
                                          if(_loc8_ && param2)
                                          {
                                          }
                                          addr148:
                                          §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                          if(_loc9_)
                                          {
                                             addr160:
                                             var _loc6_:Number = §§pop();
                                             §§push(_loc5_);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() * param2);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                   if(_loc9_ || this)
                                                   {
                                                   }
                                                   addr185:
                                                   var _loc7_:* = §§pop();
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      _loc4_.§ &§(new b2Vec2(_loc6_,_loc7_),false,true);
                                                      loop0:
                                                      while(true)
                                                      {
                                                         _loc4_.isLeavingTrail = true;
                                                         while(true)
                                                         {
                                                            this.camera.setAction(§,#Q§.§[#H§);
                                                            addr245:
                                                            while(_loc9_)
                                                            {
                                                            }
                                                            continue loop0;
                                                            addr219:
                                                            if(_loc9_ || param2)
                                                            {
                                                               addr228:
                                                               this.§5!;§.shootBird(this.mLevelEngine.§9o§,param1.x,param1.y,param2,param3);
                                                               addr194:
                                                               return _loc4_;
                                                               addr238:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§5!;§);
                                                      if(!(_loc8_ && this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr219);
                                                               }
                                                               §§goto(addr245);
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr160);
                                       }
                                       §§push(-§§pop());
                                       if(_loc9_ || param3)
                                       {
                                          §§push(§§pop() * param2);
                                          if(!_loc8_)
                                          {
                                             §§goto(addr148);
                                          }
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                              }
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr82);
               }
               §§goto(addr92);
            }
            §§goto(addr160);
         }
         §§goto(addr118);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§6P§ = true;
            do
            {
               this.§-z§ = param1;
               do
               {
                  this.§%!i§ = param2;
               }
               while(_loc4_ && _loc3_);
               
            }
            while(_loc4_ && param1);
            
         }
      }
      
      private function §]z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§6P§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  do
                  {
                     this.§6P§ = false;
                     loop2:
                     while(true)
                     {
                        §§push(this.§%H§);
                        if(!_loc1_)
                        {
                           §§push(§§pop().activeObject is §?"N§);
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           if(§§pop())
                           {
                              if(!(_loc1_ && this))
                              {
                                 addr101:
                                 this.§%H§.activateSpecialPower(this.§-z§,this.§%!i§);
                              }
                              while(true)
                              {
                              }
                              addr106:
                           }
                           loop4:
                           while(true)
                           {
                              §§push(this.§5!;§);
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          §§goto(addr125);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§5!;§);
                                          break loop4;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    addr76:
                                 }
                                 §§goto(addr25);
                              }
                              break;
                           }
                           while(true)
                           {
                              §§pop().§ "t§(this.mLevelEngine.§9o§,this.§-z§,this.§%!i§);
                              §§goto(addr76);
                           }
                        }
                        §§goto(addr101);
                     }
                  }
                  while(!_loc2_);
                  
                  addr25:
                  return;
               }
               addr125:
               return;
            }
         }
         §§goto(addr66);
      }
      
      public function §5h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%H§.§5h§();
         }
      }
      
      public function §4"m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%H§.§?"O§();
         }
      }
      
      public function §+@§() : §8!B§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8!B§ = new §8!B§();
         if(_loc2_)
         {
            _loc1_.scoreGold = this.§@!F§.scoreGold;
            while(true)
            {
               _loc1_.scoreSilver = this.§@!F§.scoreSilver;
               loop1:
               for(; _loc2_ || this; if(_loc3_ && _loc3_)
               {
                  continue;
               },§§goto(addr63))
               {
                  this.§#b§.§+#Y§(_loc1_);
                  loop2:
                  while(true)
                  {
                     this.§%H§.§6#O§(_loc1_);
                     loop3:
                     do
                     {
                        this.§[!s§.§6!0§(_loc1_);
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                           addr63:
                           _loc1_.theme = this.§1!C§.§6"c§();
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     while(_loc3_);
                     
                     §§goto(addr38);
                  }
               }
            }
         }
         addr38:
         return _loc1_;
      }
      
      public function §,!C§() : int
      {
         return this.§@!F§.scoreSilver;
      }
      
      public function §5##§() : int
      {
         return this.§@!F§.scoreGold;
      }
      
      public function §`]§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§@!F§.scoreSilver = param1;
         }
      }
      
      public function §@!i§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§@!F§.scoreGold = param1;
         }
      }
      
      public function §!=§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§2!i§ = param1;
            while(true)
            {
               this.§;!r§ = param2;
               while(true)
               {
                  this.§0"`§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§]"!§ = param4;
                     loop3:
                     while(true)
                     {
                        §§push(this.§^K§);
                        if(_loc6_)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§#b§);
                                 if(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_ && param3)
                                       {
                                          addr65:
                                          if(!(_loc5_ && param2))
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       if(_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       addr79:
                                       while(true)
                                       {
                                          §§push(this.§^K§);
                                          addr81:
                                          while(true)
                                          {
                                             §§pop().§>"g§(param1,param2);
                                             continue loop2;
                                          }
                                       }
                                    }
                                    §§goto(addr25);
                                 }
                                 addr53:
                                 §§pop().§"%§(0);
                                 addr100:
                                 §§goto(addr65);
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                              addr25:
                              return;
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr81);
                     }
                  }
               }
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               §§goto(addr100);
            }
         }
         §§goto(addr100);
      }
      
      public function isCollisionExcluded(param1:§7B§, param2:§7B§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §8!B§
      {
         return this.§@!F§;
      }
      
      public function get levelObjects() : §;=§
      {
         return this.§%H§;
      }
      
      protected function get §%"V§() : §3#J§
      {
         return this.§["0§;
      }
      
      public function get §>_§() : int
      {
         return §9Y§;
      }
   }
}
