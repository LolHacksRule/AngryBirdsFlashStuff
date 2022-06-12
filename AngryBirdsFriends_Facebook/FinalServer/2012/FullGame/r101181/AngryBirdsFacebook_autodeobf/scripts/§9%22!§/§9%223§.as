package §9"!§
{
   import §#!e§.§1"B§;
   import §#!e§.§2!L§;
   import §#!e§.§?!u§;
   import §#!e§.LevelManager;
   import §#]§.b2Vec2;
   import §'6§.§"]§;
   import §+!h§.§[!Q§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §3![§.§5!@§;
   import §6!D§.§0Y§;
   import §6!D§.§;";§;
   import §6!D§.§[t§;
   import §6o§.§+!k§;
   import §8g§.§3"6§;
   import §9"%§.§ H§;
   import §9"%§.§#!D§;
   import §9"%§.§&!r§;
   import §9"%§.§]a§;
   import §<a§.§9U§;
   import §<u§.§6U§;
   import §<u§.§8,§;
   import §>i§.§'!p§;
   import §[!"§.§&0§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   import §`!W§.§[!x§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9"3§
   {
      
      private static const §%c§:int = 20;
      
      public static const §=k§:Number;
      
      public static const §]!+§:Number;
      
      public static const §'"F§:Number = 0.05;
      
      public static const §7"'§:Number;
      
      public static const §6!h§:Number;
      
      public static const §0!Q§:§9U§;
      
      public static var §[!+§:Number = 1;
      
      protected static var §^!V§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §%c§ = 20;
            while(true)
            {
               §=k§ = §#6§.§;H§;
            }
            addr139:
         }
         loop1:
         while(true)
         {
            §]!+§ = §#6§.§+P§;
            while(true)
            {
               §'"F§ = 1 / 20;
               while(!_loc1_)
               {
                  if(!_loc2_)
                  {
                     continue loop1;
                  }
                  §7"'§ = §#6§.§+P§ * §'"F§;
                  loop4:
                  while(true)
                  {
                     §§push(§§findproperty(§6!h§));
                     §§push(§=k§);
                     if(_loc2_)
                     {
                        §§push(§§pop() * §'"F§);
                     }
                     §§pop().§6!h§ = §§pop();
                     while(true)
                     {
                        §0!Q§ = new §9U§(13 - 3);
                        continue loop4;
                        addr48:
                        for(; !(_loc1_ && §9"3§); §^!V§ = §1"B§.§5!5§,if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              return;
                           }
                           continue loop4;
                        })
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           §§goto(addr139);
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected var §%!O§:§]a§;
      
      private var §^<§:§&!r§;
      
      private var §7F§:Array = null;
      
      protected var §4J§:§[!x§;
      
      public var mLevelEngine:§4!`§;
      
      protected var §!`§:§9!Z§;
      
      protected var §0!§:§&0§;
      
      protected var §5^§:§2a§;
      
      protected var §3">§:§^!f§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §"§:Boolean = false;
      
      protected var §=!j§:Boolean = false;
      
      protected var §7,§:Boolean = false;
      
      public var §%"4§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §4"<§:Number;
      
      public var §,"<§:Number;
      
      private var §6"D§:Number;
      
      public var §,! §:§?!u§;
      
      public var §!!B§:Boolean = false;
      
      private var §9!J§:§5P§;
      
      private var §9Y§:Sprite;
      
      protected var §`!C§:§1"B§;
      
      protected var §,!c§:§5!@§ = null;
      
      private var §`!s§:EventDispatcher;
      
      private var §;!P§:Array;
      
      private var §7a§:Array;
      
      protected var §32§:§"]§;
      
      private var §?!L§:§'!p§;
      
      protected var § !@§:§0Y§;
      
      protected var §]!V§:§[t§;
      
      private var §8!1§:§;";§;
      
      private var § _§:§;";§;
      
      private var §%!o§:§;";§;
      
      private var §^!w§:Stage;
      
      private var §^!m§:§;x§;
      
      protected var §3'§:§[!Q§;
      
      protected var §9L§:§[!Q§;
      
      protected var §]!t§:Number = 0.0;
      
      protected var §-"?§:String;
      
      private var §&"0§:Boolean;
      
      protected var § §:Boolean;
      
      protected var §3!h§:uint = 1.417339207E9;
      
      public var §]!P§:Boolean;
      
      public function §9"3§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§7a§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§`!s§ = new EventDispatcher();
                  loop2:
                  while(true)
                  {
                     this.§,! § = new §?!u§();
                     while(true)
                     {
                        this.§^!w§ = param1;
                        loop4:
                        while(!_loc3_)
                        {
                           this.§ !@§ = §0Y§.§;"§;
                           loop5:
                           for(; !_loc3_; if(!(_loc3_ && param1))
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           })
                           {
                              this.§]!V§ = this.initAnimationManager(this.§ !@§);
                              while(true)
                              {
                                 this.§8!1§ = this.initThemeGraphicsManager();
                                 loop7:
                                 while(!(_loc3_ && this))
                                 {
                                    continue loop5;
                                    loop9:
                                    while(true)
                                    {
                                       this.§%!o§ = this.initCutSceneManager();
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop7;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§ _§ = this.initThemeSoundsManager();
                                          continue loop9;
                                       }
                                    }
                                    var _loc2_:Stage3D = param1.stage3Ds[0];
                                    if(_loc4_ || _loc2_)
                                    {
                                       this.§32§ = new §"]§(§5P§,param1,new Rectangle(0,0,§#6§.§;H§,§#6§.§+P§),_loc2_);
                                       loop10:
                                       while(true)
                                       {
                                          §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.§32§.onEnterFrame);
                                          addr247:
                                          while(true)
                                          {
                                             _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§-""§,false,0,true);
                                             continue loop10;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr165);
                                    }
                                    §§goto(addr161);
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr38);
            }
         }
         §§goto(addr43);
      }
      
      public static function §8&§(param1:§&!r§, param2:§&!r§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§`!n§);
         if(_loc6_)
         {
            §§push(§§pop() - param2.§`!n§);
            if(_loc6_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§5e§);
            if(!_loc5_)
            {
               §§push(§§pop() - param2.§5e§);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §5!%§(_loc3_,_loc4_);
         }
         §§goto(addr36);
      }
      
      public static function §5!%§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§9Y§);
            loop0:
            do
            {
               §§push(!§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr94:
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(this.§8!_§));
                           if(!_loc1_)
                           {
                              while(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc1_ && _loc1_)
                                    {
                                       continue loop3;
                                    }
                                    this.§9Y§ = this.§9!J§.§!0§;
                                 }
                                 break;
                              }
                              continue loop0;
                              addr54:
                           }
                        }
                     }
                     addr93:
                  }
                  §§goto(addr54);
               }
               §§goto(addr93);
            }
            while(§§push(this.§9Y§), _loc1_ && _loc2_);
            
            return §§pop();
         }
         §§goto(addr94);
      }
      
      public function get §8!_§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§9!J§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this.§9!J§ = this.§32§.§8!j§ as §5P§;
                     addr79:
                     loop3:
                     while(true)
                     {
                        §§push(this.§9!J§);
                        addr55:
                        while(!_loc2_)
                        {
                           §§pop().§`!u§ = false;
                           if(_loc1_ || _loc1_)
                           {
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                     addr79:
                  }
                  §§goto(addr79);
               }
               while(true)
               {
                  §§push(this.§9!J§);
                  if(_loc1_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr55);
               }
               return §§pop();
            }
         }
         §§goto(addr79);
      }
      
      private function get §>§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§8!_§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§8!_§);
                  }
                  else
                  {
                     §§goto(addr32);
                  }
               }
               §§goto(addr32);
            }
            return (§§pop() as §5P§).§>§;
         }
         addr32:
         return null;
      }
      
      public function get animationManager() : §[t§
      {
         return this.§]!V§;
      }
      
      public function get textureManager() : §0Y§
      {
         return this.§ !@§;
      }
      
      public function get camera() : §&0§
      {
         return this.§0!§;
      }
      
      public function get objects() : §]a§
      {
         return this.§%!O§;
      }
      
      public function get particles() : §^!f§
      {
         return this.§3">§;
      }
      
      public function get background() : §[!x§
      {
         return this.§4J§;
      }
      
      public function get slingshot() : §2a§
      {
         return this.§5^§;
      }
      
      public function get activeObject() : §&!r§
      {
         return this.§^<§;
      }
      
      public function get §?l§() : §9!Z§
      {
         return this.§!`§;
      }
      
      public function get stage() : Stage
      {
         return this.§^!w§;
      }
      
      public function get §@F§() : §;";§
      {
         return this.§%!o§;
      }
      
      protected function get §3<§() : §;";§
      {
         return this.§8!1§;
      }
      
      public function set activeObject(param1:§&!r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^<§ = param1;
         }
      }
      
      public function set §%"C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§ § = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§?!L§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§?!L§);
                     addr238:
                     while(true)
                     {
                        §§pop().dispose();
                        addr239:
                        while(true)
                        {
                        }
                     }
                  }
                  addr236:
               }
               while(true)
               {
                  §§push(this.§ !@§);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              §§push(this.§ !@§);
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr230:
                                 while(true)
                                 {
                                 }
                              }
                              addr229:
                           }
                           else
                           {
                              §§goto(addr236);
                           }
                           loop18:
                           while(true)
                           {
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 loop19:
                                 while(true)
                                 {
                                    §§push(this.§32§);
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc1_)
                                          {
                                             addr43:
                                             this.§32§.dispose();
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop18;
                                          }
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                break;
                                             }
                                             break loop2;
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             if(_loc1_ || this)
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   if(_loc1_ || this)
                                                   {
                                                      addr128:
                                                      §§push(this.§%!o§);
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      addr131:
                                                      §§push(§§pop().textureManager);
                                                      if(!_loc1_)
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop21:
                                                            while(true)
                                                            {
                                                               addr188:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§8!1§);
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().textureManager);
                                                                           addr192:
                                                                           while(true)
                                                                           {
                                                                              §§pop().dispose();
                                                                              addr193:
                                                                              while(_loc1_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§%!o§);
                                                                                    break loop16;
                                                                                 }
                                                                              }
                                                                              addr213:
                                                                              addr199:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§8!1§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc2_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop().textureManager);
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 addr210:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr211:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§goto(addr213);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr189:
                                                                  }
                                                                  §§goto(addr142);
                                                               }
                                                            }
                                                         }
                                                         addr186:
                                                      }
                                                      §§pop().dispose();
                                                      continue loop18;
                                                   }
                                                   §§goto(addr230);
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr193);
                                             }
                                             loop17:
                                             for(; _loc1_; §§pop())
                                             {
                                                §§push(this.§%!o§);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop().textureManager);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         addr162:
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc2_ && this))
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               addr86:
                                                               if(!(_loc1_ || _loc1_))
                                                               {
                                                                  §§goto(addr210);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  continue loop19;
                                                                  §§goto(addr86);
                                                               }
                                                               addr93:
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         while(_loc1_ || this)
                                                         {
                                                            continue loop17;
                                                         }
                                                         §§goto(addr212);
                                                         addr162:
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr131);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr131);
                                             }
                                             §§goto(addr189);
                                          }
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc1_ || _loc1_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc2_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr162);
                                                   }
                                                   §§goto(addr93);
                                                }
                                                break;
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr211);
                                       }
                                       break;
                                    }
                                    §§goto(addr43);
                                 }
                                 return;
                              }
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§goto(addr213);
                        §§goto(addr230);
                     }
                  }
                  §§goto(addr229);
               }
            }
            §§goto(addr238);
         }
         §§goto(addr141);
      }
      
      protected function initThemeGraphicsManager() : §;";§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §;";§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §;";§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§0Y§) : §[t§
      {
         return new §[t§(param1);
      }
      
      public function §3H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§"]§.§!X§);
            loop0:
            for(; §§pop(); if(_loc3_ && _loc2_)
            {
               continue;
            },§§pop().color = 0,if(!_loc3_)
            {
               if(_loc2_ || this)
               {
                  if(_loc3_ && _loc3_)
                  {
                     §§goto(addr88);
                  }
                  break;
               }
               §§goto(addr93);
            },§§goto(addr82))
            {
               loop1:
               while(!param1)
               {
                  §§push(§"]§.§!X§);
                  loop2:
                  while(!_loc3_)
                  {
                     §§pop().stop();
                     while(true)
                     {
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§push(§"]§.§!X§);
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     break loop0;
                  }
                  §§pop().start();
                  §§goto(addr93);
               }
               §§goto(addr92);
               §§push(§"]§.§!X§);
            }
            return;
         }
         §§goto(addr90);
      }
      
      public function §8Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.sprite);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr47:
                     this.sprite.visible = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function §%!B§() : §5!@§
      {
         return this.§,!c§;
      }
      
      public function setController(param1:§5!@§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§,!c§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§,!c§);
                     addr99:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr100:
                        while(true)
                        {
                        }
                     }
                  }
                  addr97:
               }
               while(true)
               {
                  this.§,!c§ = param1;
                  loop5:
                  while(true)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(this.mReadyToRun)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§push(this.§,!c§);
                                 if(_loc2_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§pop().addEventListeners();
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc2_ || _loc3_)
                                       {
                                          break loop5;
                                       }
                                       §§goto(addr97);
                                    }
                                 }
                                 §§goto(addr99);
                              }
                              addr49:
                           }
                           §§goto(addr71);
                        }
                        break;
                     }
                     §§goto(addr100);
                  }
                  return;
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §5!A§() : §[!Q§
      {
         return this.§3'§;
      }
      
      public function §[!2§(param1:§'!p§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§?!L§ = param1;
         }
         §§push(this.§?!L§.§2!l§);
         if(!(_loc7_ && param3))
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
                  if(_loc6_ || this)
                  {
                     if(param3 != null)
                     {
                        loop3:
                        while(true)
                        {
                           this.§`!s§.addEventListener(Event.INIT,param3);
                           loop4:
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 this.§7a§.push(param3);
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop3;
                                    }
                                    addr71:
                                    §§goto(addr111);
                                 }
                                 addr111:
                                 addr67:
                              }
                              continue loop0;
                           }
                        }
                        addr103:
                     }
                     while(true)
                     {
                        if(this.§[!%§(param2))
                        {
                           if(_loc6_)
                           {
                              this.§5#§();
                           }
                           if(_loc6_)
                           {
                              break;
                           }
                           §§goto(addr67);
                        }
                        break;
                        §§goto(addr71);
                     }
                     return;
                  }
                  _loc5_++;
                  continue;
                  addr124:
               }
               §§goto(addr103);
            }
            else
            {
               this.§ !@§.§0!g§(this.§?!L§.§59§(_loc5_));
            }
            §§goto(addr124);
         }
      }
      
      private function §[!%§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc5_ || param1)
         {
            §§push(this.§ !@§);
            if(_loc5_ || param1)
            {
               §§push(§§pop().§9!F§());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        addr182:
                        §§push(this.§ !@§);
                        while(true)
                        {
                           §§push(§§pop().§@=§);
                           if(!_loc4_)
                           {
                              addr186:
                              §§push(1000);
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 addr187:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                 }
                              }
                              addr186:
                           }
                           addr188:
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                        }
                        addr182:
                     }
                     while(true)
                     {
                        §§push(this.§ !@§);
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop().§%!U§);
                           if(_loc5_ || _loc2_)
                           {
                              §§push(1000);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() / §§pop());
                                 if(!_loc4_)
                                 {
                                    addr163:
                                    §§push(int(§§pop()));
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                              }
                              else
                              {
                                 §§goto(addr186);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr163);
                        }
                        else
                        {
                           §§goto(addr182);
                        }
                     }
                     addr165:
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(§+!k§);
                        §§push("\n\nMain texture manager memory usage:\n   textures ");
                        if(_loc5_ || _loc3_)
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_ || param1)
                              {
                                 §§push(" kilobytes\n   bitmaps ");
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr124:
                                       §§push(§§pop() + _loc3_);
                                       if(_loc5_)
                                       {
                                          addr122:
                                          §§push(" kilobytes\n\n");
                                       }
                                       §§pop().log(§§pop());
                                       loop3:
                                       while(_loc5_)
                                       {
                                          this.initializeAnimations(param1);
                                          while(!_loc5_)
                                          {
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             §§push(true);
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr122);
                        §§goto(addr165);
                     }
                     addr189:
                     addr166:
                  }
                  else
                  {
                     while(true)
                     {
                        this.§;!P§ = param1.concat();
                        if(_loc4_)
                        {
                           if(!(_loc5_ || _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                        if(!_loc4_)
                        {
                           §§push(false);
                           if(_loc5_ || _loc3_)
                           {
                              return §§pop();
                           }
                           continue loop0;
                        }
                        §§goto(addr166);
                     }
                  }
                  §§goto(addr73);
               }
               return §§pop();
            }
            §§goto(addr182);
         }
         §§goto(addr75);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!V§.initializeAnimations(param1);
         }
      }
      
      private function §-""§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§ !@§.§>l§();
            loop0:
            while(true)
            {
               §§push(this.§3<§);
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
                                 §§push(this.§3<§);
                                 if(_loc2_ || param1)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().textureManager);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr367:
                                       while(true)
                                       {
                                          loop46:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop47:
                                                while(true)
                                                {
                                                   §§push(this.§3<§);
                                                   addr371:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      addr372:
                                                      while(true)
                                                      {
                                                         §§pop().§>l§();
                                                         addr373:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop47;
                                                   }
                                                }
                                                addr369:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§@F§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop12:
                                                   while(!(_loc3_ && param1))
                                                   {
                                                      §§push(§§pop());
                                                      while(_loc2_ || this)
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
                                                                  §§push(this.§@F§);
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     if(_loc3_ && param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop().textureManager);
                                                                     loop16:
                                                                     for(; !(_loc3_ && _loc2_); while(true)
                                                                     {
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§pop().§>l§();
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                        §§goto(addr118);
                                                                     })
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop17:
                                                                        for(; _loc2_ || this; if(!(_loc2_ || param1))
                                                                        {
                                                                           continue;
                                                                        },§§goto(addr186),§§push(Boolean(§§pop())))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop44:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§@F§);
                                                                                    addr318:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().textureManager);
                                                                                       addr319:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§>l§();
                                                                                          addr320:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       continue loop44;
                                                                                    }
                                                                                 }
                                                                                 addr316:
                                                                              }
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(this.§;!P§)
                                                                                 {
                                                                                    loop22:
                                                                                    for(; _loc2_; while(_loc2_ || _loc2_)
                                                                                    {
                                                                                       this.§5#§();
                                                                                       while(_loc2_ || _loc3_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    })
                                                                                    {
                                                                                       this.§[!%§(this.§;!P§);
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§;!P§ = null;
                                                                                          continue loop22;
                                                                                          loop42:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc2_ || param1))
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.mReadyToRun);
                                                                                                if(!(_loc3_ && param1))
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                addr186:
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop42;
                                                                                                }
                                                                                                if(_loc2_ || param1)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      continue loop46;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            §§push(this.§,!c§);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§pop().addEventListeners();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr52:
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr24);
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == null);
                                                                                                            addr212:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               continue loop42;
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         addr199:
                                                                                                         addr210:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§8!1§);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(_loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  §§goto(addr316);
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                               addr138:
                                                                                                            }
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§%!o§);
                                                                                                               if(_loc2_ || param1)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(this.§%!o§);
                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr84:
                                                                                                                           §§push(§§pop().textureManager);
                                                                                                                           if(_loc3_ && param1)
                                                                                                                           {
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           if(_loc2_ || this)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc3_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop42;
                                                                                                                                    }
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop5;
                                                                                                                                    }
                                                                                                                                    §§push(this.§%!o§);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr199);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop23;
                                                                                                                              addr100:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr319);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().textureManager);
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        continue loop46;
                                                                                                                        addr118:
                                                                                                                     }
                                                                                                                     §§goto(addr100);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr84);
                                                                                                               addr157:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                            }
                                                                                                            addr24:
                                                                                                            return;
                                                                                                            addr62:
                                                                                                            §§goto(addr319);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§9!F§();
                                                                                                               §§goto(addr157);
                                                                                                            }
                                                                                                            addr156:
                                                                                                         }
                                                                                                         §§goto(addr62);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr212);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr373);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr210);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                         §§goto(addr314);
                                                         §§push(§§pop());
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr371);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr367);
                     }
                  }
               }
            }
         }
         §§goto(addr246);
      }
      
      private function §5#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§`!s§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§1!j§();
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §1!j§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§7a§)
         {
            if(_loc5_)
            {
               this.§`!s§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§7a§ = [];
         }
      }
      
      public function init(param1:§1"B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
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
                     addr276:
                     while(true)
                     {
                     }
                  }
                  addr274:
               }
               loop3:
               while(true)
               {
                  this.§!`§ = new §9!Z§(this,param1);
                  while(true)
                  {
                     this.§0!§ = this.§]]§(param1);
                     addr262:
                     while(true)
                     {
                        this.§4"<§ = 0;
                        while(true)
                        {
                           this.§,"<§ = 0;
                           addr248:
                           while(!_loc3_)
                           {
                           }
                        }
                     }
                     loop14:
                     for(; _loc2_ || _loc3_; while(!(_loc3_ && param1))
                     {
                        §§goto(addr160);
                     })
                     {
                        §^!V§ = param1.theme;
                        loop15:
                        for(; !_loc3_; if(_loc3_ && param1)
                        {
                           continue;
                        },§§push(this.§=!j§),if(_loc2_ || this)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 loop26:
                                 while(true)
                                 {
                                    §§pop();
                                    addr118:
                                    while(true)
                                    {
                                       §§push(this.§7,§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!(_loc3_ && this))
                                       {
                                          break;
                                       }
                                       continue loop26;
                                    }
                                 }
                                 addr117:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§=`§(param1.theme);
                                    loop20:
                                    for(; !_loc3_; if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    },if(!(_loc3_ && param1))
                                    {
                                       if(_loc3_)
                                       {
                                          while(true)
                                          {
                                             this.initialize(param1);
                                             addr95:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr99);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                else
                                                {
                                                   §§goto(addr174);
                                                }
                                             }
                                          }
                                          addr92:
                                       }
                                       if(_loc2_)
                                       {
                                          return;
                                       }
                                       §§goto(addr274);
                                    },§§goto(addr95))
                                    {
                                       while(true)
                                       {
                                          this.§]!y§();
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §?E§.init();
                                                   if(!_loc3_)
                                                   {
                                                      continue loop20;
                                                   }
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   this.mReadyToRun = false;
                                                   §§goto(addr216);
                                                }
                                                addr221:
                                             }
                                             else
                                             {
                                                §§goto(addr136);
                                             }
                                          }
                                          §§goto(addr248);
                                          addr99:
                                       }
                                       while(!(_loc3_ && this))
                                       {
                                          this.§&"0§ = false;
                                          §§goto(addr221);
                                       }
                                       §§goto(addr276);
                                    }
                                    continue;
                                 }
                                 §§goto(addr92);
                              }
                           }
                        },§§goto(addr117))
                        {
                           this.§`!C§ = param1;
                           while(_loc2_ || _loc3_)
                           {
                              this.§=!j§ = this.§?!>§(param1.theme);
                              continue loop14;
                           }
                           loop12:
                           while(true)
                           {
                              this.mPigsAnimationTimer1 = 2000;
                              while(true)
                              {
                                 this.mPigsAnimationTimer2 = 1000;
                                 continue loop14;
                                 addr160:
                                 if(!(_loc2_ || param1))
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    this.§7,§ = this.§5,§(param1.theme);
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop15;
                                       }
                                       continue loop14;
                                    }
                                    continue loop3;
                                    addr136:
                                 }
                                 else
                                 {
                                    addr216:
                                 }
                                 while(true)
                                 {
                                    this.§"§ = false;
                                    continue loop12;
                                 }
                              }
                           }
                           addr174:
                        }
                        §§goto(addr262);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§6"D§ = 0;
            §§goto(addr226);
         }
      }
      
      protected function §]!y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§3'§ = new §[!Q§(LevelManager.§'!O§);
         }
      }
      
      protected function §?!>§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§8!1§)
            {
               if(!_loc2_)
               {
                  §§push(false);
                  if(!(_loc2_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr48);
      }
      
      protected function §5,§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§6U§ = null;
         if(_loc4_ || this)
         {
            if(this.§ _§)
            {
               addr30:
               _loc2_ = §8,§.§0>§(param1);
               if(_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§push(Boolean(_loc2_.§&"<§));
                        if(_loc4_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    addr88:
                                    §§push(this.§ _§.§9!c§(_loc2_.§&"<§));
                                    if(_loc4_)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc3_ && param1))
                                       {
                                          §§goto(addr103);
                                       }
                                       return §§pop();
                                    }
                                 }
                                 §§goto(addr106);
                              }
                           }
                        }
                        addr103:
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              addr106:
                              §§push(false);
                           }
                           else
                           {
                              §§goto(addr108);
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr108);
               }
               §§goto(addr88);
            }
            addr108:
            return true;
         }
         §§goto(addr30);
      }
      
      protected function §=`§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§6U§ = null;
         if(_loc4_ || param1)
         {
            §§push(this.§8!1§);
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
                              §§push(this.§?!>§(param1));
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr117:
                                 if(!(_loc3_ && param1))
                                 {
                                    loop23:
                                    while(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§ _§);
                                             addr130:
                                             while(true)
                                             {
                                                §§pop().removeEventListener(Event.COMPLETE,this.§<7§);
                                             }
                                          }
                                          addr128:
                                       }
                                       loop24:
                                       while(!(_loc3_ && _loc2_))
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(this.§ _§);
                                             loop25:
                                             while(true)
                                             {
                                                §§pop().removeEventListener(Event.CANCEL,this.§;!>§);
                                                loop26:
                                                while(true)
                                                {
                                                   loop27:
                                                   while(true)
                                                   {
                                                      §§push(this.§ _§);
                                                      loop28:
                                                      while(true)
                                                      {
                                                         §§pop().addEventListener(Event.COMPLETE,this.§<7§);
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop26;
                                                            }
                                                            §§push(this.§ _§);
                                                            if(_loc3_ && this)
                                                            {
                                                               continue loop28;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               continue loop25;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            addr42:
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               §§pop().addEventListener(Event.CANCEL,this.§;!>§);
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           _loc2_ = §8,§.§0>§(param1);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                 }
                                                                                 break loop23;
                                                                              }
                                                                              break loop23;
                                                                           }
                                                                           this.§ _§.§!!_§(_loc2_.§&"<§);
                                                                        }
                                                                        continue loop27;
                                                                        break loop23;
                                                                     }
                                                                     break loop27;
                                                                  }
                                                                  continue loop24;
                                                               }
                                                               continue;
                                                            }
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc4_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           §§pop();
                                                                           break loop27;
                                                                        }
                                                                        break;
                                                                        addr96:
                                                                        if(!(_loc4_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        addr110:
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           §§goto(addr117);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§push(this.§8!1§);
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().removeEventListener(Event.COMPLETE,this.§>!n§);
                                                                                       addr284:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§8!1§);
                                                                                          while(!_loc3_)
                                                                                          {
                                                                                             §§pop().removeEventListener(Event.CANCEL,this.§8s§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§8!1§);
                                                                                                continue loop9;
                                                                                                addr195:
                                                                                                if(!(_loc4_ || _loc2_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(this.§5,§(param1));
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§goto(addr96);
                                                                                             }
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                §§pop().§!!_§(param1);
                                                                                                break loop24;
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                                 addr275:
                                                                              }
                                                                              addr160:
                                                                              while(true)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              §§goto(addr110);
                                                                           }
                                                                           addr274:
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop23;
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                   }
                                                   while(!(_loc3_ && this))
                                                   {
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr233);
                                                }
                                             }
                                          }
                                          §§goto(addr275);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr160);
                                          §§goto(addr135);
                                       }
                                       addr135:
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr274);
                     }
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      private function §>!n§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§8!1§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>!n§);
               addr154:
               loop1:
               while(true)
               {
                  §§push(this.§8!1§);
                  if(_loc2_ && _loc2_)
                  {
                     continue loop0;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§8s§);
                  while(true)
                  {
                     this.§=!j§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§=!j§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc2_ && this)
                                          {
                                             continue loop3;
                                          }
                                          if(_loc2_ && this)
                                          {
                                             continue loop1;
                                          }
                                          this.initialize(this.§`!C§);
                                       }
                                    }
                                    return;
                                    continue loop4;
                                 }
                                 continue;
                                 addr49:
                              }
                           }
                           addr100:
                           while(true)
                           {
                              §§pop();
                              continue loop3;
                           }
                        }
                     }
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     §§push(this.§7,§);
                     if(!_loc2_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr42);
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr42);
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      private function §8s§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§8!1§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>!n§);
               while(true)
               {
                  §§push(this.§8!1§);
                  if(_loc3_ && this)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§8s§);
                  loop2:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.§"§ = true;
                        if(!(_loc3_ && _loc2_))
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
      
      private function §<7§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§8!1§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§<7§);
               loop1:
               while(true)
               {
                  §§push(this.§8!1§);
                  if(!(_loc3_ || this))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§;!>§);
                  loop2:
                  while(true)
                  {
                     this.§7,§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§=!j§);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr90:
                           addr44:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop8:
                                 while(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    addr76:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             break loop8;
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 return;
                                 addr51:
                              }
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                           addr44:
                           if(!(_loc3_ || _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr51);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §;!>§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8!1§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§<7§);
               loop1:
               while(true)
               {
                  §§push(this.§8!1§);
                  if(_loc2_ && param1)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§;!>§);
                  while(true)
                  {
                     this.§7,§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§=!j§);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr95:
                                    while(true)
                                    {
                                       §§push(this.§7,§);
                                       if(_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_ || this)
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
                                 addr94:
                              }
                              loop5:
                              while(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break loop3;
                                       }
                                       while(true)
                                       {
                                          this.initialize(this.§`!C§);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr95);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          break loop5;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr94);
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get backgroundTextureManager() : §0Y§
      {
         return this.§ !@§;
      }
      
      protected function initialize(param1:§1"B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§ § = false;
            while(true)
            {
               this.§]!P§ = false;
               loop1:
               while(true)
               {
                  §§push(§"]§.§^!v§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(§"]§.§^!v§);
                           addr217:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr219:
                              while(true)
                              {
                              }
                           }
                           loop7:
                           while(true)
                           {
                              if(_loc3_ && param1)
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 this.§5^§ = this.initLevelSlingshot(param1);
                                 loop11:
                                 while(true)
                                 {
                                    this.§3">§ = this.§<"7§(this.§]!V§,this.§ !@§);
                                    addr124:
                                    while(true)
                                    {
                                       this.§0!§.init();
                                       loop13:
                                       while(true)
                                       {
                                          this.addItemsToDisplayList();
                                          loop14:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop7;
                                             }
                                             this.§,X§();
                                             addr75:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc3_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop13;
                                                }
                                                continue loop14;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                              if(!(_loc2_ || param1))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              loop6:
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    if(!(_loc2_ || param1))
                                    {
                                       break;
                                    }
                                    this.§%!O§ = this.initLevelObjectManager(param1);
                                    continue loop7;
                                 }
                                 addr201:
                                 while(true)
                                 {
                                    this.§4J§.§'h§(§#6§.§&9§());
                                    continue loop6;
                                 }
                              }
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this);
                                 §§push(param1.theme);
                                 §§push(this.§!`§.§'I§);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(§§pop() / §'"F§);
                                 }
                                 §§pop().§4J§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§0!§.§;!O§());
                                 §§goto(addr201);
                              }
                              addr208:
                           }
                           §§goto(addr219);
                        }
                     }
                     while(true)
                     {
                        this.mLevelEngine = new §4!`§(this);
                        §§goto(addr208);
                        §§goto(addr219);
                     }
                  }
                  §§goto(addr217);
               }
            }
         }
         §§goto(addr145);
      }
      
      protected function §,X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§-"?§)
            {
               loop0:
               while(true)
               {
                  this.§9L§ = §[!Q§.initialize(this.§-"?§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§9L§);
                     while(true)
                     {
                        §§pop().speed = 1;
                        while(true)
                        {
                           §§push(this.§9L§);
                           if(!(_loc2_ || _loc2_))
                           {
                              break;
                           }
                           §§pop().play();
                           loop4:
                           for(; !_loc1_; while(!(_loc1_ && _loc1_))
                           {
                              if(_loc2_)
                              {
                                 this.§-"?§ = null;
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§goto(addr20);
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           })
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 this.§]!t§ = -1000;
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr20:
            return;
         }
         §§goto(addr90);
      }
      
      public function §;w§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§-"?§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§9L§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9L§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     if(!param1)
                     {
                        §§push(this.§9L§);
                        if(!(_loc3_ && param1))
                        {
                           §§pop().speed = Math.max(this.§9L§.speed / 1.25,Math.pow(1 / 1.25,10));
                           if(_loc2_ || this)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr19);
                              }
                              else
                              {
                                 addr95:
                                 this.§9L§.speed = Math.min(this.§9L§.speed * 1.25,Math.pow(1.25,2));
                              }
                              §§goto(addr19);
                           }
                        }
                     }
                     §§goto(addr95);
                  }
               }
               addr19:
               return;
            }
         }
         §§goto(addr95);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§9L§);
            if(!(_loc1_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().speed = 1;
         }
         addr50:
         if(_loc2_ || this)
         {
            §§push(this.§9L§);
         }
      }
      
      protected function initLevelObjectManager(param1:§1"B§) : §]a§
      {
         return new §]a§(this,param1,new Sprite());
      }
      
      protected function §]]§(param1:§1"B§) : §&0§
      {
         return new §&0§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§0Y§, param4:Number) : §[!x§
      {
         return new §[!x§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§1"B§) : §2a§
      {
         return new §2a§(this,param1,new Sprite());
      }
      
      protected function §<"7§(param1:§[t§, param2:§0Y§) : §^!f§
      {
         return new §^!f§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            if(this.mReadyToRun)
            {
               if(_loc6_ || param2)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§1"B§ = this.§=C§();
         var _loc4_:§2!L§;
         (_loc4_ = new §2!L§()).left = 0;
         if(_loc6_)
         {
            §§push(_loc4_);
            §§push(§&0§.§'v§);
            if(!(_loc7_ && param2))
            {
               §§push(-§§pop());
               if(_loc6_ || _loc3_)
               {
                  §§push(10);
                  if(_loc6_ || this)
                  {
                     addr177:
                     §§push(§§pop() / §§pop());
                     if(_loc6_)
                     {
                        §§push(8);
                     }
                     §§pop().top = §§pop();
                     while(true)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.top);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(§§pop() + §&0§.§'v§);
                        }
                        §§pop().bottom = §§pop();
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.left);
                           if(_loc6_ || this)
                           {
                              §§push(§§pop() + §&0§.§]C§);
                           }
                           §§pop().right = §§pop();
                           loop2:
                           while(true)
                           {
                              _loc4_.y = -13.929;
                              while(true)
                              {
                                 _loc4_.x = §&0§.§]C§;
                                 while(!(_loc7_ && param2))
                                 {
                                    while(true)
                                    {
                                       _loc4_.id = §&0§.§["%§;
                                       do
                                       {
                                          _loc3_.§%!Y§(_loc4_);
                                       }
                                       while(!(_loc6_ || param1));
                                       
                                       if(_loc7_ && param1)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§push(§§pop() * §§pop());
               }
            }
            §§goto(addr177);
         }
         §§goto(addr78);
      }
      
      protected function §3!]§(param1:§1"B§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2)
            {
               if(_loc3_)
               {
                  this.§5"'§(param1);
               }
            }
         }
      }
      
      protected function §=C§() : §1"B§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1"B§ = new §1"B§();
         if(!_loc3_)
         {
            _loc1_.§!f§ = -12;
         }
         return new §1"B§();
      }
      
      protected function §?!Z§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§3!h§ ^= this.§3!h§ << 21;
         }
         do
         {
            §§push(this);
            §§push(this.§3!h§);
            §§push(this.§3!h§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() >>> 35);
            }
            §§pop().§3!h§ = §§pop() ^ §§pop();
            do
            {
               this.§3!h§ ^= this.§3!h§ << 4;
            }
            while(_loc1_ && this);
            
         }
         while(!(_loc2_ || _loc1_));
         
         return this.§3!h§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §5"'§(param1:§1"B§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§3"6§ = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(this);
            §§push(0.33);
            if(_loc7_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§3!h§ = §§pop();
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
                  if(_loc7_ || this)
                  {
                     _loc3_ = §§pop();
                     if(!_loc6_)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              break;
                           }
                           §§push(5);
                           if(_loc6_)
                           {
                              continue loop2;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§push(this.§?!Z§());
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(§§pop() * 5);
                              }
                              §§push(int(§§pop()));
                              if(_loc6_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc7_ || param1)
                                 {
                                    §§push(_loc5_ = new §3"6§());
                                    §§push(30 + _loc3_ * 10);
                                    if(_loc7_)
                                    {
                                       §§push(this.§?!Z§());
                                       if(_loc7_ || _loc2_)
                                       {
                                          §§push(§§pop() * 9);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().x = §§pop();
                                    if(_loc7_ || param1)
                                    {
                                       §§push(_loc2_);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop6:
                                          while(true)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                §§push(_loc5_);
                                                §§push(-100 + _loc2_ * 6);
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(this.§?!Z§());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() * 3);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         addr379:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc7_)
                                                         {
                                                            addr385:
                                                            §§push(§§pop() - _loc3_ * 8);
                                                         }
                                                         §§pop().y = §§pop();
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(§§pop() + §§pop() * _loc3_);
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 addr295:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(5);
                                                                                 }
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc7_ || _loc2_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       addr313:
                                                                                       _loc4_ = §§pop();
                                                                                       loop35:
                                                                                       while(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          if(_loc7_ || _loc3_)
                                                                                          {
                                                                                             §§push(2);
                                                                                             while(!_loc6_)
                                                                                             {
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop35;
                                                                                                      }
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         §§push(3);
                                                                                                         if(_loc6_ && param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(§§pop() != §§pop())
                                                                                                         {
                                                                                                            _loc5_.id = "BIRD_BLUE";
                                                                                                            loop31:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                               {
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     §§push(this.§?!Z§());
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * 360);
                                                                                                                     }
                                                                                                                     §§pop().angle = §§pop();
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc6_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue loop31;
                                                                                                                        }
                                                                                                                        addr168:
                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              loop15:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 param1.addObject(_loc5_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       _loc3_++;
                                                                                                                                       if(_loc6_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                          if(_loc7_ || this)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          addr445:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc5_.id = "PIG_MUSTACHE";
                                                                                                                                             addr448:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr388:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   §§push(45);
                                                                                                                                                   §§push(this.§?!Z§());
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * 90);
                                                                                                                                                   }
                                                                                                                                                   §§pop().angle = §§pop() - §§pop();
                                                                                                                                                   break loop15;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                _loc5_.id = "BIRD_YELLOW";
                                                                                                                                                while(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue loop18;
                                                                                                                                                   §§goto(addr168);
                                                                                                                                                }
                                                                                                                                                §§goto(addr448);
                                                                                                                                                addr224:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc5_.id = "BIRD_RED";
                                                                                                                                                }
                                                                                                                                                addr339:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr214:
                                                                                                                                       }
                                                                                                                                       §§goto(addr448);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ && param1)
                                                                                                                                       {
                                                                                                                                          break loop15;
                                                                                                                                       }
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              while(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 §§goto(addr133);
                                                                                                                                 §§goto(addr342);
                                                                                                                              }
                                                                                                                              addr133:
                                                                                                                              addr468:
                                                                                                                              §§push(_loc3_);
                                                                                                                              break loop35;
                                                                                                                              addr468:
                                                                                                                           }
                                                                                                                           loop38:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              addr471:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 addr472:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    loop26:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       loop27:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             loop23:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr486:
                                                                                                                                                loop20:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   addr451:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(2);
                                                                                                                                                      addr452:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            break loop20;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop23;
                                                                                                                                                }
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                             addr475:
                                                                                                                                          }
                                                                                                                                          loop21:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr456:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc6_ && this)
                                                                                                                                                {
                                                                                                                                                   continue loop27;
                                                                                                                                                }
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         continue loop26;
                                                                                                                                                      }
                                                                                                                                                      §§pop();
                                                                                                                                                      §§goto(addr468);
                                                                                                                                                   }
                                                                                                                                                   addr465:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      _loc5_.id = "PIG_HELMET";
                                                                                                                                                      break loop18;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr445);
                                                                                                                                                }
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop38;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr493:
                                                                                                                        }
                                                                                                                        §§goto(addr224);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(_loc7_ || param1)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr388);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc5_.y = 0;
                                                                                                                     }
                                                                                                                     addr490:
                                                                                                                  }
                                                                                                                  §§goto(addr493);
                                                                                                               }
                                                                                                               §§goto(addr486);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr214);
                                                                                                      }
                                                                                                      §§goto(addr471);
                                                                                                   }
                                                                                                   §§goto(addr339);
                                                                                                }
                                                                                                §§goto(addr452);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc7_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr443);
                                                                                                      }
                                                                                                      §§goto(addr475);
                                                                                                   }
                                                                                                   §§goto(addr456);
                                                                                                }
                                                                                                §§goto(addr465);
                                                                                             }
                                                                                             addr431:
                                                                                             addr329:
                                                                                          }
                                                                                          §§goto(addr451);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr431);
                                                                                          §§goto(addr468);
                                                                                       }
                                                                                       addr314:
                                                                                    }
                                                                                    §§goto(addr329);
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                              §§goto(addr295);
                                                                              §§push(§§pop() % §§pop());
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  §§goto(addr472);
                                                               }
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§goto(addr385);
                                                   }
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr385);
                                             }
                                             §§goto(addr490);
                                          }
                                       }
                                    }
                                    §§goto(addr448);
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                     _loc2_++;
                     if(!(_loc7_ || _loc3_))
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr70);
               }
               return;
            }
         }
      }
      
      private function §5B§() : void
      {
      }
      
      public function addItemsToDisplayList() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§[!x§.§50§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     this.§6!§(this.§4J§.backgroundLayersSprite,false);
                  }
                  while(true)
                  {
                     loop4:
                     while(_loc1_ || this)
                     {
                        while(true)
                        {
                           this.§6!§(this.§3">§.getGroupSprite(§^!f§.§4N§),true);
                           while(true)
                           {
                              this.§6!§(this.§%!O§.mainSprite,true);
                              loop7:
                              while(_loc1_)
                              {
                                 this.§6!§(this.§5^§.sprite,true);
                                 loop8:
                                 while(_loc1_)
                                 {
                                    this.§6!§(this.§3">§.getGroupSprite(§^!f§.§>"F§),true);
                                    do
                                    {
                                       this.§6!§(this.§4J§.groundSprite,false);
                                       while(true)
                                       {
                                          if(_loc1_ || _loc1_)
                                          {
                                             addr100:
                                             if(!(_loc1_ || this))
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue loop8;
                                          addr60:
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             continue;
                                          }
                                          this.§6!§(this.§4J§.foregroundLayersSprite,false);
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                while(true)
                                                {
                                                   this.§6!§(this.§3">§.getGroupSprite(§^!f§.§?y§),true);
                                                   if(!(_loc1_ || this))
                                                   {
                                                      continue loop12;
                                                   }
                                                   §§goto(addr39);
                                                   continue loop12;
                                                }
                                                addr23:
                                             }
                                             continue loop7;
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§6!§(this.§3">§.getGroupSprite(§^!f§.§?i§),true);
                                          break loop8;
                                          §§goto(addr100);
                                       }
                                       continue loop8;
                                    }
                                    while(!(_loc1_ || _loc1_));
                                    
                                    return;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§6!§(this.§3">§.getGroupSprite(§^!f§.§6d§),false);
                  §§goto(addr184);
               }
            }
         }
         §§goto(addr174);
      }
      
      protected function §6!§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.sprite);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr42:
                     this.sprite.addChild(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc4_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§#6§.§>!F§);
               addr142:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        param1 = §§pop();
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc5_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           addr123:
                           if(!(_loc5_ && this))
                           {
                              param2 = §§pop();
                              loop5:
                              while(_loc4_ || _loc3_)
                              {
                                 while(true)
                                 {
                                    _loc3_.x = (param1 / §&0§.§8!F§ + this.§0!§.§6!K§ - §&0§.§0"&§ / §&0§.§8!F§) * §'"F§;
                                    do
                                    {
                                       _loc3_.y = (param2 / §&0§.§8!F§ + this.§0!§.§4!E§ - §&0§.§7<§ / §&0§.§8!F§) * §'"F§;
                                    }
                                    while(!(_loc4_ || this));
                                    
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 return _loc3_;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      public function §'c§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!_loc5_)
         {
            _loc3_.x = (param1 / §'"F§ + §&0§.§0"&§ / §&0§.§8!F§ - this.§0!§.§6!K§) * §&0§.§8!F§;
            if(!_loc5_)
            {
               _loc3_.y = (param2 / §'"F§ + §&0§.§7<§ / §&0§.§8!F§ - this.§0!§.§4!E§) * §&0§.§8!F§;
               addr43:
            }
            var _loc4_:Number = Math.max(§#6§.§>!F§,§#6§.§"e§);
            if(!(_loc5_ && _loc3_))
            {
               _loc3_.x *= _loc4_;
               do
               {
                  _loc3_.y *= _loc4_;
               }
               while(!(_loc6_ || _loc3_));
               
            }
            return _loc3_;
         }
         §§goto(addr43);
      }
      
      public function §3"A§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§%!O§.addObject(param1,param2,param3);
         }
      }
      
      public function §?v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§>§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§>§);
                     while(true)
                     {
                        §§pop().visible = true;
                        addr81:
                        loop4:
                        while(true)
                        {
                           §§push(this.§>§);
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 addr57:
                                 §§pop().alpha = 0;
                                 while(_loc2_ && this)
                                 {
                                    continue loop4;
                                    §§goto(addr57);
                                 }
                                 while(true)
                                 {
                                    this.§%"4§ = 0;
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr59);
                                 }
                                 addr59:
                                 return;
                                 addr23:
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr81);
               }
               §§goto(addr23);
            }
         }
         §§goto(addr81);
      }
      
      public function §`K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^!m§ = new §;x§(§4"F§.§ =§,§4"F§.§`"E§);
         }
      }
      
      public function §"!a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§^!m§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§4J§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§4J§);
                     addr619:
                     while(true)
                     {
                        §§pop().dispose();
                        addr620:
                        while(true)
                        {
                           this.§4J§ = null;
                           addr611:
                           while(true)
                           {
                           }
                        }
                     }
                     loop9:
                     while(true)
                     {
                        if(!(_loc2_ || _loc1_))
                        {
                           continue loop0;
                        }
                        §§push(this.§!`§);
                        loop26:
                        while(true)
                        {
                           §§pop().clear();
                           loop27:
                           while(true)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 this.§!`§ = null;
                                 loop28:
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       if(!_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break loop9;
                                          }
                                          addr514:
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this.§5^§);
                                             if(_loc2_ || this)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§5^§);
                                                      addr486:
                                                      while(true)
                                                      {
                                                         §§pop().dispose();
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     this.§5^§ = null;
                                                                     continue;
                                                                  }
                                                                  §§goto(addr611);
                                                               }
                                                               break loop10;
                                                            }
                                                            continue loop28;
                                                         }
                                                         continue loop28;
                                                      }
                                                      addr377:
                                                      if(_loc1_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      addr384:
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(this.sprite)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               addr340:
                                                               §§push(this.sprite);
                                                               if(_loc2_)
                                                               {
                                                                  if(§§pop().numChildren <= 0)
                                                                  {
                                                                     addr349:
                                                                     this.§4"<§ = 0;
                                                                     this.§,"<§ = 0;
                                                                     this.mReadyToRun = false;
                                                                     this.§&"0§ = false;
                                                                     addr352:
                                                                     addr339:
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        this.§%"4§ = §4"F§.§'8§;
                                                                        addr317:
                                                                        §§push(this.§8!_§);
                                                                        if(!(_loc1_ && _loc1_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr310:
                                                                              (this.§8!_§ as §5P§).§]Y§.x = 0;
                                                                              addr311:
                                                                              addr304:
                                                                              addr309:
                                                                              §§push(this.§8!_§);
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 §§push((§§pop() as §5P§).§]Y§);
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc1_ && _loc1_))
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       addr273:
                                                                                       if(!(_loc1_ && _loc2_))
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr238:
                                                                                             §§push(this.§>§);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr246:
                                                                                                   this.§>§.visible = false;
                                                                                                   addr244:
                                                                                                }
                                                                                                this.§9L§ = null;
                                                                                                addr235:
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   this.§3'§ = null;
                                                                                                   addr230:
                                                                                                   §§push(this.§8!1§);
                                                                                                   if(!(_loc1_ && _loc2_))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr213:
                                                                                                         this.§8!1§.removeEventListener(Event.COMPLETE,this.§>!n§);
                                                                                                         addr211:
                                                                                                         if(_loc2_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(this.§8!1§);
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §§pop().removeEventListener(Event.CANCEL,this.§8s§);
                                                                                                               addr197:
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  addr169:
                                                                                                                  if(this.§ _§)
                                                                                                                  {
                                                                                                                     if(!(_loc1_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr179:
                                                                                                                        this.§ _§.removeEventListener(Event.COMPLETE,this.§<7§);
                                                                                                                     }
                                                                                                                     addr184:
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§push(this.§ _§);
                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(!(_loc1_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§pop().removeEventListener(Event.CANCEL,this.§;!>§);
                                                                                                                              addr158:
                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr116:
                                                                                                                                 this.§1!j§();
                                                                                                                                 addr119:
                                                                                                                                 if(!(_loc1_ && this))
                                                                                                                                 {
                                                                                                                                    if(!(_loc1_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          §§push(§"]§.§!X§);
                                                                                                                                          if(!(_loc1_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr93:
                                                                                                                                                if(_loc2_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc1_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr109:
                                                                                                                                                      §"]§.§!X§.color = 0;
                                                                                                                                                      addr111:
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr59:
                                                                                                                                                            §§push(this.§,!c§);
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr76:
                                                                                                                                                                        this.§,!c§.removeEventListeners();
                                                                                                                                                                        addr77:
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr29:
                                                                                                                                                                              this.mReadyToRun = false;
                                                                                                                                                                              if(_loc2_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc1_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc2_ || _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr317);
                                                                                                                                                                                          }
                                                                                                                                                                                          return;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr235);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr230);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr119);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr77);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr93);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr111);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr184);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr77);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr29);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr76);
                                                                                                                                                         }
                                                                                                                                                         addr368:
                                                                                                                                                         §§goto(addr340);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr311);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr352);
                                                                                                                                                }
                                                                                                                                                §§goto(addr158);
                                                                                                                                             }
                                                                                                                                             §§goto(addr59);
                                                                                                                                          }
                                                                                                                                          §§goto(addr109);
                                                                                                                                       }
                                                                                                                                       §§goto(addr339);
                                                                                                                                    }
                                                                                                                                    §§goto(addr273);
                                                                                                                                 }
                                                                                                                                 §§goto(addr211);
                                                                                                                              }
                                                                                                                              §§goto(addr244);
                                                                                                                           }
                                                                                                                           §§goto(addr169);
                                                                                                                        }
                                                                                                                        §§goto(addr179);
                                                                                                                     }
                                                                                                                     §§goto(addr197);
                                                                                                                  }
                                                                                                                  §§goto(addr116);
                                                                                                               }
                                                                                                               §§goto(addr211);
                                                                                                            }
                                                                                                            §§goto(addr213);
                                                                                                         }
                                                                                                         §§goto(addr244);
                                                                                                      }
                                                                                                      §§goto(addr169);
                                                                                                   }
                                                                                                   §§goto(addr213);
                                                                                                }
                                                                                                §§goto(addr349);
                                                                                             }
                                                                                             §§goto(addr246);
                                                                                          }
                                                                                          §§goto(addr349);
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              addr306:
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr238);
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     addr334:
                                                                     §§goto(addr334);
                                                                     addr348:
                                                                  }
                                                                  §§push(this.sprite);
                                                               }
                                                               §§pop().removeChildAt(0,true);
                                                               §§goto(addr368);
                                                            }
                                                            else
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 addr429:
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr438:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§3">§);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                          addr409:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().dispose();
                                                                                             addr410:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ || _loc1_))
                                                                                                {
                                                                                                   break loop18;
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr438);
                                                                                       }
                                                                                       addr385:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.mLevelEngine);
                                                                                       addr568:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().clear();
                                                                                          break loop17;
                                                                                       }
                                                                                    }
                                                                                    addr566:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§0!§);
                                                                                    addr452:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().clear();
                                                                                    }
                                                                                    §§goto(addr429);
                                                                                 }
                                                                                 addr450:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop27;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop27;
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               §§goto(addr465);
                                                            }
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                      while(true)
                                                      {
                                                         this.mLevelEngine = null;
                                                         addr548:
                                                         while(true)
                                                         {
                                                            addr515:
                                                            while(true)
                                                            {
                                                               §§push(this.§!`§);
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop26;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§0!§);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr450);
                                                      }
                                                      §§goto(addr385);
                                                   }
                                                   §§goto(addr452);
                                                   §§goto(addr472);
                                                }
                                             }
                                             §§goto(addr486);
                                          }
                                          while(true)
                                          {
                                             this.§^<§ = null;
                                          }
                                          addr596:
                                       }
                                       loop37:
                                       while(true)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr591:
                                             while(true)
                                             {
                                                §§push(this.mLevelEngine);
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.mLevelEngine);
                                                         if(_loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop().§2T§)
                                                               {
                                                               }
                                                               §§goto(addr566);
                                                            }
                                                            addr564:
                                                         }
                                                         §§goto(addr568);
                                                         continue loop28;
                                                      }
                                                      addr560:
                                                   }
                                                   §§goto(addr515);
                                                }
                                                §§goto(addr564);
                                                §§goto(addr591);
                                             }
                                             addr549:
                                          }
                                          addr606:
                                          while(true)
                                          {
                                             this.§%!O§ = null;
                                             §§goto(addr596);
                                             continue loop37;
                                          }
                                       }
                                    }
                                    §§goto(addr560);
                                 }
                              }
                              addr603:
                              while(true)
                              {
                                 §§push(this.§%!O§);
                                 addr605:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    §§goto(addr606);
                                 }
                                 continue loop27;
                              }
                           }
                        }
                     }
                     §§goto(addr620);
                  }
               }
               while(true)
               {
                  §§push(this.§%!O§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr603);
                     }
                     §§goto(addr549);
                  }
                  §§goto(addr605);
                  §§goto(addr611);
               }
            }
            §§goto(addr619);
         }
         §§goto(addr514);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2L§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§3'§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§3'§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().toString();
         }
         addr50:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(this.mReadyToRun);
            if(!(_loc5_ && param2))
            {
               §§push(!§§pop());
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
                        while(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§9L§);
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(!(_loc5_ && param2))
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§pop();
                                          loop7:
                                          while(_loc4_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§9L§);
                                                if(_loc5_ && this)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(§§pop().§5%§);
                                                if(_loc4_)
                                                {
                                                   continue loop6;
                                                }
                                                addr71:
                                                if(!(_loc4_ || param2))
                                                {
                                                   continue loop0;
                                                }
                                                if(!_loc5_)
                                                {
                                                   while(§§pop())
                                                   {
                                                      if(_loc5_ && param1)
                                                      {
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            break;
                                                         }
                                                         break loop2;
                                                      }
                                                      if(_loc4_ || this)
                                                      {
                                                         if(_loc4_ || param3)
                                                         {
                                                            §§goto(addr118);
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§push(this.updateWithTime(param1,true,param2,param3));
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || param2)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   addr118:
                                                   return this.§'!M§(param1,param2,param3);
                                                   addr90:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop7;
                                                   }
                                                   addr184:
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§"]§.§+"E§());
                                             break loop5;
                                          }
                                       }
                                    }
                                    §§goto(addr90);
                                 }
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        addr170:
                        return §§pop();
                        §§push(0);
                        addr167:
                     }
                  }
               }
            }
            §§goto(addr184);
         }
         §§goto(addr155);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            if(this.§ §)
            {
               if(_loc7_)
               {
                  addr29:
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && param1))
                        {
                           addr44:
                           param1 = §§pop();
                           if(_loc7_ || param2)
                           {
                              §§push(§"]§.§^!v§);
                              if(_loc7_ || this)
                              {
                                 if(§§pop())
                                 {
                                    addr68:
                                    if(!_loc6_)
                                    {
                                       §§push(§"]§.§^!v§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc7_)
                                    {
                                       §§push(this);
                                       §§push(this.§,"<§);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§,"<§ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop1:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.§%!O§.updateLevelObjectsGoingOn(param1);
                                                while(true)
                                                {
                                                   if(_loc7_ || param2)
                                                   {
                                                      this.§4"<§ = 0;
                                                      loop3:
                                                      while(!_loc6_)
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        this.§0j§(param1,_loc5_);
                                                                     }
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        addr74:
                                                                        §§push(param1);
                                                                        if(!(_loc6_ && param3))
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr201:
                                                                              while(true)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                           }
                                                                           addr170:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           addr182:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§5^§.update(param1,param4);
                                                                                 }
                                                                                 addr184:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§4"<§);
                                                                                    if(_loc7_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() + param1);
                                                                                    }
                                                                                    §§pop().§4"<§ = §§pop();
                                                                                    §§goto(addr201);
                                                                                 }
                                                                                 addr188:
                                                                              }
                                                                           }
                                                                           §§goto(addr170);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§4"<§ = _loc5_;
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  §§goto(addr74);
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr201);
                                                }
                                             }
                                             §§goto(addr188);
                                          }
                                       }
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr68);
                              }
                              §§pop().speed = 0.2;
                           }
                           §§goto(addr68);
                        }
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr44);
               }
            }
            §§goto(addr68);
         }
         §§goto(addr29);
      }
      
      private function §'!M§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§4!`§.§%!E§);
         if(_loc7_)
         {
            §§push(§§pop() * 1000);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            if(this.§9L§)
            {
               loop19:
               while(true)
               {
                  §§push(param1);
                  loop20:
                  while(true)
                  {
                     §§push(this.§9L§.speed);
                     loop21:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        loop22:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop23:
                           while(true)
                           {
                              param1 = §§pop();
                              while(true)
                              {
                                 §§push(this.§,"<§);
                                 if(!(_loc6_ && param1))
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(param1);
                                             if(!(_loc6_ && param3))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc6_ && param3))
                                                {
                                                   addr290:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc5_ = §§pop();
                                                if(!(_loc6_ && this))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop21;
                                          }
                                          continue loop20;
                                       }
                                       continue loop22;
                                    }
                                    continue loop23;
                                 }
                                 §§goto(addr290);
                              }
                              continue loop19;
                           }
                        }
                     }
                  }
               }
               addr310:
            }
            else
            {
               §§push(this.updateWithTime(_loc4_,true,param2,param3));
               if(_loc7_ || param2)
               {
                  if(!(_loc6_ && param2))
                  {
                     return §§pop();
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr310);
      }
      
      private function §0j§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && param1))
         {
            this.§4J§.update(param1);
            loop0:
            while(true)
            {
               this.§%!O§.§="'§(param1,param2);
               loop1:
               while(true)
               {
                  this.§^!#§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§%"4§);
                     loop3:
                     while(true)
                     {
                        §§push(§4"F§.§'8§);
                        addr274:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§>§);
                              if(_loc5_)
                              {
                                 if(_loc5_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.§>§);
                                          addr153:
                                          while(true)
                                          {
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§pop().visible = false;
                                                loop24:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§4"F§.§'8§);
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(§§pop() / 2);
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         addr256:
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr258:
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(-Math.abs(this.§%"4§ - _loc3_));
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr236:
                                                            if(_loc6_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  addr275:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§%"4§);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§push(§§pop() + param1);
                                                                     }
                                                                     §§pop().§%"4§ = §§pop();
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               addr241:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr256);
                                                            }
                                                            continue loop14;
                                                         }
                                                         addr175:
                                                         §§push(this.§>§);
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§>§);
                                                                  addr178:
                                                                  while(true)
                                                                  {
                                                                     §§pop().alpha = _loc4_;
                                                                     addr180:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               addr176:
                                                            }
                                                            while(true)
                                                            {
                                                               addr78:
                                                               while(true)
                                                               {
                                                                  §§push(this.§^!m§);
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop7:
                                                                        while(_loc5_)
                                                                        {
                                                                           §§push(this.§^!m§);
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop().§@1§(this.§0!§,param1))
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 addr116:
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          addr125:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§0!§.§+E§(param1);
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      this.mLevelEngine.§"!v§();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ && param2))
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                         addr62:
                                                                                                         this.§3">§.update(param1);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr258);
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             continue loop17;
                                                                                             §§goto(addr125);
                                                                                          }
                                                                                          addr63:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr241);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr180);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr176);
                                                                     }
                                                                     §§goto(addr63);
                                                                  }
                                                                  §§goto(addr93);
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr178);
                                          }
                                       }
                                    }
                                    §§goto(addr78);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr153);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr275);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               addr92:
               while(true)
               {
                  §§push(1000);
                  addr93:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr94:
                     while(true)
                     {
                        §§pop().updateLevelObjectsGoingOn(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
            addr91:
         }
         while(true)
         {
            §§push(this.objects);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     §§push(1000);
                     if(_loc2_)
                     {
                        addr80:
                        §§push(§§pop() * §§pop());
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop().§6!5§(§§pop());
                           do
                           {
                              this.§7"3§();
                           }
                           while(!(_loc2_ || _loc3_));
                           
                           if(_loc2_ || param1)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr94);
               }
               §§goto(addr80);
            }
            else
            {
               §§goto(addr91);
            }
         }
      }
      
      public function §^!#§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§&!r§ = null;
         if(_loc5_ || this)
         {
            §§push(this.§,"<§);
            §§push(this.§6"D§);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc5_)
               {
                  §§goto(addr55);
               }
            }
            §§goto(addr59);
         }
         addr55:
         if(this.§7F§ != null)
         {
            var _loc3_:* = this.§7F§;
            addr59:
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  _loc1_.addTrail();
               }
            }
            if(_loc4_ && _loc3_)
            {
            }
            §§goto(addr101);
         }
         this.§6"D§ = this.§,"<§;
         addr101:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&!r§ = null;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!_loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!_loc3_)
            {
               §§push(this.mPigsAnimationTimer1);
               if(!_loc3_)
               {
                  §§push(0);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(this.§%!O§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(true);
                              if(_loc4_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(_loc4_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          addr70:
                                          §§push(this.§%!O§);
                                          if(!_loc3_)
                                          {
                                             addr74:
                                             §§push(true);
                                             if(_loc4_)
                                             {
                                                addr77:
                                                §§push(§§pop().§;R§(§§pop()));
                                                if(_loc4_ || _loc2_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            _loc2_.§"!&§.mTryToScream = §#!D§.§%"$§;
                                                            if(_loc4_ || this)
                                                            {
                                                            }
                                                            addr143:
                                                            §§push(this);
                                                            §§push(this.mPigsAnimationTimer2);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(§§pop() - param1);
                                                            }
                                                            §§pop().mPigsAnimationTimer2 = §§pop();
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr166:
                                                               if(this.mPigsAnimationTimer2 <= 0)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr169:
                                                                     §§push(this.§%!O§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr173:
                                                                        §§push(true);
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           §§goto(addr240);
                                                                        }
                                                                        addr187:
                                                                        _loc2_ = §§pop().§;R§(§§pop());
                                                                        §§goto(addr186);
                                                                     }
                                                                     addr186:
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              _loc2_.§"!&§.mTryToBlink = §#!D§.§ !'§;
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(250 + Math.random() * 500);
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() + 2000 / (3 + this.§%!O§.getPigCount()));
                                                                                 }
                                                                                 §§pop().mPigsAnimationTimer2 = §§pop();
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                     addr240:
                                                                     if(§§pop().isPigsAlive(§§pop()))
                                                                     {
                                                                        addr183:
                                                                        §§push(this.§%!O§);
                                                                     }
                                                                     return;
                                                                     §§push(true);
                                                                  }
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr240);
                                                            }
                                                            §§goto(addr169);
                                                         }
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   §§push(this);
                                                   §§push(500 + Math.random() * 1000);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() + 4000 / (3 + this.§%!O§.getPigCount()));
                                                   }
                                                   §§pop().mPigsAnimationTimer1 = §§pop();
                                                   §§goto(addr143);
                                                }
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr173);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr143);
                  }
               }
               §§goto(addr166);
            }
            §§goto(addr70);
         }
         §§goto(addr169);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            §§push(param6);
            if(!_loc7_)
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§'G§.§4!Q§);
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
                  while(true)
                  {
                     §?E§.addScore(param1,param2);
                     loop3:
                     while(true)
                     {
                        this.§,!c§.addScore(param1);
                        loop4:
                        for(; !(_loc7_ && this); while(!(_loc7_ && this))
                        {
                           §§goto(addr124);
                           §§goto(addr53);
                        })
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
                                             if(_loc8_ || param1)
                                             {
                                                §§push(param1);
                                                if(_loc8_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(0);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc8_ || param3))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr53:
                                                                           if(_loc7_ && param1)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           this.§%!&§(param1.toString(),param4,param5,800,param6,0,0);
                                                                        }
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr173);
                                                                     }
                                                                     return;
                                                                     addr49:
                                                                  }
                                                               }
                                                               continue loop7;
                                                               addr104:
                                                            }
                                                            continue loop6;
                                                         }
                                                         loop10:
                                                         while(_loc8_)
                                                         {
                                                            §§pop();
                                                            continue loop4;
                                                            while(true)
                                                            {
                                                               §§push(this.§]!P§);
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc7_ && this)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr49);
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr175);
                                                }
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                    §§goto(addr104);
                                 }
                              }
                           }
                        }
                        §§goto(addr177);
                     }
                  }
               }
            }
            §§goto(addr175);
         }
         §§goto(addr124);
      }
      
      public function §%!&§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §§push(param5);
            if(!(_loc9_ && param3))
            {
               if(§§pop() == -9999)
               {
                  if(_loc8_)
                  {
                     §§push(§'G§.§=!4§);
                     if(_loc8_ || param1)
                     {
                        addr85:
                        param5 = §§pop();
                        while(true)
                        {
                        }
                        addr86:
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr86);
               }
               while(true)
               {
                  this.§3">§.§;!u§(§'G§.§"2§,§^!f§.§?y§,§'G§.§7!e§,param2,param3,param4,param1,param5,param6,param7);
                  if(_loc8_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      public function §<!1§(param1:§&!r§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§7F§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§7F§ = new Array();
                  addr78:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§5^§.useMightyEagle();
         }
         while(true)
         {
            this.§%!O§.§"s§();
            while(!_loc2_)
            {
               this.§]!P§ = true;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §7">§(param1:§&!r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§3">§.§2!_§(§^!f§.§6d§);
         }
         while(true)
         {
            §§push(this.§7F§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop().indexOf(param1) < 0)
               {
                  while(true)
                  {
                     §§push(this.§7F§);
                     if(!_loc2_)
                     {
                        if(§§pop().length == 0)
                        {
                           if(_loc3_)
                           {
                              this.§7F§ = null;
                           }
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr54);
                        }
                        break;
                     }
                  }
                  addr25:
               }
               while(_loc3_)
               {
                  §§push(this.§7F§);
                  while(true)
                  {
                     §§pop().splice(this.§7F§.indexOf(param1),1);
                     addr96:
                     while(true)
                     {
                     }
                  }
                  if(_loc3_ || param1)
                  {
                     §§goto(addr25);
                  }
               }
               continue;
               return;
            }
            §§goto(addr90);
         }
      }
      
      public function §^K§(param1:§;!M§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§^<§ = this.§%!O§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(_loc8_ || param1)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr48:
                  §§push(§2a§.BIRD_LAUNCH_FORCE_GREEN);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        addr55:
                     }
                     addr69:
                     var _loc4_:* = Number(§§pop());
                     addr68:
                     if(!_loc7_)
                     {
                        §§push(param1.§>! §);
                        if(_loc8_ || this)
                        {
                           §§push(1);
                           loop0:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 addr154:
                                 while(true)
                                 {
                                    §§push(this.§^<§);
                                    addr156:
                                    loop2:
                                    while(true)
                                    {
                                       §§pop().§-!#§(param1.§>! §);
                                       addr159:
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                       addr130:
                                       addr142:
                                       §§pop().§"!&§.§8!C§();
                                    }
                                 }
                                 addr154:
                              }
                              while(true)
                              {
                                 §§push(param1.§&!v§);
                                 if(_loc8_)
                                 {
                                    §§push(0);
                                    if(_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(_loc8_ || param1)
                                             {
                                                §§push(param1.§&!v§);
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc8_ || this)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr116:
                                                      if(_loc8_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr120);
                                                         }
                                                         else
                                                         {
                                                            addr160:
                                                            §§push(_loc4_);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               §§push(-§§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  addr171:
                                                                  §§push(§§pop() * param2);
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr192:
                                                                  var _loc5_:* = §§pop();
                                                                  §§push(_loc4_);
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     §§push(§§pop() * param2);
                                                                     if(_loc8_)
                                                                     {
                                                                        addr205:
                                                                        §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           addr221:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc6_:* = §§pop();
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           this.§^<§.§^!u§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                                        }
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           this.camera.§4"2§(§&0§.§[!M§);
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§3'§);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    addr274:
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr264:
                                                                           §§pop().§^K§(this.mLevelEngine.§;s§,param1.x,param1.y,param2,param3);
                                                                           §§goto(addr274);
                                                                        }
                                                                     }
                                                                     §§goto(addr221);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                }
                                                §§goto(addr171);
                                             }
                                             else
                                             {
                                                §§goto(addr154);
                                             }
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr160);
                                 }
                                 break;
                              }
                              §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                              if(!_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr55);
               }
               else
               {
                  §§push(§2a§.BIRD_LAUNCH_FORCE);
                  if(_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_ || this)
                     {
                        §§goto(addr68);
                     }
                  }
               }
               §§goto(addr69);
            }
         }
         §§goto(addr48);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§&"0§ = true;
         }
      }
      
      private function §7"3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§&"0§);
            loop0:
            for(; §§pop(); while(!(_loc2_ && _loc1_))
            {
               §§pop();
               §§goto(addr187);
            })
            {
               loop1:
               while(true)
               {
                  this.§&"0§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(this.activeObject);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() is § H§);
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              continue loop0;
                           }
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc1_)
                                    {
                                       addr131:
                                       if(_loc1_ || _loc2_)
                                       {
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(this.activeObject);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.activeObject);
                                             if(_loc2_ && _loc1_)
                                             {
                                                break;
                                             }
                                             if(!_loc1_)
                                             {
                                                continue loop3;
                                             }
                                             §§push((§§pop() as § H§).§-!a§);
                                             if(!(_loc1_ || this))
                                             {
                                                continue loop8;
                                             }
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                continue loop0;
                                             }
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                continue loop4;
                                             }
                                             §§push(!§§pop());
                                             if(_loc1_ || this)
                                             {
                                                continue loop7;
                                             }
                                             addr150:
                                             if(§§pop())
                                             {
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   addr168:
                                                   this.§!!B§ = true;
                                                   addr171:
                                                   while(true)
                                                   {
                                                   }
                                                   addr171:
                                                }
                                                §§goto(addr171);
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§3'§);
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     §§push(this.§3'§);
                                                                     break;
                                                                  }
                                                                  break loop0;
                                                               }
                                                               continue loop2;
                                                            }
                                                            addr70:
                                                            if(_loc1_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop10;
                                                         }
                                                         addr63:
                                                      }
                                                      return;
                                                   }
                                                   break;
                                                }
                                                §§pop().§3d§(this.mLevelEngine.§;s§);
                                                §§goto(addr63);
                                             }
                                             §§goto(addr131);
                                          }
                                          addr187:
                                       }
                                       §§goto(addr150);
                                       §§push(§§pop().activateSpecialPower(this.§<f§));
                                    }
                                    §§goto(addr168);
                                 }
                                 else
                                 {
                                    this.§%!O§.§!"7§();
                                 }
                                 §§goto(addr70);
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr168);
      }
      
      public function §<<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%!O§.§<<§();
         }
      }
      
      public function §7!]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§%!O§.§3!V§();
         }
      }
      
      public function §+m§() : §1"B§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1"B§ = new §1"B§();
         if(!_loc3_)
         {
            _loc1_.§-z§ = this.§`!C§.§-z§;
            while(true)
            {
               _loc1_.§4Z§ = this.§`!C§.§4Z§;
               addr36:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               return _loc1_;
               addr53:
            }
         }
         loop1:
         while(true)
         {
            this.§0!§.§4!s§(_loc1_);
            loop2:
            while(true)
            {
               this.§%!O§.§>"<§(_loc1_);
               while(true)
               {
                  if(!(_loc3_ && this))
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     this.§5^§.§1!0§(_loc1_);
                     while(!_loc3_)
                     {
                        _loc1_.theme = this.§4J§.§6S§();
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr36);
                     }
                     continue;
                  }
                  continue loop2;
               }
               continue loop1;
            }
         }
         §§goto(addr53);
      }
      
      public function §?"'§() : int
      {
         return this.§`!C§.§4Z§;
      }
      
      public function §="9§() : int
      {
         return this.§`!C§.§-z§;
      }
      
      public function §try §(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!C§.§4Z§ = param1;
         }
      }
      
      public function §-!D§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`!C§.§-z§ = param1;
         }
      }
      
      public function §@r§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§9!J§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr78:
                     this.§9!J§.§!!U§(param1,param2);
                  }
                  while(true)
                  {
                  }
                  addr81:
               }
               while(true)
               {
                  §§push(this.§0!§);
                  if(!(_loc3_ && param2))
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              addr59:
                              §§push(this.§0!§);
                              break;
                           }
                           continue;
                        }
                        addr63:
                     }
                     return;
                  }
                  break;
               }
               §§pop().§+E§(0);
               §§goto(addr63);
            }
            §§goto(addr78);
         }
         §§goto(addr59);
      }
      
      public function get §=!T§() : §1"B§
      {
         return this.§`!C§;
      }
      
      public function get §<f§() : §]a§
      {
         return this.§%!O§;
      }
      
      protected function get starling() : §"]§
      {
         return this.§32§;
      }
      
      public function get §0"E§() : int
      {
         return §%c§;
      }
   }
}
