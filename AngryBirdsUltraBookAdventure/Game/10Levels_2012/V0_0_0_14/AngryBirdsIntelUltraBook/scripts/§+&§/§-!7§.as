package §+&§
{
   import § N§.§!n§;
   import §!!§.§'!$§;
   import §!!§.§->§;
   import §!!§.§>4§;
   import §!!§.LevelManager;
   import §!!X§.§&!E§;
   import §&!h§.§?!K§;
   import §+!r§.§%l§;
   import §+!r§.§@!a§;
   import §,6§.§!o§;
   import §,6§.§>N§;
   import §,6§.§]!f§;
   import §2!!§.§[!A§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §4p§.§#Q§;
   import §5i§.§4!]§;
   import §6z§.§[g§;
   import §8>§.b2Vec2;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import §=!7§.§,F§;
   import §?2§.§3N§;
   import §@4§.§,!]§;
   import §]![§.§+s§;
   import §]![§.§4!H§;
   import §]![§.§4J§;
   import §]![§.§[?§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!7§
   {
      
      private static const §`!H§:int = 20;
      
      public static const §!l§:Number;
      
      public static const §[!V§:Number;
      
      public static const §8!r§:Number = 0.05;
      
      public static const §-%§:Number;
      
      public static const §'!d§:Number;
      
      public static const §>!%§:§?!K§;
      
      protected static var §`>§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!H§ = 20;
            loop0:
            while(true)
            {
               §!l§ = §4!]§.§]m§;
               addr133:
               loop1:
               while(true)
               {
                  §[!V§ = §4!]§.§0N§;
                  while(true)
                  {
                     §8!r§ = 1 / 20;
                     while(!(_loc1_ && _loc2_))
                     {
                        while(true)
                        {
                           §-%§ = §4!]§.§0N§ * §8!r§;
                           continue loop0;
                        }
                        addr69:
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              §`>§ = §>4§.§7H§;
                              addr78:
                              if(_loc1_ && §-!7§)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§goto(addr69);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §>!%§ = new §?!K§(13 - 3);
                                          continue loop7;
                                       }
                                       addr87:
                                    }
                                 }
                                 continue;
                              }
                              addr36:
                              if(!(_loc1_ && _loc2_))
                              {
                                 return;
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
         §§goto(addr121);
      }
      
      protected var §`!O§:§[?§;
      
      private var §4_§:§4!H§;
      
      private var §!e§:Array = null;
      
      protected var §[@§:§#Q§;
      
      public var mLevelEngine:§8Y§;
      
      protected var §=G§:§<T§;
      
      protected var §-<§:§&!E§;
      
      protected var §>c§:§ R§;
      
      protected var §5K§:§,n§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §-!!§:Boolean = false;
      
      protected var §%!V§:Boolean = false;
      
      protected var §+a§:Boolean = false;
      
      public var §&!%§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §@!H§:Number;
      
      public var §0!F§:Number;
      
      private var §]3§:Number;
      
      public var §4!e§:§'!$§;
      
      public var §4!$§:Boolean = false;
      
      private var §]y§:§0!E§;
      
      private var §4!Z§:Sprite;
      
      protected var §^a§:§>4§;
      
      protected var §?!4§:§[!A§ = null;
      
      private var §1$§:EventDispatcher;
      
      private var §8h§:Array;
      
      private var §7w§:Array;
      
      protected var §"!J§:§,!]§;
      
      private var §!!;§:§3N§;
      
      protected var §3!L§:§!o§;
      
      protected var §'@§:§>N§;
      
      private var §<!+§:§]!f§;
      
      private var §4O§:§]!f§;
      
      private var §[T§:§]!f§;
      
      private var §24§:Stage;
      
      private var §!!6§:§^J§;
      
      protected var §;i§:§!n§;
      
      protected var §3E§:§!n§;
      
      protected var §%!B§:Number = 0.0;
      
      protected var §-!m§:String;
      
      private var §'!W§:Boolean;
      
      protected var §?!J§:Boolean;
      
      protected var § if§:uint = 1.417339207E9;
      
      public var §[!a§:Boolean;
      
      public function §-!7§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§7w§ = [];
         }
         loop0:
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§1$§ = new EventDispatcher();
               while(true)
               {
                  this.§4!e§ = new §'!$§();
                  loop3:
                  while(!(_loc3_ && this))
                  {
                     this.§24§ = param1;
                     loop4:
                     while(true)
                     {
                        this.§3!L§ = §!o§.§^Z§;
                        while(true)
                        {
                           this.§'@§ = this.initAnimationManager(this.§3!L§);
                           loop6:
                           while(!_loc3_)
                           {
                              this.§<!+§ = this.initThemeGraphicsManager();
                              loop7:
                              while(!_loc3_)
                              {
                                 continue loop0;
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue loop7;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    this.§[T§ = this.initCutSceneManager();
                                    if(_loc3_)
                                    {
                                       continue;
                                    }
                                    addr27:
                                    if(!_loc4_)
                                    {
                                       continue loop6;
                                    }
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          this.§4O§ = this.initThemeSoundsManager();
                                          continue loop9;
                                          §§goto(addr27);
                                       }
                                       continue loop6;
                                       addr31:
                                    }
                                    var _loc2_:Stage3D = param1.stage3Ds[0];
                                    if(!(_loc3_ && this))
                                    {
                                       this.§"!J§ = new §,!]§(§0!E§,param1,new Rectangle(0,0,§4!]§.§]m§,§4!]§.§0N§),_loc2_);
                                       §4!]§.§7!G§.addEventListener(Event.ENTER_FRAME,this.§"!J§.onEnterFrame);
                                       _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§,!f§,false,0,true);
                                       addr215:
                                       this.§"!J§.§`!1§ = false;
                                       addr263:
                                       addr216:
                                       addr214:
                                       addr247:
                                       addr237:
                                       §§push(this.§"!J§);
                                       §§push(false);
                                       if(!(_loc3_ && this))
                                       {
                                          §§pop().enableErrorChecking = §§pop();
                                          addr201:
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                addr179:
                                                §§push(this.§"!J§);
                                                if(_loc4_ || this)
                                                {
                                                   §§pop().§5n§ = 2;
                                                   addr188:
                                                   §§push(this.§"!J§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§pop().§[!x§();
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(!(_loc4_ || _loc3_))
                                                                  {
                                                                     §§goto(addr263);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr263);
                                                addr210:
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr210);
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §<!U§(param1:§4!H§, param2:§4!H§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§^K§);
         if(_loc5_)
         {
            §§push(§§pop() - param2.§^K§);
            if(_loc5_ || param1)
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§!!L§);
            if(!_loc6_)
            {
               §§push(§§pop() - param2.§!!L§);
               if(_loc5_ || param2)
               {
                  addr66:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return §1a§(_loc3_,_loc4_);
            }
            §§goto(addr66);
         }
         §§goto(addr50);
      }
      
      public static function §1a§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§4!Z§);
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
                        addr98:
                        while(true)
                        {
                           §§push(Boolean(this.§]"§));
                           if(_loc2_ && _loc1_)
                           {
                              continue;
                           }
                           if(!(_loc1_ || _loc2_))
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        this.§4!Z§ = this.§]y§.§,!+§;
                     }
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr98);
      }
      
      public function get §]"§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§]y§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     this.§]y§ = this.§"!J§.§;j§ as §0!E§;
                     loop4:
                     while(true)
                     {
                        §§push(this.§]y§);
                        addr60:
                        while(_loc1_)
                        {
                           §§pop().§<V§ = false;
                           if(_loc2_ && _loc1_)
                           {
                              continue loop4;
                           }
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop0;
                     }
                  }
                  addr77:
               }
               while(true)
               {
                  §§push(this.§]y§);
                  if(_loc1_ || this)
                  {
                     break;
                  }
                  §§goto(addr60);
               }
               return §§pop();
            }
         }
         §§goto(addr77);
      }
      
      private function get §6"§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§]"§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§push(this.§]"§);
                  }
                  else
                  {
                     §§goto(addr46);
                  }
               }
               §§goto(addr46);
            }
            return (§§pop() as §0!E§).§6"§;
         }
         addr46:
         return null;
      }
      
      public function get animationManager() : §>N§
      {
         return this.§'@§;
      }
      
      public function get textureManager() : §!o§
      {
         return this.§3!L§;
      }
      
      public function get camera() : §&!E§
      {
         return this.§-<§;
      }
      
      public function get objects() : §[?§
      {
         return this.§`!O§;
      }
      
      public function get particles() : §,n§
      {
         return this.§5K§;
      }
      
      public function get background() : §#Q§
      {
         return this.§[@§;
      }
      
      public function get slingshot() : § R§
      {
         return this.§>c§;
      }
      
      public function get activeObject() : §4!H§
      {
         return this.§4_§;
      }
      
      public function get §<!x§() : §<T§
      {
         return this.§=G§;
      }
      
      public function get stage() : Stage
      {
         return this.§24§;
      }
      
      public function get §9<§() : §]!f§
      {
         return this.§[T§;
      }
      
      protected function get §]!J§() : §]!f§
      {
         return this.§<!+§;
      }
      
      public function set activeObject(param1:§4!H§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§4_§ = param1;
         }
      }
      
      public function set §'#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§?!J§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§!!;§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr227:
                  while(true)
                  {
                     §§push(this.§!!;§);
                     addr229:
                     while(true)
                     {
                        §§pop().dispose();
                        addr230:
                        while(true)
                        {
                        }
                     }
                  }
                  addr227:
               }
               loop0:
               while(true)
               {
                  §§push(this.§3!L§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§3!L§);
                           addr220:
                           while(true)
                           {
                              §§pop().dispose();
                              addr221:
                              while(true)
                              {
                              }
                           }
                        }
                        addr218:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§<!+§);
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       loop20:
                                       while(true)
                                       {
                                          §§push(this.§<!+§);
                                          if(!_loc1_)
                                          {
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop().textureManager);
                                             loop21:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop22:
                                                while(_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§push(this.§<!+§);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().textureManager);
                                                                  addr185:
                                                                  while(true)
                                                                  {
                                                                     §§pop().dispose();
                                                                     addr186:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  continue loop20;
                                                               }
                                                               addr184:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr227);
                                                            }
                                                         }
                                                         continue loop0;
                                                         addr180:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§[T§);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr158:
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc1_ && _loc1_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  addr166:
                                                                  §§push(this.§[T§);
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(§§pop().textureManager);
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!(_loc2_ || this))
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              addr91:
                                                                              if(_loc1_ && this)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc1_ && this))
                                                                                    {
                                                                                       if(!(_loc1_ && this))
                                                                                       {
                                                                                          §§push(this.§[T§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().textureManager);
                                                                                             break loop17;
                                                                                             §§goto(addr166);
                                                                                          }
                                                                                          addr126:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr180);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr49:
                                                                                       if(_loc1_ && _loc1_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr56:
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§goto(addr20);
                                                                                       }
                                                                                       §§goto(addr218);
                                                                                    }
                                                                                    addr135:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§"!J§);
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc1_ && _loc1_))
                                                                                          {
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                addr48:
                                                                                                this.§"!J§.dispose();
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr186);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr49);
                                                                                       }
                                                                                       addr20:
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr48);
                                                                                 }
                                                                                 §§goto(addr56);
                                                                                 §§goto(addr91);
                                                                              }
                                                                           }
                                                                           §§goto(addr185);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr126);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc1_ && this)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  §§pop().dispose();
                                                                  §§goto(addr135);
                                                               }
                                                               continue loop21;
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                continue loop20;
                                             }
                                          }
                                          §§goto(addr184);
                                       }
                                       continue loop3;
                                    }
                                    addr210:
                                 }
                                 §§goto(addr178);
                              }
                           }
                           §§goto(addr210);
                        }
                     }
                  }
                  §§goto(addr220);
               }
            }
            §§goto(addr229);
         }
         §§goto(addr227);
      }
      
      protected function initThemeGraphicsManager() : §]!f§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §]!f§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §]!f§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§!o§) : §>N§
      {
         return new §>N§(param1);
      }
      
      public function §1B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(§,!]§.§!9§);
            loop0:
            for(; §§pop(); if(!(_loc2_ && param1))
            {
               §§pop().color = 0;
               if(!_loc3_)
               {
                  §§goto(addr74);
               }
               break;
            })
            {
               loop1:
               while(!param1)
               {
                  §§push(§,!]§.§!9§);
                  loop2:
                  while(_loc3_)
                  {
                     §§pop().stop();
                     while(!_loc2_)
                     {
                        if(_loc2_ && _loc3_)
                        {
                           break loop1;
                        }
                        if(!(_loc2_ && this))
                        {
                           §§push(§,!]§.§!9§);
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                           continue loop2;
                        }
                        continue loop1;
                     }
                     break loop0;
                  }
                  §§pop().start();
                  §§goto(addr99);
               }
               §§goto(addr98);
               §§push(§,!]§.§!9§);
            }
            return;
         }
         §§goto(addr99);
      }
      
      public function §+!b§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.sprite);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().visible = param1;
         }
         addr45:
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.sprite);
         }
      }
      
      public function setController(param1:§[!A§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§?!4§);
            while(true)
            {
               if(§§pop() != null)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this.§?!4§);
                     while(true)
                     {
                        §§pop().removeEventListeners();
                     }
                     addr95:
                  }
                  while(true)
                  {
                  }
                  addr96:
               }
               while(true)
               {
                  this.§?!4§ = param1;
               }
               addr51:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§pop().addEventListeners();
               §§goto(addr69);
            }
         }
         while(this.mReadyToRun)
         {
            if(_loc3_ || this)
            {
               if(_loc2_)
               {
                  continue;
               }
               §§push(this.§?!4§);
               if(!_loc2_)
               {
                  §§goto(addr51);
               }
               §§goto(addr95);
            }
            §§goto(addr69);
         }
         addr69:
         if(_loc2_ && this)
         {
            §§goto(addr96);
         }
      }
      
      public function §9!k§() : §!n§
      {
         return this.§;i§;
      }
      
      public function §%'§(param1:§3N§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            this.§!!;§ = param1;
         }
         §§push(this.§!!;§.§?%§);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(_loc6_ || param3)
               {
                  if(param3 != null)
                  {
                     loop1:
                     while(true)
                     {
                        this.§1$§.addEventListener(Event.INIT,param3);
                        addr126:
                        while(true)
                        {
                           this.§7w§.push(param3);
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.§^!V§(param2))
                     {
                        if(_loc6_)
                        {
                           if(!_loc7_)
                           {
                              if(!(_loc7_ && param3))
                              {
                                 if(!(_loc6_ || param1))
                                 {
                                    continue loop0;
                                 }
                                 this.§%!7§();
                                 addr41:
                                 return;
                                 addr80:
                              }
                              else
                              {
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr41);
                     §§goto(addr93);
                  }
                  §§goto(addr139);
               }
               §§goto(addr126);
            }
            else
            {
               this.§3!L§.§4!c§(this.§!!;§.§6!q§(_loc5_));
            }
            §§goto(addr93);
         }
      }
      
      private function §^!V§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            §§push(this.§3!L§);
            loop0:
            while(true)
            {
               §§push(§§pop().§"!A§());
               loop1:
               while(!§§pop())
               {
                  loop2:
                  do
                  {
                     this.§8h§ = param1.concat();
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           if(_loc4_ || this)
                           {
                              §§push(false);
                              if(!_loc5_)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    return §§pop();
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(this.§3!L§);
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 addr183:
                                 while(true)
                                 {
                                    §§push(§§pop().§,G§);
                                    addr184:
                                    while(true)
                                    {
                                       §§push(1000);
                                       addr185:
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          addr186:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             continue loop10;
                                          }
                                       }
                                    }
                                    addr168:
                                    _loc3_ = §§pop();
                                    while(_loc5_ && this)
                                    {
                                       break loop1;
                                       §§goto(addr168);
                                    }
                                    §§push(§[g§);
                                    §§push("\n\nMain texture manager memory usage:\n   textures ");
                                    if(_loc4_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc5_)
                                          {
                                             §§push(" kilobytes\n   bitmaps ");
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc5_)
                                                {
                                                   addr118:
                                                   §§push(§§pop() + _loc3_);
                                                   if(_loc4_ || this)
                                                   {
                                                      §§push(" kilobytes\n\n");
                                                   }
                                                   §§pop().log(§§pop());
                                                   break loop2;
                                                }
                                                §§goto(addr118);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                       }
                                    }
                                    §§goto(addr118);
                                    continue loop10;
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(true);
                           addr74:
                        }
                        return §§pop();
                     }
                  }
                  while(!(_loc5_ && param1));
                  
                  while(_loc5_ && this)
                  {
                     §§goto(addr168);
                     §§goto(addr118);
                  }
                  this.initializeAnimations(param1);
                  §§goto(addr74);
               }
               while(true)
               {
                  §§goto(addr183);
               }
            }
         }
         §§goto(addr126);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§'@§.initializeAnimations(param1);
         }
      }
      
      private function §,!f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§3!L§.§#!Y§();
            loop0:
            while(true)
            {
               §§push(this.§]!J§);
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
                           while(true)
                           {
                              §§pop();
                              addr352:
                              while(true)
                              {
                                 §§push(this.§]!J§);
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop().textureManager);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                           }
                           addr351:
                        }
                        while(true)
                        {
                           loop46:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§9<§);
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
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(this.§9<§);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop().textureManager);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                                  loop43:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop44:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9<§);
                                                                           addr289:
                                                                           while(_loc3_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().textureManager);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§#!Y§();
                                                                                 addr298:
                                                                                 while(_loc3_ || param1)
                                                                                 {
                                                                                 }
                                                                                 continue loop15;
                                                                                 addr87:
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                              }
                                                                              continue loop44;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr287:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(this.§8h§)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§^!V§(this.§8h§);
                                                                              addr275:
                                                                              while(true)
                                                                              {
                                                                                 this.§8h§ = null;
                                                                                 addr266:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§%!7§();
                                                                                    addr261:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr271:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§?!4§);
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == null);
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    loop28:
                                                                                    while(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop29:
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ && this))
                                                                                                {
                                                                                                   §§push(this.mReadyToRun);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc2_ && _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop43;
                                                                                                      }
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      if(!(_loc3_ || this))
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr333:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§]!J§);
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   addr333:
                                                                                                }
                                                                                             }
                                                                                             continue loop27;
                                                                                          }
                                                                                          §§goto(addr351);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§?!4§);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§pop().addEventListeners();
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                             }
                                                                                             continue loop26;
                                                                                             addr216:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§<!+§);
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         if(!(_loc2_ && this))
                                                                                                         {
                                                                                                            §§push(this.§<!+§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§"!A§();
                                                                                                               addr179:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr57);
                                                                                                                           }
                                                                                                                           addr185:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr287);
                                                                                                                        }
                                                                                                                        §§goto(addr297);
                                                                                                                     }
                                                                                                                     §§goto(addr266);
                                                                                                                  }
                                                                                                                  §§goto(addr261);
                                                                                                               }
                                                                                                            }
                                                                                                            addr178:
                                                                                                         }
                                                                                                         §§goto(addr298);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr271);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr275);
                                                                                                }
                                                                                                addr57:
                                                                                                addr25:
                                                                                                loop36:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§[T§);
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(this.§[T§);
                                                                                                            if(!(_loc2_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop().textureManager);
                                                                                                               if(!(_loc2_ && param1))
                                                                                                               {
                                                                                                                  §§goto(addr87);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§#!Y§();
                                                                                                                     addr129:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop37;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr129);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               if(!(_loc2_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(this.§[T§);
                                                                                                                  if(!(_loc2_ && this))
                                                                                                                  {
                                                                                                                     §§pop().§"!A§();
                                                                                                                     if(_loc2_ && param1)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc2_ && _loc3_))
                                                                                                                        {
                                                                                                                           break loop36;
                                                                                                                        }
                                                                                                                        break loop35;
                                                                                                                     }
                                                                                                                     §§goto(addr250);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr129);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop35;
                                                                                                         }
                                                                                                         §§goto(addr352);
                                                                                                         addr131:
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr129);
                                                                                                   continue loop48;
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr178);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop46;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr285:
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         continue loop46;
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                }
                                             }
                                             §§goto(addr285);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr333);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr185);
      }
      
      private function §%!7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1$§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§@!M§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function §@!M§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         var _loc3_:* = this.§7w§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc5_)
            {
               this.§1$§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            this.§7w§ = [];
         }
      }
      
      public function init(param1:§>4§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
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
                     addr316:
                     while(true)
                     {
                     }
                  }
                  addr314:
               }
               while(true)
               {
                  this.§=G§ = new §<T§(this,param1);
                  while(true)
                  {
                     this.§-<§ = this.§8!R§(param1);
                     loop5:
                     while(true)
                     {
                        this.§@!H§ = 0;
                        while(true)
                        {
                           this.§0!F§ = 0;
                           loop7:
                           while(true)
                           {
                              this.§]3§ = 0;
                              while(true)
                              {
                                 this.§'!W§ = false;
                                 loop9:
                                 for(; !(_loc3_ && _loc3_); if(_loc3_ && this)
                                 {
                                    continue;
                                 },if(!_loc2_)
                                 {
                                    continue loop7;
                                 },§§push(this.§+a§),if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(Boolean(§§pop()));
                                 },if(!_loc3_)
                                 {
                                    addr89:
                                    if(_loc2_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§goto(addr105);
                                             }
                                             §§goto(addr115);
                                          }
                                          else
                                          {
                                             this.§;!$§(param1.theme);
                                          }
                                          §§goto(addr68);
                                       }
                                       §§goto(addr209);
                                       addr96:
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr96);
                                       }
                                       §§goto(addr89);
                                    }
                                    addr158:
                                 },§§goto(addr160))
                                 {
                                    this.mReadyToRun = false;
                                    loop10:
                                    while(true)
                                    {
                                       this.§-!!§ = false;
                                       addr253:
                                       while(true)
                                       {
                                          this.mPigsAnimationTimer1 = 2000;
                                          loop12:
                                          while(!(_loc3_ && param1))
                                          {
                                             this.mPigsAnimationTimer2 = 1000;
                                             while(true)
                                             {
                                                §`>§ = param1.theme;
                                                continue loop5;
                                                addr122:
                                                if(!(_loc2_ || this))
                                                {
                                                   continue;
                                                }
                                                loop21:
                                                while(true)
                                                {
                                                   this.§"'§();
                                                   addr49:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         addr202:
                                                         while(_loc2_)
                                                         {
                                                            this.§+a§ = this.§^m§(param1.theme);
                                                            while(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(this.§%!V§);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr160:
                                                               addr160:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         continue loop12;
                                                      }
                                                      addr68:
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            continue loop21;
                                                         }
                                                         addr115:
                                                         addr115:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§goto(addr122);
                                                            }
                                                            continue loop23;
                                                         }
                                                         continue loop9;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr163:
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop9;
                                                         }
                                                         §§goto(addr187);
                                                         §§goto(addr160);
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          §§goto(addr314);
                                          addr209:
                                          while(_loc2_ || param1)
                                          {
                                             this.§%!V§ = this.§,!`§(param1.theme);
                                             §§goto(addr202);
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             this.initialize(param1);
                                             §§goto(addr115);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc2_ || _loc3_)
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr253);
      }
      
      protected function §"'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;i§ = new §!n§(LevelManager.§^!F§);
         }
      }
      
      protected function §,!`§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§<!+§)
            {
               if(_loc2_ || param1)
               {
                  addr38:
                  §§push(false);
                  if(_loc2_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr47:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr38);
      }
      
      protected function §^m§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%l§ = null;
         if(_loc4_ || _loc2_)
         {
            if(this.§4O§)
            {
               addr30:
               _loc2_ = §@!a§.§^!o§(param1);
               if(_loc4_ || _loc2_)
               {
                  if(_loc2_)
                  {
                     if(_loc4_)
                     {
                        §§push(Boolean(_loc2_.§5!e§));
                        if(_loc4_ || param1)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 if(!(_loc3_ && param1))
                                 {
                                    addr88:
                                    §§push(this.§4O§.§0!$§(_loc2_.§5!e§));
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr100:
                                       §§push(!§§pop());
                                       if(_loc4_)
                                       {
                                          §§goto(addr103);
                                       }
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr111);
                              }
                              return §§pop();
                           }
                           addr103:
                           if(§§pop())
                           {
                              if(_loc4_ || param1)
                              {
                                 addr111:
                                 §§push(false);
                              }
                              else
                              {
                                 §§goto(addr113);
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr113);
               }
               §§goto(addr111);
            }
            addr113:
            return true;
         }
         §§goto(addr30);
      }
      
      protected function §;!$§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%l§ = null;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§<!+§);
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
                              §§push(this.§,!`§(param1));
                              while(true)
                              {
                                 if(_loc4_ && param1)
                                 {
                                    break;
                                    addr272:
                                 }
                                 §§push(!§§pop());
                                 while(_loc3_ || _loc2_)
                                 {
                                 }
                                 continue loop1;
                                 loop21:
                                 while(!(_loc4_ && _loc3_))
                                 {
                                    §§pop();
                                    loop22:
                                    while(_loc3_ || param1)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§^m§(param1));
                                          if(_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop21;
                                             }
                                             §§push(!§§pop());
                                          }
                                          if(!(_loc4_ && this))
                                          {
                                             loop23:
                                             while(§§pop())
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop22;
                                                   }
                                                   §§push(this.§4O§);
                                                   loop30:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§pop().removeEventListener(Event.COMPLETE,this.§-!]§);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            §§push(this.§4O§);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§pop().removeEventListener(Event.CANCEL,this.§[x§);
                                                               loop26:
                                                               while(_loc3_ || this)
                                                               {
                                                                  addr102:
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(_loc4_ && this)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§4O§);
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              §§pop().addEventListener(Event.COMPLETE,this.§-!]§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§4O§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop25;
                                                                                 }
                                                                                 continue loop28;
                                                                                 addr39:
                                                                                 §§pop().addEventListener(Event.CANCEL,this.§[x§);
                                                                                 if(!(_loc3_ || _loc3_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                                 if(_loc4_ && this)
                                                                                 {
                                                                                    break loop27;
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          _loc2_ = §@!a§.§^!o§(param1);
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.§4O§.§1m§(_loc2_.§5!e§);
                                                                                                   break loop23;
                                                                                                }
                                                                                                break loop23;
                                                                                             }
                                                                                             break loop23;
                                                                                          }
                                                                                       }
                                                                                       continue loop27;
                                                                                       break loop23;
                                                                                    }
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§<!+§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().removeEventListener(Event.CANCEL,this.§[!]§);
                                                                                          addr236:
                                                                                          while(_loc3_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§pop().addEventListener(Event.COMPLETE,this.§?R§);
                                                                                                break loop22;
                                                                                             }
                                                                                             addr283:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().removeEventListener(Event.COMPLETE,this.§?R§);
                                                                                                continue loop10;
                                                                                             }
                                                                                             while(_loc3_ || _loc2_)
                                                                                             {
                                                                                                continue loop0;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§<!+§);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§pop().§1m§(param1);
                                                                                                      break loop27;
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr102);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr236);
                                                                                 }
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           continue loop30;
                                                                        }
                                                                        continue loop30;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§4O§);
                                                                              break loop24;
                                                                           }
                                                                           addr169:
                                                                        }
                                                                        break;
                                                                        §§goto(addr53);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr283);
                                                                        §§goto(addr202);
                                                                     }
                                                                     addr202:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr232);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               continue loop24;
                                                            }
                                                         }
                                                         addr168:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr173:
                                                         while(!_loc4_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop21;
                                                               }
                                                               continue loop23;
                                                            }
                                                            continue loop2;
                                                         }
                                                         §§goto(addr272);
                                                         continue loop30;
                                                      }
                                                   }
                                                }
                                                §§goto(addr168);
                                             }
                                             return;
                                          }
                                          §§goto(addr173);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr213);
                                       §§goto(addr187);
                                    }
                                    addr187:
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr169);
                        }
                        §§goto(addr281);
                     }
                  }
               }
            }
         }
         §§goto(addr194);
      }
      
      private function §?R§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§<!+§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§?R§);
               loop1:
               while(true)
               {
                  §§push(this.§<!+§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§[!]§);
                  loop2:
                  while(true)
                  {
                     this.§%!V§ = true;
                     loop3:
                     for(; !_loc2_; loop7:
                     for(; !(_loc2_ && _loc3_); §§goto(addr95))
                     {
                        while(true)
                        {
                           §§push(this.§+a§);
                           if(_loc3_ || param1)
                           {
                              if(_loc2_ && _loc3_)
                              {
                                 continue loop7;
                              }
                              §§goto(addr41);
                           }
                           §§goto(addr50);
                        }
                     })
                     {
                        §§push(this.§%!V§);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_ || _loc3_)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    addr50:
                                    while(§§pop())
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          this.initialize(this.§^a§);
                                       }
                                       if(!(_loc2_ && param1))
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                    addr48:
                                 }
                              }
                           }
                           addr95:
                           while(true)
                           {
                              §§pop();
                              continue loop3;
                           }
                           addr41:
                           if(_loc2_ && param1)
                           {
                              continue;
                           }
                           §§goto(addr48);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      private function §[!]§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§<!+§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§?R§);
               while(true)
               {
                  §§push(this.§<!+§);
                  if(_loc3_ && param1)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§[!]§);
                  loop2:
                  while(!(_loc3_ && this))
                  {
                     while(true)
                     {
                        this.§-!!§ = true;
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §-!]§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§<!+§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§-!]§);
               loop1:
               while(true)
               {
                  §§push(this.§<!+§);
                  if(_loc2_ && _loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§[x§);
                  while(true)
                  {
                     this.§+a§ = true;
                     loop3:
                     while(_loc3_)
                     {
                        §§push(this.§%!V§);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc2_ && param1))
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr88:
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§+a§);
                                       if(_loc3_ || this)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop7;
                                          }
                                          addr41:
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             break loop6;
                                             §§goto(addr41);
                                          }
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             this.initialize(this.§^a§);
                                          }
                                          else
                                          {
                                             §§goto(addr88);
                                          }
                                       }
                                       break;
                                    }
                                    return;
                                 }
                                 addr87:
                              }
                              §§goto(addr42);
                           }
                        }
                        §§goto(addr87);
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private function §[x§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§<!+§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§-!]§);
               addr129:
               while(true)
               {
                  §§push(this.§<!+§);
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§[x§);
                  loop2:
                  while(true)
                  {
                     this.§+a§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§%!V§);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(§§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             this.initialize(this.§^a§);
                                             continue loop3;
                                          }
                                          addr103:
                                          while(!_loc2_)
                                          {
                                             §§push(this.§+a§);
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    addr20:
                                    return;
                                 }
                                 continue;
                                 addr44:
                              }
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr103);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      public function get backgroundTextureManager() : §!o§
      {
         return this.§3!L§;
      }
      
      protected function initialize(param1:§>4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!J§ = false;
            loop0:
            while(true)
            {
               this.§[!a§ = false;
               while(true)
               {
                  §§push(§,!]§.§+!Z§);
                  if(_loc3_ || param1)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           this.mLevelEngine = new §8Y§(this);
                           while(!(_loc2_ && this))
                           {
                              §§push(this);
                              §§push(this);
                              §§push(param1.theme);
                              §§push(this.§=G§.§;2§);
                              if(_loc3_ || param1)
                              {
                                 §§push(§§pop() / §8!r§);
                              }
                              §§pop().§[@§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§-<§.§%!y§());
                              loop7:
                              while(true)
                              {
                                 this.§[@§.§0g§(§4!]§.§;!;§());
                                 loop8:
                                 while(true)
                                 {
                                    this.§`!O§ = this.initLevelObjectManager(param1);
                                    addr127:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          addr129:
                                          if(!(_loc3_ || this))
                                          {
                                             break;
                                          }
                                          this.§>c§ = this.initLevelSlingshot(param1);
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                        continue loop0;
                        addr169:
                     }
                     while(true)
                     {
                        §§push(§,!]§.§+!Z§);
                        §§goto(addr129);
                     }
                  }
                  while(true)
                  {
                     §§pop().speed = 1;
                     continue loop0;
                  }
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  this.§-<§.init();
                  §§goto(addr68);
               }
            }
         }
         §§goto(addr168);
      }
      
      protected function §5!V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§-!m§)
            {
               while(true)
               {
                  this.§3E§ = §!n§.initialize(this.§-!m§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§3E§);
                     loop2:
                     while(true)
                     {
                        §§pop().speed = 1;
                        addr79:
                        while(_loc2_ || _loc2_)
                        {
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      public function §9%§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§-!m§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§3E§ == null);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§3E§);
            while(§§pop())
            {
               while(param1)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§3E§);
                     break;
                  }
               }
               break;
               §§pop().speed = Math.min(this.§3E§.speed * 1.25,Math.pow(1.25,2));
               §§goto(addr117);
            }
            return;
         }
         §§goto(addr90);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§3E§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().speed = 1;
         }
         addr44:
         if(_loc1_ || this)
         {
            §§push(this.§3E§);
         }
      }
      
      protected function initLevelObjectManager(param1:§>4§) : §[?§
      {
         return new §[?§(this,param1,new Sprite());
      }
      
      protected function §8!R§(param1:§>4§) : §&!E§
      {
         return new §&!E§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§!o§, param4:Number) : §#Q§
      {
         return new §#Q§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§>4§) : § R§
      {
         return new § R§(this,param1,new Sprite());
      }
      
      protected function §8!^§(param1:§>N§, param2:§!o§) : §,n§
      {
         return new §,n§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            if(this.mReadyToRun)
            {
               if(_loc7_)
               {
                  addr29:
                  this.clearLevel();
               }
            }
            var _loc3_:§>4§ = this.§@d§();
            var _loc4_:§->§;
            (_loc4_ = new §->§()).left = 0;
            if(_loc7_)
            {
               §§push(_loc4_);
               §§push(§&!E§.§#!b§);
               if(!_loc6_)
               {
                  §§push(-§§pop());
                  if(!(_loc6_ && this))
                  {
                     §§push(10);
                     if(_loc7_ || param2)
                     {
                        addr153:
                        §§push(§§pop() / §§pop());
                        if(!(_loc6_ && param2))
                        {
                           addr151:
                           §§push(8);
                        }
                        §§pop().top = §§pop();
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop() + §&!E§.§#!b§);
                           }
                           §§pop().bottom = §§pop();
                           loop1:
                           while(!(_loc6_ && param2))
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop() + §&!E§.§]F§);
                              }
                              §§pop().right = §§pop();
                              loop2:
                              while(true)
                              {
                                 _loc4_.y = -13.929;
                                 loop3:
                                 for(; _loc7_; if(_loc6_ && _loc3_)
                                 {
                                    continue;
                                 },if(_loc6_)
                                 {
                                    continue loop2;
                                 },while(false)
                                 {
                                    §§goto(addr62);
                                 },var _loc5_:§->§,(_loc5_ = new §->§()).top = _loc4_.top,if(!_loc6_)
                                 {
                                    _loc5_.bottom = _loc4_.bottom;
                                    while(true)
                                    {
                                       _loc5_.left = 150;
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          §§push(_loc5_.left);
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(§§pop() + §&!E§.§]F§);
                                          }
                                          §§pop().right = §§pop();
                                          addr357:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             §§push(_loc5_.top);
                                             if(_loc7_ || param2)
                                             {
                                                §§push(§§pop() + §&!E§.§#!b§);
                                             }
                                             §§pop().bottom = §§pop();
                                             addr341:
                                             while(true)
                                             {
                                                _loc5_.y = _loc4_.y;
                                             }
                                             addr195:
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                return;
                                             }
                                          }
                                          addr254:
                                          if(_loc6_ && param1)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             this.init(_loc3_);
                                             if(_loc7_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr188:
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§goto(addr195);
                                                   }
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(param1);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(null);
                                                            addr241:
                                                            addr242:
                                                            while(§§pop() == §§pop())
                                                            {
                                                               continue loop17;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc3_.theme = param1;
                                                               addr245:
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     addr247:
                                                                     if(_loc6_ && _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                                  addr281:
                                                                  while(true)
                                                                  {
                                                                     this.§[!-§(_loc3_,param2);
                                                                     continue loop16;
                                                                  }
                                                               }
                                                               addr287:
                                                               while(_loc7_)
                                                               {
                                                                  _loc3_.§0h§(_loc5_);
                                                                  §§goto(addr281);
                                                                  §§goto(addr247);
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc5_.id = §&!E§.§"e§;
                                                                  §§goto(addr287);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr315:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         §§push(_loc5_.left);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(§&!E§.§]F§);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() / 2);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().x = §§pop();
                                                         §§goto(addr287);
                                                         continue loop16;
                                                      }
                                                   }
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr228);
                                          }
                                       }
                                       if(!(_loc7_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       §§goto(addr180);
                                    }
                                 },§§goto(addr315))
                                 {
                                    _loc4_.x = §&!E§.§]F§;
                                    loop4:
                                    while(true)
                                    {
                                       addr62:
                                       while(true)
                                       {
                                          _loc4_.id = §&!E§.§-!D§;
                                          while(!_loc6_)
                                          {
                                             _loc3_.§0h§(_loc4_);
                                             if(_loc7_)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr153);
               }
               §§goto(addr151);
            }
            §§goto(addr60);
         }
         §§goto(addr29);
      }
      
      protected function §[!-§(param1:§>4§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(param2)
            {
               if(_loc3_)
               {
                  addr27:
                  this.§6!J§(param1);
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      protected function §@d§() : §>4§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>4§ = new §>4§();
         if(_loc3_)
         {
            _loc1_.§;!>§ = -12;
         }
         return new §>4§();
      }
      
      protected function §8M§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§ if§ ^= this.§ if§ << 21;
            do
            {
               §§push(this);
               §§push(this.§ if§);
               §§push(this.§ if§);
               if(_loc2_ || this)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§ if§ = §§pop() ^ §§pop();
               do
               {
                  this.§ if§ ^= this.§ if§ << 4;
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(_loc1_ && _loc1_);
            
         }
         return this.§ if§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §6!J§(param1:§>4§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§,F§ = null;
         if(_loc7_)
         {
            §§push(this);
            §§push(0.33);
            if(_loc7_ || param1)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§ if§ = §§pop();
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
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(_loc7_ || param1)
                  {
                     _loc3_ = §§pop();
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     do
                     {
                        §§push(_loc3_);
                     }
                     while(!_loc6_);
                     
                     continue loop1;
                     addr469:
                  }
                  while(true)
                  {
                     §§push(5);
                     if(_loc6_)
                     {
                        continue loop2;
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§push(this.§8M§());
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop() * 5);
                     }
                     §§push(int(§§pop()));
                     if(!(_loc7_ || this))
                     {
                        continue loop1;
                     }
                     _loc4_ = §§pop();
                     if(_loc6_ && param1)
                     {
                        break;
                     }
                     §§push(_loc5_ = new §,F§());
                     §§push(30 + _loc3_ * 10);
                     if(!_loc6_)
                     {
                        §§push(this.§8M§());
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() * 9);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().x = §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        §§push(_loc2_);
                        loop5:
                        while(true)
                        {
                           §§push(0);
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(_loc5_);
                                 §§push(-100 + _loc2_ * 6);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(this.§8M§());
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(§§pop() * 3);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc7_)
                                          {
                                             addr368:
                                             §§push(§§pop() - _loc3_ * 8);
                                          }
                                          §§pop().y = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc7_ || this)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc7_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() + §§pop() * _loc3_);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_ && _loc2_)
                                                                  {
                                                                  }
                                                                  addr297:
                                                                  §§push(int(§§pop()));
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           addr315:
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              addr323:
                                                                              loop36:
                                                                              while(_loc7_)
                                                                              {
                                                                                 §§push(2);
                                                                                 loop8:
                                                                                 while(§§pop() >= §§pop())
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!(_loc7_ || param1))
                                                                                    {
                                                                                       continue loop36;
                                                                                    }
                                                                                    §§push(3);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_.id = "BIRD_YELLOW";
                                                                                          }
                                                                                          addr243:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc5_.id = "BIRD_BLUE";
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      §§push(this.§8M§());
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() * 360);
                                                                                                      }
                                                                                                      §§pop().angle = §§pop();
                                                                                                      addr185:
                                                                                                      while(_loc6_ && _loc3_)
                                                                                                      {
                                                                                                         while(_loc7_)
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_.y = 0;
                                                                                                            addr468:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr444:
                                                                                                               §§push(_loc3_);
                                                                                                               break loop36;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      if(_loc6_ && _loc2_)
                                                                                                      {
                                                                                                         addr420:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_.id = "PIG_MUSTACHE";
                                                                                                            addr423:
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr373:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  §§push(45);
                                                                                                                  §§push(this.§8M§());
                                                                                                                  if(_loc7_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * 90);
                                                                                                                  }
                                                                                                                  §§pop().angle = §§pop() - §§pop();
                                                                                                                  addr389:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr420:
                                                                                                      }
                                                                                                      addr152:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.addObject(_loc5_);
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      §§goto(addr468);
                                                                                                   }
                                                                                                   addr171:
                                                                                                }
                                                                                                §§goto(addr389);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§goto(addr171);
                                                                                                   }
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(2);
                                                                                                         addr427:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(_loc7_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop16:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr443:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 addr401:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(4);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr420);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   _loc5_.id = "PIG_HELMET";
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr423);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr373);
                                                                                                                                                      addr163:
                                                                                                                                                      if(!(_loc7_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      _loc3_++;
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         continue loop7;
                                                                                                                                                      }
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc7_ || this))
                                                                                                                                                            {
                                                                                                                                                               break loop8;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               while(false)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr152);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr469);
                                                                                                                                                               addr150:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr468);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr444);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr243);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr185);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr423);
                                                                                                                                             }
                                                                                                                                             addr418:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                          }
                                                                                                                                          addr447:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          break loop17;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr442:
                                                                                                                        }
                                                                                                                        §§goto(addr418);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        break loop15;
                                                                                                                     }
                                                                                                                     §§goto(addr437);
                                                                                                                  }
                                                                                                                  addr437:
                                                                                                               }
                                                                                                               break loop15;
                                                                                                            }
                                                                                                            §§goto(addr442);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr246:
                                                                                             }
                                                                                             §§goto(addr420);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr246);
                                                                                    }
                                                                                    §§goto(addr406);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_.id = "BIRD_RED";
                                                                                    §§goto(addr330);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr447);
                                                                                 §§goto(addr468);
                                                                              }
                                                                              addr323:
                                                                           }
                                                                           §§goto(addr427);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr401);
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                               addr296:
                                                               §§goto(addr297);
                                                               §§push(§§pop() % §§pop());
                                                            }
                                                            §§push(5);
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   §§goto(addr315);
                                                }
                                                §§goto(addr323);
                                             }
                                             §§goto(addr443);
                                          }
                                          continue;
                                       }
                                    }
                                 }
                                 §§goto(addr368);
                              }
                              §§goto(addr465);
                           }
                        }
                     }
                     §§goto(addr150);
                  }
                  _loc2_++;
                  if(!_loc7_)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
      }
      
      private function § !c§() : void
      {
      }
      
      public function §]G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§#Q§.§2I§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§2D§(this.§[@§.§[o§,false);
                     addr198:
                     while(true)
                     {
                     }
                  }
                  addr192:
               }
               addr172:
               while(true)
               {
                  this.§2D§(this.§5K§.§`!%§(§,n§.§'!n§),false);
                  addr181:
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§2D§(this.§5K§.§`!%§(§,n§.§implements§),true);
                     }
                     else
                     {
                        §§goto(addr192);
                     }
                  }
                  §§goto(addr198);
               }
            }
            addr191:
         }
         loop5:
         while(true)
         {
            this.§2D§(this.§5K§.§`!%§(§,n§.§?J§),true);
            loop6:
            while(true)
            {
               this.§2D§(this.§`!O§.§47§,true);
               while(true)
               {
                  this.§2D§(this.§>c§.sprite,true);
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        this.§2D§(this.§5K§.§`!%§(§,n§.§9!&§),true);
                        continue;
                     }
                     continue loop5;
                  }
                  §§goto(addr181);
                  loop10:
                  while(_loc1_ || _loc2_)
                  {
                     §§push(§#Q§.§2I§);
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§2D§(this.§[@§.§]!=§,false);
                              addr77:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    while(true)
                                    {
                                       this.§2D§(this.§5K§.§`!%§(§,n§.§0,§),true);
                                       addr57:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr172);
                                    }
                                    addr48:
                                 }
                                 §§goto(addr198);
                              }
                           }
                           addr71:
                        }
                        §§goto(addr48);
                        addr66:
                        §§push(§8Y§.§`!2§);
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          §§goto(addr45);
                                       }
                                       continue loop10;
                                    }
                                    §§goto(addr71);
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr57);
                           }
                           addr45:
                           return;
                        }
                        §§goto(addr191);
                        §§goto(addr172);
                     }
                  }
               }
            }
         }
      }
      
      private function §2D§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.sprite);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().addChild(param1);
         }
         addr49:
         if(_loc3_ || param2)
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(§4!]§.§4?§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr153:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr106:
                  §§push(§4!]§.§4?§);
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  §§push(§§pop() / §§pop());
                  if(!(_loc5_ && this))
                  {
                     addr133:
                     §§push(Number(§§pop()));
                  }
                  if(_loc4_ || this)
                  {
                     if(!_loc5_)
                     {
                        param2 = §§pop();
                        loop4:
                        while(!_loc5_)
                        {
                           _loc3_.x = (param1 / §&!E§.§+!a§ + this.§-<§.§9!S§ - §&!E§.§1!t§ / §&!E§.§+!a§) * §8!r§;
                           do
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 continue;
                              }
                              continue loop4;
                           }
                           while(_loc3_.y = (param2 / §&!E§.§+!a§ + this.§-<§.§@!j§ - §&!E§.§>!m§ / §&!E§.§+!a§) * §8!r§, !(_loc4_ || param1));
                           
                           return _loc3_;
                        }
                        while(true)
                        {
                           §§push(param2);
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr106);
                           }
                           §§goto(addr133);
                        }
                        addr155:
                     }
                     §§goto(addr153);
                  }
                  while(true)
                  {
                     param1 = §§pop();
                     §§goto(addr155);
                  }
                  addr154:
               }
            }
            §§goto(addr154);
         }
         §§goto(addr59);
      }
      
      public function §;!_§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.x = (param1 / §8!r§ + §&!E§.§1!t§ / §&!E§.§+!a§ - this.§-<§.§9!S§) * §&!E§.§+!a§;
            if(!(_loc5_ && param2))
            {
               addr63:
               _loc3_.y = (param2 / §8!r§ + §&!E§.§>!m§ / §&!E§.§+!a§ - this.§-<§.§@!j§) * §&!E§.§+!a§;
            }
            var _loc4_:Number = Math.max(§4!]§.§4?§,§4!]§.§%!'§);
            if(_loc6_)
            {
               _loc3_.x *= _loc4_;
               do
               {
                  _loc3_.y *= _loc4_;
               }
               while(_loc5_);
               
            }
            return _loc3_;
         }
         §§goto(addr63);
      }
      
      public function §-!E§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§`!O§.addObject(param1,param2,param3);
         }
      }
      
      public function §!m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§6"§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     this.§&!%§ = 0;
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              break;
                           }
                        }
                        loop4:
                        while(true)
                        {
                           §§push(this.§6"§);
                           if(_loc2_ || _loc1_)
                           {
                              continue loop0;
                           }
                           addr90:
                           while(true)
                           {
                              §§pop().visible = true;
                              continue loop4;
                           }
                        }
                        addr92:
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop3;
                        }
                        addr84:
                     }
                  }
                  return;
               }
               while(true)
               {
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §!![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!!6§ = new §^J§(§3D§.§;,§,§3D§.§0k§);
         }
      }
      
      public function §[1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!!6§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§[@§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§[@§);
                     addr618:
                     while(true)
                     {
                        §§pop().dispose();
                        addr619:
                        while(true)
                        {
                           this.§[@§ = null;
                           addr605:
                           while(true)
                           {
                           }
                        }
                     }
                     addr439:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     addr448:
                     this.§-<§.clear();
                     loop13:
                     while(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_ || _loc1_)
                        {
                           addr463:
                           if(_loc1_ || _loc2_)
                           {
                              this.§-<§ = null;
                              loop14:
                              for(; !(_loc2_ && _loc2_); while(true)
                              {
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue loop14;
                                 }
                                 §§goto(addr413);
                              })
                              {
                                 loop15:
                                 while(true)
                                 {
                                    §§push(this.§5K§);
                                    if(!_loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          loop17:
                                          do
                                          {
                                             if(this.sprite)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            addr334:
                                                            §§push(this.sprite);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(§§pop().numChildren <= 0)
                                                               {
                                                                  addr348:
                                                                  this.§@!H§ = 0;
                                                                  this.§0!F§ = 0;
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     this.mReadyToRun = false;
                                                                     addr319:
                                                                     if(!_loc2_)
                                                                     {
                                                                        this.§'!W§ = false;
                                                                        addr307:
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           this.§&!%§ = §3D§.§0!q§;
                                                                           addr292:
                                                                           if(this.§]"§)
                                                                           {
                                                                              addr278:
                                                                              (this.§]"§ as §0!E§).§>!6§.x = 0;
                                                                              addr279:
                                                                              addr272:
                                                                              addr277:
                                                                              addr274:
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 §§push(this.§]"§);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push((§§pop() as §0!E§).§>!6§);
                                                                                       if(_loc1_ || _loc1_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc1_ || _loc1_)
                                                                                          {
                                                                                             §§pop().y = §§pop();
                                                                                             addr265:
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr223:
                                                                                                §§push(this.§6"§);
                                                                                                if(!(_loc2_ && this))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr236:
                                                                                                      this.§6"§.visible = false;
                                                                                                      addr234:
                                                                                                   }
                                                                                                   this.§3E§ = null;
                                                                                                   addr218:
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         this.§;i§ = null;
                                                                                                         addr206:
                                                                                                         if(_loc1_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(this.§<!+§);
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc1_ || this)
                                                                                                                  {
                                                                                                                     addr182:
                                                                                                                     this.§<!+§.removeEventListener(Event.COMPLETE,this.§?R§);
                                                                                                                  }
                                                                                                                  addr187:
                                                                                                                  if(!(_loc2_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && this))
                                                                                                                     {
                                                                                                                        §§push(this.§<!+§);
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §§pop().removeEventListener(Event.CANCEL,this.§[!]§);
                                                                                                                           addr159:
                                                                                                                           if(_loc1_ || this)
                                                                                                                           {
                                                                                                                              addr123:
                                                                                                                              §§push(this.§4O§);
                                                                                                                              if(_loc1_ || _loc1_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr136:
                                                                                                                                    this.§4O§.removeEventListener(Event.COMPLETE,this.§-!]§);
                                                                                                                                    addr134:
                                                                                                                                    if(_loc1_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(this.§4O§);
                                                                                                                                       if(_loc1_ || this)
                                                                                                                                       {
                                                                                                                                          §§pop().removeEventListener(Event.CANCEL,this.§[x§);
                                                                                                                                          addr120:
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             addr92:
                                                                                                                                             this.§@!M§();
                                                                                                                                             addr95:
                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§,!]§.§!9§);
                                                                                                                                                   if(!(_loc2_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr76:
                                                                                                                                                         §,!]§.§!9§.color = 0;
                                                                                                                                                         addr74:
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc1_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     addr35:
                                                                                                                                                                     §§push(this.§?!4§);
                                                                                                                                                                     if(_loc1_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc1_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr57:
                                                                                                                                                                                 this.§?!4§.removeEventListeners();
                                                                                                                                                                                 addr58:
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr23);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr74);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr206);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr58);
                                                                                                                                                                        }
                                                                                                                                                                        addr23:
                                                                                                                                                                        this.mReadyToRun = false;
                                                                                                                                                                        if(_loc2_ && _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr58);
                                                                                                                                                                        }
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr57);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr348);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr159);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr134);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr95);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr35);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr76);
                                                                                                                                                }
                                                                                                                                                §§goto(addr134);
                                                                                                                                             }
                                                                                                                                             §§goto(addr120);
                                                                                                                                          }
                                                                                                                                          §§goto(addr187);
                                                                                                                                       }
                                                                                                                                       §§goto(addr136);
                                                                                                                                    }
                                                                                                                                    §§goto(addr265);
                                                                                                                                 }
                                                                                                                                 §§goto(addr92);
                                                                                                                              }
                                                                                                                              §§goto(addr136);
                                                                                                                           }
                                                                                                                           §§goto(addr292);
                                                                                                                        }
                                                                                                                        §§goto(addr182);
                                                                                                                     }
                                                                                                                     §§goto(addr348);
                                                                                                                  }
                                                                                                                  §§goto(addr218);
                                                                                                               }
                                                                                                               §§goto(addr123);
                                                                                                            }
                                                                                                            §§goto(addr182);
                                                                                                         }
                                                                                                         §§goto(addr279);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr234);
                                                                                                }
                                                                                                §§goto(addr236);
                                                                                             }
                                                                                             §§goto(addr272);
                                                                                          }
                                                                                          §§goto(addr278);
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr223);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     addr373:
                                                                     §§goto(addr334);
                                                                  }
                                                                  addr351:
                                                                  §§goto(addr351);
                                                                  addr347:
                                                               }
                                                               §§push(this.sprite);
                                                            }
                                                            §§pop().removeChildAt(0,true);
                                                            §§goto(addr373);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr605);
                                                         }
                                                      }
                                                      loop31:
                                                      while(true)
                                                      {
                                                         this.§4_§ = null;
                                                         addr563:
                                                         addr597:
                                                         while(_loc1_ || _loc1_)
                                                         {
                                                            addr570:
                                                            while(true)
                                                            {
                                                               §§push(this.mLevelEngine);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.mLevelEngine);
                                                                        if(!_loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop().§=!?§)
                                                                              {
                                                                              }
                                                                              addr555:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.mLevelEngine);
                                                                              }
                                                                           }
                                                                           addr553:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().clear();
                                                                           addr558:
                                                                           while(true)
                                                                           {
                                                                              this.mLevelEngine = null;
                                                                              addr537:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr549:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§=G§);
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(!_loc2_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(this.§=G§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().clear();
                                                                                    addr525:
                                                                                    while(!(_loc2_ && this))
                                                                                    {
                                                                                       this.§=G§ = null;
                                                                                       break loop17;
                                                                                    }
                                                                                    addr600:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§`!O§ = null;
                                                                                       continue loop31;
                                                                                    }
                                                                                 }
                                                                                 addr524:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr549);
                                                                              }
                                                                              §§goto(addr463);
                                                                           }
                                                                           continue;
                                                                           addr518:
                                                                        }
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§>c§);
                                                                           if(_loc1_ || this)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§>c§);
                                                                                    addr498:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().dispose();
                                                                                       break loop13;
                                                                                    }
                                                                                 }
                                                                                 addr496:
                                                                              }
                                                                              do
                                                                              {
                                                                                 §§push(this.§-<§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    if(!(_loc1_ || this))
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§goto(addr439);
                                                                                 }
                                                                                 §§goto(addr448);
                                                                              }
                                                                              while(_loc1_);
                                                                              
                                                                              §§goto(addr619);
                                                                           }
                                                                           §§goto(addr498);
                                                                           addr506:
                                                                           while(true)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr524);
                                                                  }
                                                               }
                                                               §§goto(addr553);
                                                               §§goto(addr570);
                                                            }
                                                         }
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(this.§`!O§);
                                                            addr599:
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               §§goto(addr600);
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(this.§5K§);
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            continue loop14;
                                                         }
                                                      }
                                                      addr396:
                                                   }
                                                   §§goto(addr555);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      addr413:
                                                      this.§5K§ = null;
                                                   }
                                                }
                                                §§goto(addr496);
                                             }
                                             §§goto(addr347);
                                          }
                                          while(_loc1_ || this);
                                          
                                          while(_loc1_)
                                          {
                                             §§goto(addr506);
                                          }
                                          §§goto(addr558);
                                       }
                                       §§goto(addr396);
                                    }
                                    §§goto(addr405);
                                 }
                              }
                              while(true)
                              {
                                 if(_loc1_ || this)
                                 {
                                    §§goto(addr482);
                                 }
                                 §§goto(addr563);
                              }
                              addr475:
                           }
                           §§goto(addr518);
                        }
                        §§goto(addr525);
                     }
                     while(true)
                     {
                        this.§>c§ = null;
                        §§goto(addr475);
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§`!O§);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        §§goto(addr597);
                     }
                     §§goto(addr538);
                  }
                  §§goto(addr599);
                  §§goto(addr605);
               }
            }
            §§goto(addr618);
         }
         §§goto(addr506);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §"!u§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§;i§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§;i§);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop().toString();
         }
         addr44:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
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
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr166:
                           while(true)
                           {
                              §§push(§,!]§.§1!8§());
                              addr140:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr141:
                                 while(!(_loc4_ && param1))
                                 {
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     loop7:
                     while(!§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§push(this.§3E§);
                           loop9:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop10:
                              while(!_loc4_)
                              {
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(!§§pop())
                                 {
                                    loop12:
                                    for(; §§pop(); continue loop0)
                                    {
                                       if(!(_loc5_ || param2))
                                       {
                                          if(!(_loc4_ && param3))
                                          {
                                             break;
                                          }
                                          break loop7;
                                       }
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr104);
                                          }
                                          if(!(_loc4_ && this))
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr166);
                                       }
                                       else
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§push(this.§3E§);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(§§pop().§<!P§);
                                                if(_loc5_)
                                                {
                                                   addr52:
                                                   if(_loc5_ || this)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr141);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(!_loc4_)
                                                      {
                                                         §§pop();
                                                         continue loop13;
                                                         §§goto(addr52);
                                                      }
                                                      §§goto(addr140);
                                                      addr123:
                                                   }
                                                   §§goto(addr140);
                                                }
                                                if(_loc5_)
                                                {
                                                   continue loop12;
                                                }
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                          addr136:
                                       }
                                       §§goto(addr140);
                                    }
                                    §§push(this.updateWithTime(param1,true,param2,param3));
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr151);
                                    }
                                    addr104:
                                    return this.§^!@§(param1,param2,param3);
                                    addr81:
                                 }
                                 §§goto(addr123);
                              }
                              continue loop1;
                           }
                        }
                     }
                     addr151:
                     return §§pop();
                  }
               }
               if(!(_loc5_ || this))
               {
                  continue;
               }
               §§goto(addr81);
            }
         }
         §§goto(addr136);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.§?!J§)
            {
               if(_loc7_)
               {
                  addr24:
                  §§push(param1);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_ || this)
                        {
                        }
                        addr65:
                        var _loc5_:* = §§pop();
                        if(_loc7_)
                        {
                           §§push(this);
                           §§push(this.§0!F§);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§0!F§ = §§pop();
                           loop0:
                           while(true)
                           {
                              §§push(param3);
                              loop1:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§`!O§.§@c§(param1);
                                    loop2:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                continue loop1;
                                             }
                                             continue loop0;
                                          }
                                          addr80:
                                          return §§pop();
                                          addr159:
                                       }
                                       this.§@!H§ = 0;
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                             addr144:
                                          }
                                          addr110:
                                          if(!(_loc6_ && param1))
                                          {
                                             this.§9!=§(param1,_loc5_);
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§@!H§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(§§pop() + param1);
                                    }
                                    §§pop().§@!H§ = §§pop();
                                    §§goto(addr216);
                                 }
                              }
                           }
                        }
                        §§goto(addr144);
                     }
                     param1 = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        §§push(§,!]§.§+!Z§);
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              addr63:
                              if(!_loc6_)
                              {
                                 addr59:
                                 §§push(§,!]§.§+!Z§);
                              }
                              §§goto(addr65);
                              §§push(Number(0));
                           }
                           §§goto(addr63);
                        }
                        §§pop().speed = 0.2;
                        §§goto(addr63);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr65);
               }
               §§goto(addr59);
            }
            §§goto(addr63);
         }
         §§goto(addr24);
      }
      
      private function §^!@§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§8Y§.§?!"§);
         if(_loc7_ || param1)
         {
            §§push(§§pop() * 1000);
            if(!_loc6_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               if(this.§3E§)
               {
                  if(_loc7_ || this)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(this.§3E§.speed);
                        addr317:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                           addr326:
                           while(true)
                           {
                              param1 = §§pop();
                           }
                        }
                     }
                     addr314:
                  }
                  while(true)
                  {
                     §§push(this.§0!F§);
                     if(!_loc6_)
                     {
                        §§push(param1);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc6_ && param3))
                           {
                              if(!_loc6_)
                              {
                                 addr287:
                                 §§push(Number(§§pop()));
                                 if(!_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr314);
                              }
                              §§goto(addr326);
                           }
                           §§goto(addr287);
                        }
                        §§goto(addr317);
                     }
                     §§goto(addr287);
                  }
                  loop19:
                  while(true)
                  {
                     §§push(this.§0!F§);
                     loop15:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 §§push(_loc5_);
                              }
                              addr195:
                           }
                           loop17:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop18:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    addr198:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(this.§%!B§);
                                          loop1:
                                          while(true)
                                          {
                                             if(!(_loc6_ && param3))
                                             {
                                                §§push(§§pop() + _loc4_);
                                                loop2:
                                                for(; !(_loc6_ && param2); §§push(_loc5_),if(!(_loc6_ && param2))
                                                {
                                                   continue loop1;
                                                })
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      loop3:
                                                      for(; _loc7_; if(!(_loc7_ || param1))
                                                      {
                                                         continue;
                                                      },§§goto(addr64),§§push(param1))
                                                      {
                                                         §§push(this.§3E§);
                                                         if(_loc7_)
                                                         {
                                                            §§pop().step(this);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§%!B§);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop() + _loc4_);
                                                               }
                                                               §§pop().§%!B§ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§0!F§);
                                                                        loop7:
                                                                        while(!_loc6_)
                                                                        {
                                                                           continue loop2;
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ && param3))
                                                                              {
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     addr87:
                                                                  }
                                                                  addr122:
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(!(_loc7_ || param2))
                                                                     {
                                                                        addr162:
                                                                        §§push(this);
                                                                        §§push(this.§%!B§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() + _loc4_);
                                                                        }
                                                                        §§pop().§%!B§ = §§pop();
                                                                     }
                                                                     else
                                                                     {
                                                                        addr262:
                                                                        addr245:
                                                                     }
                                                                     §§push(this);
                                                                     §§push(_loc5_);
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        §§push(§§pop() - this.§0!F§);
                                                                     }
                                                                     §§pop().updateWithTime(§§pop(),true,param2,param3);
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop4;
                                                                        this.updateWithTime(_loc4_,false,param2,param3);
                                                                     }
                                                                     continue loop3;
                                                                     break loop3;
                                                                  }
                                                               }
                                                               continue loop18;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr260:
                                                            §§pop().step(this);
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      continue loop19;
                                                   }
                                                   §§goto(addr87);
                                                }
                                                addr253:
                                                §§push(§§pop() + §§pop());
                                                while(true)
                                                {
                                                   §§push(this.§%!B§);
                                                   break loop1;
                                                }
                                                addr253:
                                             }
                                             break;
                                             if(!(_loc7_ || param3))
                                             {
                                                continue;
                                             }
                                             if(!(_loc7_ || this))
                                             {
                                                continue loop17;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                if(!(_loc6_ && param3))
                                                {
                                                   §§goto(addr122);
                                                }
                                                §§goto(addr162);
                                             }
                                             §§goto(addr62);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§goto(addr260);
                                                   §§push(this.§3E§);
                                                }
                                             }
                                             §§goto(addr262);
                                             §§goto(addr253);
                                          }
                                       }
                                       §§goto(addr253);
                                       continue loop18;
                                    }
                                 }
                              }
                              else
                              {
                                 addr251:
                                 §§push(this.§0!F§);
                                 §§push(_loc4_);
                              }
                              §§goto(addr253);
                           }
                        }
                        §§goto(addr251);
                     }
                  }
                  addr302:
               }
               else
               {
                  §§push(this.updateWithTime(_loc4_,true,param2,param3));
                  if(!(_loc6_ && param2))
                  {
                     if(!_loc6_)
                     {
                        return §§pop();
                     }
                     §§goto(addr198);
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr302);
         }
         §§goto(addr32);
      }
      
      private function §9!=§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc5_ && param2))
         {
            this.§[@§.update(param1);
            loop0:
            while(true)
            {
               this.§`!O§.§4W§(param1,param2);
               loop1:
               while(true)
               {
                  this.§3!"§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§&!%§);
                     addr263:
                     while(true)
                     {
                        §§push(§3D§.§0!q§);
                        addr275:
                        addr215:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§6"§);
                              if(!_loc5_)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§!!6§);
                                       if(_loc6_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                addr99:
                                                if(!this.§!!6§.§6!a§(this.§-<§,param1))
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      this.§[1§();
                                                   }
                                                   addr104:
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   this.§-<§.§,!K§(param1);
                                                   loop9:
                                                   while(!(_loc5_ && param1))
                                                   {
                                                      this.mLevelEngine.§^!c§();
                                                      while(true)
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                      continue loop2;
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break loop6;
                                                            }
                                                            addr276:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§&!%§);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(§§pop() + param1);
                                                               }
                                                               §§pop().§&!%§ = §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr165:
                                                                  §§push(this.§6"§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().alpha = _loc4_;
                                                                     break loop9;
                                                                  }
                                                                  addr165:
                                                               }
                                                               else
                                                               {
                                                                  while(!(_loc5_ && param2))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr223:
                                                               }
                                                            }
                                                            addr161:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§3D§.§0!q§);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(§§pop() / 2);
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               addr250:
                                                            }
                                                            addr251:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr149:
                                                            while(true)
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                         addr108:
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   while(true)
                                                   {
                                                      addr118:
                                                      while(true)
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                addr66:
                                             }
                                             §§goto(addr108);
                                          }
                                          §§goto(addr66);
                                       }
                                       §§goto(addr99);
                                    }
                                    return;
                                 }
                                 continue loop1;
                              }
                              addr135:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§pop().visible = false;
                                    §§goto(addr149);
                                 }
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr276);
                        }
                        addr215:
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        _loc4_ = §§pop();
                        §§goto(addr223);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§6"§);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop())
               {
                  §§goto(addr161);
               }
               §§goto(addr118);
            }
            §§goto(addr165);
         }
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  §§push(1000);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                  }
                  addr89:
               }
               addr90:
               while(true)
               {
                  §§pop().§@c§(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §3!"§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4!H§ = null;
         if(!_loc4_)
         {
            §§push(this.§0!F§);
            §§push(this.§]3§);
            if(_loc5_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!_loc4_)
               {
                  if(this.§!e§ != null)
                  {
                     §§goto(addr49);
                  }
                  this.§]3§ = this.§0!F§;
               }
            }
            §§goto(addr49);
         }
         addr49:
         var _loc2_:int = 0;
         for each(_loc1_ in this.§!e§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.addTrail();
            }
         }
         if(_loc4_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§4!H§ = null;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               §§push(this.mPigsAnimationTimer1);
               if(_loc4_ || param1)
               {
                  §§push(0);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(this.§`!O§);
                           if(_loc4_)
                           {
                              §§push(true);
                              if(_loc4_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(this.§`!O§);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(true);
                                             if(_loc4_ || param1)
                                             {
                                                §§push(§§pop().§<W§(§§pop()));
                                                if(_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc3_ && this))
                                                   {
                                                      _loc2_.§[!"§.mTryToScream = §+s§.§'!m§;
                                                      if(_loc3_)
                                                      {
                                                      }
                                                      addr139:
                                                      §§push(this);
                                                      §§push(this.mPigsAnimationTimer2);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(§§pop() - param1);
                                                      }
                                                      §§pop().mPigsAnimationTimer2 = §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         addr157:
                                                         if(this.mPigsAnimationTimer2 <= 0)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               addr165:
                                                               §§push(this.§`!O§);
                                                               if(_loc4_)
                                                               {
                                                                  addr169:
                                                                  §§push(true);
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     §§goto(addr232);
                                                                  }
                                                                  addr183:
                                                                  _loc2_ = §§pop().§<W§(§§pop());
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     _loc2_.§[!"§.mTryToBlink = §+s§.§1!W§;
                                                                     if(!_loc4_)
                                                                     {
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                                  §§push(this);
                                                                  §§push(250 + Math.random() * 500);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() + 2000 / (3 + this.§`!O§.§const§()));
                                                                  }
                                                                  §§pop().mPigsAnimationTimer2 = §§pop();
                                                               }
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§push(this);
                                                   §§push(500 + Math.random() * 1000);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() + 4000 / (3 + this.§`!O§.§const§()));
                                                   }
                                                   §§pop().mPigsAnimationTimer1 = §§pop();
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr232);
                              }
                              addr232:
                              if(§§pop().isPigsAlive(§§pop()))
                              {
                                 addr181:
                                 §§push(this.§`!O§);
                                 §§push(true);
                              }
                              return;
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr139);
                  }
               }
            }
            §§goto(addr157);
         }
         §§goto(addr181);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            §§push(param6);
            if(_loc8_ || param1)
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§6Q§.§&!$§);
                        addr170:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr171:
                           while(true)
                           {
                              param6 = §§pop();
                              addr172:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr168:
                  }
                  while(true)
                  {
                     §;!8§.addScore(param1,param2);
                     loop4:
                     while(true)
                     {
                        this.§?!4§.addScore(param1);
                        loop5:
                        for(; !(_loc7_ && param1); if(!(_loc8_ || param1))
                        {
                           continue;
                        },this.§%<§(param1.toString(),param4,param5,800,param6,0,0),§§goto(addr88))
                        {
                           §§push(param3);
                           if(_loc8_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                           }
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
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr128:
                                                      addr128:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      addr128:
                                                   }
                                                   else
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(this.§[!a§);
                                                         if(!_loc8_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc8_ || param3)
                                                            {
                                                               §§push(!§§pop());
                                                               continue loop6;
                                                            }
                                                            addr127:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               break loop12;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop12;
                                                            }
                                                            addr111:
                                                         }
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr128);
                                                }
                                                else
                                                {
                                                   addr88:
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr168);
                                                }
                                             }
                                             return;
                                             addr53:
                                          }
                                          §§goto(addr111);
                                       }
                                       continue loop7;
                                    }
                                    addr106:
                                 }
                                 §§goto(addr127);
                              }
                           }
                        }
                        §§goto(addr172);
                     }
                  }
               }
            }
            §§goto(addr171);
         }
         §§goto(addr128);
      }
      
      public function §%<§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            if(!(_loc8_ && param2))
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§6Q§.§9Z§);
                     if(_loc9_)
                     {
                        addr81:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           param5 = §§pop();
                           addr82:
                           while(true)
                           {
                           }
                        }
                        addr81:
                     }
                     §§goto(addr81);
                  }
                  addr76:
               }
               while(true)
               {
                  this.§5K§.§=!K§(§6Q§.§ ^§,§,n§.§0,§,§6Q§.§#@§,param2,param3,param4,param1,param5,param6,param7);
                  if(!_loc9_)
                  {
                     continue;
                  }
                  if(_loc9_)
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
               addr65:
            }
            §§goto(addr81);
         }
         §§goto(addr65);
      }
      
      public function §75§(param1:§4!H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§!e§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§!e§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr38);
         }
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§>c§.useMightyEagle();
            while(true)
            {
               this.§`!O§.§>h§();
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§[!a§ = true;
            if(_loc2_ || _loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §3!+§(param1:§4!H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5K§.§=!+§(§,n§.§'!n§);
            loop0:
            while(true)
            {
               §§push(this.§!e§);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§!e§);
                        while(true)
                        {
                           §§pop().splice(this.§!e§.indexOf(param1),1);
                        }
                        addr89:
                     }
                     while(true)
                     {
                     }
                     addr95:
                  }
                  while(true)
                  {
                     §§push(this.§!e§);
                     if(!(_loc3_ && this))
                     {
                        if(§§pop().length != 0)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           this.§!e§ = null;
                        }
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              addr60:
                              break;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                  }
                  return;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr60);
      }
      
      public function §9!,§(param1:§`o§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§4_§ = this.§`!O§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!(_loc7_ && param3))
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr48:
                  §§push(§ R§.BIRD_LAUNCH_FORCE_GREEN);
                  if(_loc8_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_ || param2)
                     {
                        addr65:
                     }
                     addr74:
                     var _loc4_:Number = §§pop();
                     addr73:
                     if(_loc8_)
                     {
                        §§push(param1.§1'§);
                        loop0:
                        while(true)
                        {
                           §§push(1);
                           loop1:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc8_)
                                 {
                                    §§push(this.§4_§);
                                    loop2:
                                    while(true)
                                    {
                                       §§pop().§6!Z§(param1.§1'§);
                                       addr159:
                                       loop6:
                                       while(true)
                                       {
                                          addr128:
                                          while(true)
                                          {
                                             §§push(this.§4_§);
                                             if(_loc7_)
                                             {
                                                continue loop2;
                                             }
                                             §§pop().§[!"§.§!!D§();
                                             while(!_loc8_)
                                             {
                                                continue loop6;
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr159);
                              }
                              while(true)
                              {
                                 §§push(param1.§-[§);
                                 if(_loc7_ && param3)
                                 {
                                    continue loop0;
                                 }
                                 §§push(0);
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc8_ || param3)
                                    {
                                       §§push(param1.§-[§);
                                       if(_loc8_ || this)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       addr119:
                                       if(_loc8_ || param2)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr128);
                                          }
                                          else
                                          {
                                             addr160:
                                             §§push(_loc4_);
                                             if(!(_loc7_ && param3))
                                             {
                                                addr168:
                                                §§push(-§§pop());
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                addr192:
                                                var _loc5_:* = §§pop();
                                                §§push(_loc4_);
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(§§pop() * param2);
                                                   if(_loc8_ || this)
                                                   {
                                                      addr210:
                                                      §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                      if(!_loc7_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      this.§4_§.§%!=§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                   }
                                                   this.camera.§#e§(§&!E§.§^+§);
                                                   addr279:
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§push(this.§;i§);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               addr245:
                                                               this.§;i§.§9!,§(this.mLevelEngine.§]!@§,param1.x,param1.y,param2,param3);
                                                            }
                                                            if(_loc7_ && this)
                                                            {
                                                               §§goto(addr279);
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   addr296:
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr192);
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr160);
                              }
                              addr171:
                              §§push(§§pop() * param2);
                              if(_loc8_ || this)
                              {
                                 §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                 if(_loc8_)
                                 {
                                    §§goto(addr160);
                                 }
                              }
                              §§goto(addr168);
                           }
                        }
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr65);
               }
               else
               {
                  §§push(§ R§.BIRD_LAUNCH_FORCE);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        §§goto(addr73);
                     }
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr48);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§'!W§ = true;
         }
      }
      
      private function §^C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§'!W§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§'!W§ = false;
                     loop2:
                     while(true)
                     {
                        §§push(this.activeObject);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() is §4J§);
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(this.activeObject);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          continue loop3;
                                       }
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§§pop().activateSpecialPower(this.§;D§));
                                          addr134:
                                          loop7:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop4;
                                             }
                                             if(§§pop())
                                             {
                                                while(_loc1_ || this)
                                                {
                                                   this.§4!$§ = true;
                                                   do
                                                   {
                                                      if(!(_loc1_ || this))
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                   while(_loc1_ || _loc2_);
                                                   
                                                   return;
                                                }
                                                continue loop2;
                                                addr137:
                                             }
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§;i§);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            if(!(_loc1_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(this.§;i§);
                                                                  break;
                                                               }
                                                               §§goto(addr137);
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                         addr63:
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            break loop7;
                                                         }
                                                         addr129:
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                      }
                                                      §§goto(addr24);
                                                   }
                                                   break;
                                                }
                                                §§pop().§>!v§(this.mLevelEngine.§]!@§);
                                                §§goto(addr63);
                                             }
                                             continue loop14;
                                          }
                                          addr24:
                                          return;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 addr179:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr128:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§`!O§.§%!F§();
                                          §§goto(addr77);
                                       }
                                    }
                                 }
                                 addr127:
                              }
                              §§goto(addr129);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr191);
      }
      
      public function §%Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!O§.§%Q§();
         }
      }
      
      public function §2!4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§`!O§.§5!"§();
         }
      }
      
      public function §]§() : §>4§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§>4§ = new §>4§();
         if(_loc2_ || this)
         {
            _loc1_.§6t§ = this.§^a§.§6t§;
         }
         loop0:
         while(true)
         {
            _loc1_.§^T§ = this.§^a§.§^T§;
            loop1:
            while(true)
            {
               this.§-<§.§]!N§(_loc1_);
               while(!_loc3_)
               {
                  this.§`!O§.§@m§(_loc1_);
                  while(_loc2_ || _loc1_)
                  {
                     this.§>c§.§9k§(_loc1_);
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §@1§() : int
      {
         return this.§^a§.§^T§;
      }
      
      public function §5!N§() : int
      {
         return this.§^a§.§6t§;
      }
      
      public function §;!"§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^a§.§^T§ = param1;
         }
      }
      
      public function §"!^§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^a§.§6t§ = param1;
         }
      }
      
      public function §8m§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§]y§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  addr80:
                  while(true)
                  {
                     §§push(this.§]y§);
                     addr82:
                     while(true)
                     {
                        §§pop().§'C§(param1,param2);
                        addr85:
                        while(true)
                        {
                        }
                     }
                  }
                  addr80:
               }
               while(true)
               {
                  §§push(this.§-<§);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        return;
                     }
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc4_)
                        {
                           addr60:
                           this.§-<§.§,!K§(0);
                        }
                        else
                        {
                           §§goto(addr80);
                        }
                     }
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     continue;
                     addr19:
                  }
                  §§goto(addr60);
               }
               §§goto(addr19);
            }
            §§goto(addr82);
         }
         §§goto(addr80);
      }
      
      public function get §7u§() : §>4§
      {
         return this.§^a§;
      }
      
      public function get §;D§() : §[?§
      {
         return this.§`!O§;
      }
      
      protected function get starling() : §,!]§
      {
         return this.§"!J§;
      }
      
      public function get §=!E§() : int
      {
         return §`!H§;
      }
   }
}
