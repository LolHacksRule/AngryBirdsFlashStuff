package §4!<§
{
   import §!!=§.§"l§;
   import §"a§.§!"J§;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §+!c§.§;!=§;
   import §,"R§.§>!E§;
   import §-"N§.§3!K§;
   import §-p§.§7"4§;
   import §5!]§.§%!G§;
   import §6!^§.b2Vec2;
   import §9!n§.§0"T§;
   import §9!n§.§1S§;
   import §9!n§.§1j§;
   import §9!n§.LevelManager;
   import §9@§.§9!D§;
   import §<T§.§""#§;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §`!G§.§+T§;
   import §`!G§.§2"L§;
   import §`!G§.§8"=§;
   import §`!G§.§[!8§;
   import §`1§.§0!"§;
   import §`1§.§4";§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §super§.§>y§;
   
   public class §'!S§
   {
      
      private static const §&!8§:int = 20;
      
      public static const §<!@§:Number;
      
      public static const §#L§:Number;
      
      public static const §2"<§:Number = 0.05;
      
      public static const §1"4§:Number;
      
      public static const §&H§:Number;
      
      public static const §3"2§:§9!D§;
      
      public static var §5k§:Number = 1;
      
      protected static var § 5§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §'!S§)
         {
            §&!8§ = 20;
            loop0:
            while(true)
            {
               §<!@§ = §?l§.§7!H§;
               while(true)
               {
                  §#L§ = §?l§.§<"P§;
                  addr144:
                  while(true)
                  {
                     §2"<§ = 1 / 20;
                     continue loop0;
                  }
                  addr79:
                  if(!(_loc1_ && _loc2_))
                  {
                     § 5§ = §0"T§.§=!p§;
                     addr86:
                     if(_loc1_)
                     {
                        loop7:
                        while(true)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              addr55:
                              if(!(_loc1_ && §'!S§))
                              {
                                 addr72:
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr79);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(§§findproperty(§&H§));
                                       §§push(§<!@§);
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop() * §2"<§);
                                       }
                                       §§pop().§&H§ = §§pop();
                                       §§goto(addr72);
                                    }
                                    addr124:
                                 }
                              }
                              while(true)
                              {
                                 §3"2§ = new §9!D§(13 - 3);
                                 §§goto(addr55);
                              }
                           }
                           while(_loc2_)
                           {
                              §5k§ = 1;
                              continue loop7;
                           }
                           §§goto(addr144);
                        }
                        continue;
                     }
                     addr36:
                     if(_loc2_ || §'!S§)
                     {
                        return;
                        addr43:
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      protected var §'H§:§8"=§;
      
      private var §="Q§:§[!8§;
      
      private var §0!t§:Array = null;
      
      protected var §#"O§:§3!K§;
      
      public var mLevelEngine:§-!5§;
      
      protected var §>"=§:§>">§;
      
      protected var §<<§:§"l§;
      
      protected var §`"G§:§&=§;
      
      protected var §6&§:§6!O§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §="D§:Boolean = false;
      
      protected var §9!d§:Boolean = false;
      
      protected var §3m§:Boolean = false;
      
      public var §1"P§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §`"7§:Number;
      
      public var §&";§:Number;
      
      private var §&O§:Number;
      
      public var §%s§:§1j§;
      
      public var §!^§:Boolean = false;
      
      private var §5v§:§?C§;
      
      private var §0!A§:Sprite;
      
      protected var §'C§:§0"T§;
      
      protected var §%V§:§7"4§ = null;
      
      private var §]" §:EventDispatcher;
      
      private var §@?§:Array;
      
      private var § true§:Array;
      
      protected var §]P§:§!"J§;
      
      private var §`J§:§>!E§;
      
      protected var §=!2§:§`m§;
      
      protected var §8"+§:§^!Y§;
      
      private var § !A§:§""#§;
      
      private var §>v§:§""#§;
      
      private var §3"&§:§""#§;
      
      private var §,">§:Stage;
      
      private var §#!§:§`!o§;
      
      protected var each:§%!G§;
      
      protected var §0!G§:§%!G§;
      
      protected var §?F§:Number = 0.0;
      
      protected var §!z§:String;
      
      private var §@A§:Boolean;
      
      protected var §6"H§:Boolean;
      
      protected var §+!0§:uint = 1.417339207E9;
      
      public var §;"S§:Boolean;
      
      public function §'!S§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§ true§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§]" § = new EventDispatcher();
                  loop6:
                  for(; !(_loc3_ && _loc3_); if(_loc3_ && param1)
                  {
                     continue;
                  },if(_loc4_)
                  {
                     if(false)
                     {
                        §§goto(addr38);
                     }
                     var _loc2_:Stage3D = param1.stage3Ds[0];
                     if(_loc4_ || param1)
                     {
                        this.§]P§ = new §!"J§(§?C§,param1,new Rectangle(0,0,§?l§.§7!H§,§?l§.§<"P§),_loc2_);
                        §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.§]P§.onEnterFrame);
                        addr253:
                     }
                     _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§?3§,false,0,true);
                     addr205:
                     this.§]P§.§`!m§ = false;
                     addr206:
                     addr237:
                     addr227:
                     §§push(this.§]P§);
                     if(_loc4_)
                     {
                        §§push(false);
                        if(!(_loc3_ && this))
                        {
                           §§pop().enableErrorChecking = §§pop();
                           addr196:
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 addr172:
                                 this.§]P§.§#'§ = 2;
                                 addr174:
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(this.§]P§);
                                    if(_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop().§?"D§();
                                          if(_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc4_ || param1))
                                                {
                                                   §§goto(addr206);
                                                }
                                                return;
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr205);
                     }
                     addr204:
                     §§goto(addr204);
                  },§§goto(addr98))
                  {
                     this.§ !A§ = this.initThemeGraphicsManager();
                     loop7:
                     while(true)
                     {
                        addr38:
                        addr98:
                        loop8:
                        while(true)
                        {
                           this.§>v§ = this.initThemeSoundsManager();
                           loop9:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop7;
                              }
                              addr45:
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr52:
                                 if(_loc3_ && param1)
                                 {
                                    break;
                                 }
                                 this.§3"&§ = this.initCutSceneManager();
                                 if(!_loc3_)
                                 {
                                    continue loop6;
                                 }
                                 continue;
                              }
                              while(true)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    this.§8"+§ = this.initAnimationManager(this.§=!2§);
                                    continue loop6;
                                 }
                                 addr122:
                                 while(true)
                                 {
                                    this.§%s§ = new §1j§();
                                    break loop9;
                                 }
                                 §§goto(addr45);
                              }
                           }
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 this.§,">§ = param1;
                                 break loop8;
                              }
                              continue loop0;
                              §§goto(addr52);
                           }
                        }
                        while(true)
                        {
                           this.§=!2§ = §`m§.§&"5§;
                           §§goto(addr86);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public static function §+'§(param1:§[!8§, param2:§[!8§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§?!l§);
         if(_loc5_ || §'!S§)
         {
            §§push(§§pop() - param2.§?!l§);
            if(_loc5_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§68§);
         if(_loc5_)
         {
            §§push(§§pop() - param2.§68§);
            if(!_loc6_)
            {
               addr66:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            return §;!E§(_loc3_,_loc4_);
         }
         §§goto(addr66);
      }
      
      public static function §;!E§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§0!A§);
            while(true)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr73:
                        while(true)
                        {
                           §§push(Boolean(this.§&C§));
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr72:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr73))
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§0!A§ = this.§5v§.§&!6§;
                        }
                     }
                     while(true)
                     {
                        break loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr72);
            }
            return §§pop();
         }
         §§goto(addr59);
      }
      
      public function get §&C§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§5v§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§5v§);
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
                  addr24:
               }
            }
         }
         while(true)
         {
            this.§5v§ = this.§]P§.§7Z§ as §?C§;
            §§goto(addr84);
         }
      }
      
      private function get §4+§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§&C§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr42);
                  }
               }
               return null;
            }
            §§goto(addr42);
         }
         addr42:
         return (this.§&C§ as §?C§).§4+§;
      }
      
      public function get animationManager() : §^!Y§
      {
         return this.§8"+§;
      }
      
      public function get textureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      public function get camera() : §"l§
      {
         return this.§<<§;
      }
      
      public function get objects() : §8"=§
      {
         return this.§'H§;
      }
      
      public function get particles() : §6!O§
      {
         return this.§6&§;
      }
      
      public function get background() : §3!K§
      {
         return this.§#"O§;
      }
      
      public function get slingshot() : §&=§
      {
         return this.§`"G§;
      }
      
      public function get activeObject() : §[!8§
      {
         return this.§="Q§;
      }
      
      public function get §-!z§() : §>">§
      {
         return this.§>"=§;
      }
      
      public function get stage() : Stage
      {
         return this.§,">§;
      }
      
      public function get §8K§() : §""#§
      {
         return this.§3"&§;
      }
      
      protected function get §]"8§() : §""#§
      {
         return this.§ !A§;
      }
      
      public function set activeObject(param1:§[!8§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§="Q§ = param1;
         }
      }
      
      public function set §3!%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6"H§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§`J§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§`J§);
                     addr254:
                     while(true)
                     {
                        §§pop().dispose();
                        addr255:
                        while(true)
                        {
                        }
                     }
                     addr108:
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     §§push(this.§3"&§);
                     loop19:
                     while(true)
                     {
                        §§push(§§pop().textureManager);
                        loop20:
                        while(true)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_ || this)
                              {
                                 §§pop().dispose();
                                 loop17:
                                 do
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          §§goto(addr255);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§]P§);
                                          if(_loc2_)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr25);
                                             }
                                             if(_loc1_ && this)
                                             {
                                                continue loop17;
                                             }
                                             §§push(this.§]P§);
                                          }
                                          §§pop().dispose();
                                          continue loop17;
                                       }
                                       addr29:
                                    }
                                    addr231:
                                    loop26:
                                    while(true)
                                    {
                                       §§push(this.§ !A§);
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop().textureManager);
                                          loop27:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc1_ && this))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               addr204:
                                                               §§push(this.§ !A§);
                                                               loop9:
                                                               while(!(_loc1_ && this))
                                                               {
                                                                  §§push(§§pop().textureManager);
                                                                  while(true)
                                                                  {
                                                                     §§pop().dispose();
                                                                     addr213:
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        addr153:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§3"&§);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              addr157:
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc2_ || _loc2_))
                                                                                          {
                                                                                             break loop14;
                                                                                             addr174:
                                                                                          }
                                                                                          §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(this.§3"&§);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop27;
                                                                                       }
                                                                                       addr166:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc1_ && this)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             if(!(_loc1_ && _loc1_))
                                                                                             {
                                                                                                §§goto(addr108);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   addr214:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§ !A§);
                                                                                                      break loop9;
                                                                                                   }
                                                                                                }
                                                                                                addr246:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr29);
                                                                                          }
                                                                                       }
                                                                                       addr92:
                                                                                    }
                                                                                 }
                                                                                 addr229:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       break loop14;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop26;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr228:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr229);
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               addr204:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§=!2§);
                                                                  addr245:
                                                                  while(true)
                                                                  {
                                                                     §§pop().dispose();
                                                                  }
                                                               }
                                                               addr243:
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                }
                                                §§goto(addr228);
                                             }
                                          }
                                          addr183:
                                       }
                                       §§goto(addr204);
                                    }
                                 }
                                 while(_loc1_ && _loc2_);
                                 
                                 if(!_loc2_)
                                 {
                                    §§goto(addr174);
                                 }
                                 addr25:
                                 return;
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr212);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§=!2§);
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        §§goto(addr243);
                     }
                     §§goto(addr214);
                  }
                  §§goto(addr245);
                  §§goto(addr255);
               }
            }
            §§goto(addr254);
         }
         §§goto(addr231);
      }
      
      protected function initThemeGraphicsManager() : §""#§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §""#§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §""#§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§`m§) : §^!Y§
      {
         return new §^!Y§(param1);
      }
      
      public function §#"[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§!"J§.§1&§);
            while(true)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     if(param1)
                     {
                        if(_loc2_ || param1)
                        {
                           addr97:
                           §!"J§.§1&§.start();
                        }
                        addr19:
                        return;
                        addr98:
                     }
                     else
                     {
                        §§push(§!"J§.§1&§);
                        loop1:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§pop().stop();
                              do
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                                 §§pop().color = 0;
                              }
                              while(_loc3_ && _loc2_);
                              
                              §§goto(addr19);
                           }
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr97);
               }
               §§goto(addr19);
            }
         }
         §§goto(addr54);
      }
      
      public function §%l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.sprite);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
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
      
      public function getController() : §7"4§
      {
         return this.§%V§;
      }
      
      public function setController(param1:§7"4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%V§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§%V§);
                     addr85:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr86:
                        while(true)
                        {
                        }
                     }
                  }
                  addr83:
               }
               while(true)
               {
                  this.§%V§ = param1;
                  while(_loc3_ || this)
                  {
                     if(_loc3_)
                     {
                        if(this.mReadyToRun)
                        {
                           if(_loc3_ || param1)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(this.§%V§);
                                 if(!_loc2_)
                                 {
                                    §§pop().addEventListeners();
                                 }
                                 else
                                 {
                                    §§goto(addr85);
                                 }
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr85);
         }
         §§goto(addr57);
      }
      
      public function § D§() : §%!G§
      {
         return this.each;
      }
      
      public function §&!_§(param1:§>!E§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            this.§`J§ = param1;
         }
         §§push(this.§`J§.§=!;§);
         if(!(_loc6_ && param3))
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
               if(_loc7_)
               {
                  if(param3 != null)
                  {
                     if(!(_loc6_ && param2))
                     {
                        this.§]" §.addEventListener(Event.INIT,param3);
                        addr115:
                        while(true)
                        {
                           if(_loc6_ && param3)
                           {
                              _loc5_++;
                              continue loop0;
                              addr135:
                           }
                           this.§ true§.push(param3);
                           while(true)
                           {
                           }
                        }
                        addr115:
                     }
                     §§goto(addr115);
                  }
                  while(true)
                  {
                     if(this.§>"I§(param2))
                     {
                        if(_loc7_)
                        {
                           this.§"Y§();
                        }
                        if(_loc6_)
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           if(_loc6_ && this)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr115);
                        }
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr115);
            }
            else
            {
               this.§=!2§.§0!6§(this.§`J§.§#"W§(_loc5_));
            }
            §§goto(addr135);
         }
      }
      
      private function §>"I§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            §§push(this.§=!2§);
            if(_loc4_)
            {
               §§push(§§pop().§0"V§());
               loop0:
               while(!§§pop())
               {
                  while(true)
                  {
                     this.§@?§ = param1.concat();
                     if(_loc5_ && param1)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              continue;
                           }
                           addr194:
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    break;
                                 }
                                 break loop0;
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(this.§=!2§);
                                 if(_loc4_ || param1)
                                 {
                                    §§push(§§pop().§7!-§);
                                    if(_loc4_ || param1)
                                    {
                                       §§push(1000);
                                       if(_loc4_ || this)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr155:
                                             §§push(int(§§pop()));
                                             if(_loc5_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(_loc4_ || _loc3_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(1000);
                                                addr205:
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                }
                                             }
                                             addr204:
                                          }
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             continue loop3;
                                          }
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr155);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr203:
                                 }
                                 §§goto(addr204);
                              }
                              _loc3_ = §§pop();
                           }
                           §§push(§;!=§);
                           §§push("\n\nMain texture manager memory usage:\n   textures ");
                           if(!(_loc5_ && param1))
                           {
                              §§push(_loc2_);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(" kilobytes\n   bitmaps ");
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc5_ && param1))
                                       {
                                          addr112:
                                          §§push(§§pop() + _loc3_);
                                          if(_loc4_)
                                          {
                                             addr117:
                                             §§push(§§pop() + " kilobytes\n\n");
                                          }
                                       }
                                       §§pop().log(§§pop());
                                       this.initializeAnimations(param1);
                                       break;
                                       addr119:
                                    }
                                    §§goto(addr117);
                                 }
                              }
                           }
                           §§goto(addr112);
                        }
                        break;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        §§push(false);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                        addr54:
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        continue loop0;
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr54);
                  §§push(true);
               }
               while(true)
               {
               }
            }
            §§goto(addr203);
         }
         §§goto(addr194);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§8"+§.initializeAnimations(param1);
         }
      }
      
      private function §?3§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!2§.§2!S§();
            loop0:
            while(true)
            {
               §§push(this.§]"8§);
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
                                 §§push(this.§]"8§);
                                 if(!_loc2_)
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
                                       addr338:
                                       while(true)
                                       {
                                          addr339:
                                          loop46:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop47:
                                                while(true)
                                                {
                                                   §§push(this.§]"8§);
                                                   addr342:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      addr343:
                                                      while(true)
                                                      {
                                                         §§pop().§2!S§();
                                                         addr344:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop47;
                                                   }
                                                }
                                                addr340:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§8K§);
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
                                                            while(_loc3_ || _loc3_)
                                                            {
                                                               §§pop();
                                                               loop15:
                                                               while(_loc3_ || _loc3_)
                                                               {
                                                                  if(!(_loc3_ || _loc3_))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  §§push(this.§8K§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop().textureManager);
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!this.§@?§)
                                                                                    {
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§%V§);
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == null);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                if(_loc2_ && this)
                                                                                                {
                                                                                                   continue loop46;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc3_ || param1))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!(_loc3_ || _loc3_))
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop35:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§ !A§);
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        loop31:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.mReadyToRun);
                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           addr206:
                                                                                                                           while(_loc3_)
                                                                                                                           {
                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        continue loop29;
                                                                                                                     }
                                                                                                                     §§push(this.§ !A§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().§0"V§();
                                                                                                                        addr123:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!(_loc2_ && param1))
                                                                                                                     {
                                                                                                                        §§goto(addr20);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        continue loop35;
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  addr160:
                                                                                                               }
                                                                                                               loop37:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§3"&§);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc2_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr62:
                                                                                                                           if(_loc3_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.§3"&§);
                                                                                                                              loop38:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().textureManager);
                                                                                                                                 if(!(_loc2_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr89:
                                                                                                                                          loop41:
                                                                                                                                          while(!(_loc2_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§3"&§);
                                                                                                                                                loop42:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().textureManager);
                                                                                                                                                   addr101:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§2!S§();
                                                                                                                                                      addr102:
                                                                                                                                                      addr271:
                                                                                                                                                      loop39:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§3"&§);
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               continue loop42;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop38;
                                                                                                                                                            }
                                                                                                                                                            §§pop().§0"V§();
                                                                                                                                                            if(!(_loc3_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop37;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr41);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§8K§);
                                                                                                                                                               break loop39;
                                                                                                                                                            }
                                                                                                                                                            addr269:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(!(_loc2_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().textureManager);
                                                                                                                                                         break loop38;
                                                                                                                                                      }
                                                                                                                                                      continue loop11;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr100:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§"Y§();
                                                                                                                                                   break loop41;
                                                                                                                                                }
                                                                                                                                                addr227:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop27;
                                                                                                                                             §§goto(addr89);
                                                                                                                                          }
                                                                                                                                          addr89:
                                                                                                                                          while(_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          while(_loc3_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr344);
                                                                                                                                          addr236:
                                                                                                                                          addr287:
                                                                                                                                       }
                                                                                                                                       §§goto(addr102);
                                                                                                                                    }
                                                                                                                                    §§goto(addr20);
                                                                                                                                 }
                                                                                                                                 §§goto(addr101);
                                                                                                                              }
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           addr148:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              addr232:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§>"I§(this.§@?§);
                                                                                                                              }
                                                                                                                              §§goto(addr62);
                                                                                                                           }
                                                                                                                           continue loop28;
                                                                                                                           §§goto(addr236);
                                                                                                                        }
                                                                                                                        §§goto(addr89);
                                                                                                                     }
                                                                                                                     addr20:
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr100);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr122);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr148);
                                                                                                   }
                                                                                                   addr146:
                                                                                                }
                                                                                                §§goto(addr206);
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr232);
                                                                                 }
                                                                              }
                                                                              §§goto(addr269);
                                                                           }
                                                                        }
                                                                        addr267:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr342);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr338);
                     }
                  }
               }
            }
         }
         §§goto(addr289);
      }
      
      private function §"Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§]" §.dispatchEvent(new Event(Event.INIT));
         }
         do
         {
            this.§%!q§();
         }
         while(!_loc2_);
         
      }
      
      private function §%!q§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         var _loc3_:* = this.§ true§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               this.§]" §.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc4_ && _loc3_))
         {
            this.§ true§ = [];
         }
      }
      
      public function init(param1:§0"T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                     addr271:
                     while(true)
                     {
                     }
                  }
                  addr269:
               }
               while(true)
               {
                  this.§>"=§ = new §>">§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§<<§ = this.initLevelCamera(param1);
                     loop5:
                     while(true)
                     {
                        this.§`"7§ = 0;
                        loop6:
                        while(true)
                        {
                           this.§&";§ = 0;
                           loop7:
                           while(true)
                           {
                              this.§&O§ = 0;
                              loop8:
                              while(true)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    this.§@A§ = false;
                                    loop9:
                                    while(_loc2_)
                                    {
                                       this.mReadyToRun = false;
                                       continue loop8;
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             continue loop5;
                                          }
                                          continue loop9;
                                          addr113:
                                          if(_loc3_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(this.§3m§);
                                          if(!(_loc3_ && param1))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          addr130:
                                          if(!_loc3_)
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      addr83:
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      this.initialize(param1);
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         loop20:
                                                         while(true)
                                                         {
                                                            this.§ "L§();
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §;P§.init();
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        break loop20;
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                                  continue;
                                                               }
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr113);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.mPigsAnimationTimer2 = 1000;
                                                                        break loop19;
                                                                     }
                                                                     addr180:
                                                                  }
                                                                  addr110:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop22;
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            addr37:
                                                            if(_loc2_ || param1)
                                                            {
                                                               return;
                                                               addr44:
                                                            }
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(this.§9!d§);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr110);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§3m§ = this.§<!X§(param1.theme);
                                                                     continue loop17;
                                                                  }
                                                                  addr148:
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         § 5§ = param1.theme;
                                                         continue loop4;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop6;
                                                }
                                                this.§`E§(param1.theme);
                                                §§goto(addr60);
                                             }
                                             while(true)
                                             {
                                                this.§9!d§ = this.§>!N§(param1.theme);
                                                §§goto(addr148);
                                                §§goto(addr83);
                                             }
                                             addr153:
                                          }
                                          §§goto(addr110);
                                       }
                                       continue loop5;
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr269);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function § "L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.each = new §%!G§(LevelManager.§ T§);
         }
      }
      
      protected function §>!N§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§ !A§)
            {
               if(_loc2_ || this)
               {
                  §§push(false);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr32);
      }
      
      protected function §<!X§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0!"§ = null;
         if(_loc3_ || _loc2_)
         {
            if(this.§>v§)
            {
               §§goto(addr29);
            }
            §§goto(addr102);
         }
         addr29:
         _loc2_ = §4";§.§>"O§(param1);
         if(!(_loc4_ && this))
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  §§goto(addr55);
               }
               §§goto(addr100);
            }
            §§goto(addr102);
         }
         addr55:
         §§push(Boolean(_loc2_.§7! §));
         if(_loc3_)
         {
            if(§§pop())
            {
               if(_loc3_ || param1)
               {
                  §§pop();
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this.§>v§.§#`§(_loc2_.§7! §));
                     if(_loc3_)
                     {
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr102);
               }
               §§goto(addr101);
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr100:
                  §§push(false);
               }
               else
               {
                  §§goto(addr102);
               }
            }
            addr102:
            return true;
         }
         addr101:
         return §§pop();
      }
      
      protected function §`E§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§0!"§ = null;
         if(_loc4_)
         {
            §§push(this.§ !A§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr270:
                        while(true)
                        {
                           §§pop();
                           addr271:
                           while(true)
                           {
                              §§push(this.§>!N§(param1));
                              addr242:
                              while(true)
                              {
                                 §§push(!§§pop());
                              }
                           }
                        }
                        addr270:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§ !A§);
                                 loop5:
                                 while(true)
                                 {
                                    §§pop().removeEventListener(Event.COMPLETE,this.§2!n§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§ !A§);
                                       loop7:
                                       while(_loc4_ || param1)
                                       {
                                          §§pop().removeEventListener(Event.CANCEL,this.§6S§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§ !A§);
                                             loop9:
                                             while(true)
                                             {
                                                §§pop().addEventListener(Event.COMPLETE,this.§2!n§);
                                                loop10:
                                                while(!(_loc3_ && this))
                                                {
                                                   §§push(this.§ !A§);
                                                   while(!_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§pop().addEventListener(Event.CANCEL,this.§6S§);
                                                         while(true)
                                                         {
                                                            §§push(this.§ !A§);
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§pop().§+!K§(param1);
                                                            while(true)
                                                            {
                                                            }
                                                            loop20:
                                                            for(; !(_loc3_ && this); if(_loc3_ && this)
                                                            {
                                                               continue;
                                                            },if(_loc4_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr60);
                                                               }
                                                               _loc2_ = §4";§.§>"O§(param1);
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        addr283:
                                                                        this.§>v§.§+!K§(_loc2_.§7! §);
                                                                     }
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr283);
                                                            },§§goto(addr192))
                                                            {
                                                               §§push(this.§>v§);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§pop().removeEventListener(Event.COMPLETE,this.§]h§);
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ && this)
                                                                     {
                                                                        loop18:
                                                                        for(; _loc4_ || param1; continue loop22)
                                                                        {
                                                                           §§push(this.§<!X§(param1));
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§push(!§§pop());
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!(_loc4_ || _loc2_))
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 while(§§pop())
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 addr288:
                                                                                 return;
                                                                                 addr120:
                                                                              }
                                                                              §§goto(addr242);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§goto(addr270);
                                                                              }
                                                                              addr167:
                                                                           }
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     §§push(this.§>v§);
                                                                     loop23:
                                                                     while(_loc4_)
                                                                     {
                                                                        §§pop().removeEventListener(Event.CANCEL,this.§^"R§);
                                                                        while(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§>v§);
                                                                                 loop26:
                                                                                 while(_loc4_ || _loc3_)
                                                                                 {
                                                                                    §§pop().addEventListener(Event.COMPLETE,this.§]h§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(this.§>v§);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                             continue loop26;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr90);
                                                                                    }
                                                                                    §§goto(addr192);
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop20;
                                                                              addr60:
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop9;
                                                }
                                                §§goto(addr271);
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr157);
                           }
                        }
                     }
                  }
               }
               §§goto(addr270);
            }
         }
         §§goto(addr271);
      }
      
      private function §2!n§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§ !A§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§2!n§);
               while(true)
               {
                  §§push(this.§ !A§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§6S§);
                  loop2:
                  for(; !(_loc3_ && _loc2_); loop4:
                  for(; !(_loc3_ && param1); while(_loc2_ || _loc2_)
                  {
                     §§push(this.§3m§);
                     if(_loc2_)
                     {
                        §§goto(addr33);
                     }
                     §§goto(addr41);
                  })
                  {
                     §§push(this.§9!d§);
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 this.initialize(this.§'C§);
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                           addr48:
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop4;
                        }
                        addr33:
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        §§push(Boolean(§§pop()));
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr48);
                        }
                        else
                        {
                           §§goto(addr77);
                        }
                     }
                  })
                  {
                     while(true)
                     {
                        this.§9!d§ = true;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      private function §6S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§ !A§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§2!n§);
               loop1:
               while(true)
               {
                  §§push(this.§ !A§);
                  if(!(_loc2_ && param1))
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§6S§);
                     while(true)
                     {
                        this.§="D§ = true;
                        if(_loc3_)
                        {
                           if(!(_loc2_ && param1))
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                     return;
                     addr78:
                  }
                  break;
               }
            }
         }
         §§goto(addr78);
      }
      
      private function §]h§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§ !A§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§]h§);
               loop1:
               while(true)
               {
                  §§push(this.§ !A§);
                  if(_loc3_ && this)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§^"R§);
                  while(true)
                  {
                     this.§3m§ = true;
                     loop3:
                     for(; _loc2_; if(_loc2_ || _loc3_)
                     {
                        addr24:
                     },continue,return)
                     {
                        §§push(this.§9!d§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr85:
                                    while(_loc2_ || this)
                                    {
                                       §§push(this.§3m§);
                                       if(_loc2_ || this)
                                       {
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue loop6;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              while(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    this.initialize(this.§'C§);
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr85);
                              }
                              §§goto(addr24);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §^"R§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§ !A§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§]h§);
               addr134:
               loop1:
               while(true)
               {
                  §§push(this.§ !A§);
                  if(!(_loc3_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§^"R§);
                  while(true)
                  {
                     this.§3m§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§9!d§);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       this.initialize(this.§'C§);
                                    }
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 return;
                                 addr44:
                              }
                           }
                           addr85:
                           addr34:
                           while(true)
                           {
                              §§pop();
                              continue loop3;
                           }
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc2_)
                           {
                              §§goto(addr44);
                           }
                           else
                           {
                              §§goto(addr85);
                           }
                        }
                     }
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§push(this.§3m§);
                     if(_loc3_ || param1)
                     {
                        §§goto(addr34);
                     }
                     §§goto(addr42);
                  }
               }
            }
         }
         §§goto(addr134);
      }
      
      public function get backgroundTextureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      protected function initialize(param1:§0"T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6"H§ = false;
            while(true)
            {
               this.§;"S§ = false;
               loop4:
               while(_loc3_ || _loc2_)
               {
                  §§push(this);
                  §§push(this);
                  §§push(param1.theme);
                  §§push(this.§>"=§.§]2§);
                  if(_loc3_)
                  {
                     §§push(§§pop() / §2"<§);
                  }
                  §§pop().§#"O§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§<<§.§90§());
                  while(true)
                  {
                     this.§#"O§.§%"7§(§?l§.§'!R§());
                     loop6:
                     while(true)
                     {
                        this.§'H§ = this.initLevelObjectManager(param1);
                        loop7:
                        while(true)
                        {
                           this.§`"G§ = this.initLevelSlingshot(param1);
                           do
                           {
                              if(_loc2_)
                              {
                                 continue loop6;
                              }
                              if(_loc2_)
                              {
                                 break loop7;
                              }
                              this.§6&§ = this.initParticleManager(this.§8"+§,this.§=!2§);
                              while(!(_loc2_ && _loc2_))
                              {
                                 this.§<<§.init();
                                 continue loop7;
                              }
                              while(true)
                              {
                                 addr166:
                                 while(true)
                                 {
                                    this.mLevelEngine = new §-!5§(this);
                                    continue loop4;
                                 }
                              }
                           }
                           while(!_loc3_);
                           
                           if(_loc3_)
                           {
                              §§goto(addr20);
                           }
                           continue loop4;
                        }
                        while(true)
                        {
                           §§goto(addr203);
                        }
                     }
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     §§push(this.§%V§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && param1))
                           {
                              addr39:
                              this.§%V§.addEventListeners();
                           }
                           §§goto(addr40);
                        }
                        addr20:
                        return;
                     }
                     §§goto(addr39);
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      protected function §5!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§!z§)
            {
               while(true)
               {
                  this.§0!G§ = §%!G§.initialize(this.§!z§);
                  addr95:
                  loop1:
                  while(true)
                  {
                     §§push(this.§0!G§);
                     loop2:
                     while(true)
                     {
                        §§pop().speed = 1;
                        addr83:
                        while(_loc1_)
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
         §§goto(addr95);
      }
      
      public function §;!;§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!z§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§0!G§ == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§0!G§);
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr90:
                     if(param1)
                     {
                        if(!(_loc2_ && param1))
                        {
                           addr101:
                           this.§0!G§.speed = Math.min(this.§0!G§.speed * 1.25,Math.pow(1.25,2));
                        }
                     }
                     else
                     {
                        §§push(this.§0!G§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§pop().speed = Math.max(this.§0!G§.speed / 1.25,Math.pow(1 / 1.25,10));
                           if(_loc2_)
                           {
                           }
                           §§goto(addr25);
                        }
                        else
                        {
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr101);
                  }
               }
               addr25:
               return;
            }
            §§goto(addr101);
         }
         §§goto(addr90);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§0!G§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().speed = 1;
         }
         addr45:
         if(_loc2_)
         {
            §§push(this.§0!G§);
         }
      }
      
      protected function initLevelObjectManager(param1:§0"T§) : §8"=§
      {
         return new §8"=§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§0"T§) : §"l§
      {
         return new §"l§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§`m§, param4:Number) : §3!K§
      {
         return new §3!K§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§0"T§) : §&=§
      {
         return new §&=§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§^!Y§, param2:§`m§) : §6!O§
      {
         return new §6!O§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.mReadyToRun)
            {
               if(!_loc7_)
               {
                  addr23:
                  this.clearLevel();
               }
            }
            var _loc3_:§0"T§ = this.§;!]§();
            var _loc4_:§1S§;
            (_loc4_ = new §1S§()).left = 0;
            if(!_loc7_)
            {
               §§push(_loc4_);
               §§push(§"l§.§,",§);
               if(_loc6_)
               {
                  §§push(-§§pop());
                  if(!_loc7_)
                  {
                     §§push(10);
                     if(_loc6_)
                     {
                        addr122:
                        §§push(§§pop() / §§pop());
                        if(!_loc7_)
                        {
                           addr120:
                           §§push(8);
                        }
                        §§pop().top = §§pop();
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + §"l§.§,",§);
                           }
                           §§pop().bottom = §§pop();
                           while(!(_loc7_ && param2))
                           {
                              while(true)
                              {
                                 §§push(_loc4_);
                                 §§push(_loc4_.left);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + §"l§.§8! §);
                                 }
                                 §§pop().right = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    _loc4_.y = -13.929;
                                    loop4:
                                    while(true)
                                    {
                                       _loc4_.x = §"l§.§8! §;
                                       loop5:
                                       while(true)
                                       {
                                          addr56:
                                          while(true)
                                          {
                                             _loc4_.id = §"l§.§=!M§;
                                             while(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   _loc3_.§9"Q§(_loc4_);
                                                   if(!_loc7_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue;
                                                }
                                                continue loop3;
                                             }
                                             continue loop5;
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr122);
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr120);
               }
               §§goto(addr122);
            }
            §§goto(addr105);
         }
         §§goto(addr23);
      }
      
      protected function §`"S§(param1:§0"T§, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(param2)
            {
               if(_loc4_ || this)
               {
                  this.§;!6§(param1);
               }
            }
         }
      }
      
      protected function §;!]§() : §0"T§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0"T§ = new §0"T§();
         if(!_loc3_)
         {
            _loc1_.§;"H§ = -12;
         }
         return new §0"T§();
      }
      
      protected function §!!W§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§+!0§ ^= this.§+!0§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§+!0§);
               §§push(this.§+!0§);
               if(_loc1_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§+!0§ = §§pop() ^ §§pop();
               while(_loc1_)
               {
                  this.§+!0§ ^= this.§+!0§ << 4;
                  if(_loc1_ || _loc2_)
                  {
                     return this.§+!0§ * (1 / uint.MAX_VALUE);
                     addr72:
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      protected function §;!6§(param1:§0"T§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§>y§ = null;
         if(_loc7_)
         {
            §§push(this);
            §§push(0.33);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§+!0§ = §§pop();
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
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ || this)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              while(true)
                              {
                                 §§push(5);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       _loc2_++;
                                       if(!_loc7_)
                                       {
                                          break loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§push(this.§!!W§());
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() * 5);
                                 }
                                 §§push(int(§§pop()));
                                 if(!(_loc7_ || this))
                                 {
                                    continue;
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc6_ && this)
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc5_ = new §>y§());
                                 §§push(30 + _loc3_ * 10);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(this.§!!W§());
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop() * 9);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().x = §§pop();
                                 if(!(_loc6_ && this))
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
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§push(this.§!!W§());
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() * 3);
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc7_)
                                                      {
                                                         addr370:
                                                         §§push(§§pop() - _loc3_ * 8);
                                                      }
                                                      §§pop().y = §§pop();
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop() * _loc3_);
                                                                                 if(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       addr289:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          §§push(5);
                                                                                       }
                                                                                       §§push(int(§§pop()));
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop9:
                                                                                          while(_loc7_ || _loc3_)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             while(!_loc6_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             loop38:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(1);
                                                                                                addr472:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr475:
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               addr441:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                            }
                                                                                                            addr476:
                                                                                                         }
                                                                                                         loop12:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc7_ || this))
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               loop13:
                                                                                                               for(; !_loc6_; §§push(§§pop() == §§pop()),if(!(_loc7_ || param1))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               },if(_loc6_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  addr443:
                                                                                                               })
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     addr415:
                                                                                                                     loop27:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(4);
                                                                                                                        addr416:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc7_ || _loc2_))
                                                                                                                           {
                                                                                                                              break loop27;
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr475);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  _loc5_.id = "PIG_HELMET";
                                                                                                                  loop14:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop15:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        §§push(45);
                                                                                                                        §§push(this.§!!W§());
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * 90);
                                                                                                                        }
                                                                                                                        §§pop().angle = §§pop() - §§pop();
                                                                                                                        loop16:
                                                                                                                        while(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1.addObject(_loc5_);
                                                                                                                              do
                                                                                                                              {
                                                                                                                                 _loc3_++;
                                                                                                                              }
                                                                                                                              while(_loc6_);
                                                                                                                              
                                                                                                                              if(_loc7_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       continue loop16;
                                                                                                                                    }
                                                                                                                                    addr331:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc5_.id = "BIRD_RED";
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr204:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr145:
                                                                                                                                    loop20:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       §§push(this.§!!W§());
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * 360);
                                                                                                                                       }
                                                                                                                                       §§pop().angle = §§pop();
                                                                                                                                       addr184:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop20;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 addr156:
                                                                                                                                 if(_loc7_ || this)
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 addr483:
                                                                                                                                 addr223:
                                                                                                                                 loop19:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr145);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc5_.y = 0;
                                                                                                                                          break loop19;
                                                                                                                                       }
                                                                                                                                       addr480:
                                                                                                                                    }
                                                                                                                                    §§goto(addr156);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop38;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        addr438:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_.id = "PIG_MUSTACHE";
                                                                                                                  §§goto(addr438);
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
                                                                                             §§goto(addr443);
                                                                                             §§goto(addr441);
                                                                                          }
                                                                                          addr298:
                                                                                       }
                                                                                       §§goto(addr306);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§push(§§pop() % §§pop());
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        addr250:
                                                                     }
                                                                     §§goto(addr441);
                                                                  }
                                                                  §§goto(addr415);
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            §§goto(addr476);
                                                         }
                                                         §§goto(addr458);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr370);
                                          }
                                          §§goto(addr480);
                                       }
                                    }
                                 }
                                 §§goto(addr184);
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                     break;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      public function addItemsToDisplayList() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§3!K§.§'A§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§<!A§(this.§#"O§.backgroundLayersSprite,false);
                     addr201:
                     while(true)
                     {
                     }
                  }
                  addr195:
               }
               while(true)
               {
                  this.§<!A§(this.§6&§.getGroupSprite(§6!O§.§`U§),false);
                  addr191:
                  while(true)
                  {
                     this.§<!A§(this.§6&§.getGroupSprite(§6!O§.§-4§),true);
                  }
               }
               addr118:
               §§push(§3!K§.§'A§);
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr67:
                     if(_loc1_ || _loc1_)
                     {
                        this.§<!A§(this.§#"O§.foregroundLayersSprite,false);
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr201);
                              }
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              this.§<!A§(this.§'H§.mainSprite,true);
                              addr144:
                              addr181:
                              loop7:
                              while(!(_loc2_ && this))
                              {
                                 this.§<!A§(this.§`"G§.sprite,true);
                                 while(true)
                                 {
                                    this.§<!A§(this.§6&§.getGroupSprite(§6!O§.PARTICLE_GROUP_GAME_EFFECTS),true);
                                    loop9:
                                    while(true)
                                    {
                                       this.§<!A§(this.§#"O§.groundSprite,false);
                                       while(true)
                                       {
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue loop9;
                                          }
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          §§goto(addr118);
                                          addr39:
                                          if(!(_loc2_ && this))
                                          {
                                             if(!_loc2_)
                                             {
                                                return;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr67);
                                 }
                              }
                              while(true)
                              {
                                 this.§<!A§(this.§6&§.getGroupSprite(§6!O§.PARTICLE_GROUP_BACKGROUND_EFFECTS),true);
                                 continue loop6;
                                 §§goto(addr144);
                              }
                           }
                        }
                        §§goto(addr191);
                        addr80:
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr80);
               }
               §§goto(addr23);
            }
         }
         §§goto(addr181);
      }
      
      protected function §<!A§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.sprite);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr27:
                     this.sprite.addChild(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr27);
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc4_ || param2)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§?l§.§+!9§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
               }
               addr127:
            }
            loop1:
            while(true)
            {
               §§push(Number(§§pop()));
               loop2:
               while(true)
               {
                  param1 = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc5_)
                     {
                        §§push(§?l§.§+!9§);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(§§pop() / §§pop());
                        if(_loc4_)
                        {
                           if(!_loc4_)
                           {
                              continue loop2;
                           }
                           if(!(_loc4_ || _loc3_))
                           {
                              continue loop1;
                           }
                           §§push(Number(§§pop()));
                        }
                     }
                     param2 = §§pop();
                     while(true)
                     {
                        _loc3_.x = (param1 / §"l§.§@!>§ + this.§<<§.§8@§ - §"l§.§2!N§ / §"l§.§@!>§) * §2"<§;
                        while(!_loc5_)
                        {
                           _loc3_.y = (param2 / §"l§.§@!>§ + this.§<<§.§@";§ - §"l§.§-"T§ / §"l§.§@!>§) * §2"<§;
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 return _loc3_;
                                 addr66:
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr127);
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §-§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(!(_loc6_ && _loc3_))
         {
            _loc3_.x = (param1 / §2"<§ + §"l§.§2!N§ / §"l§.§@!>§ - this.§<<§.§8@§) * §"l§.§@!>§;
            if(_loc5_)
            {
               _loc3_.y = (param2 / §2"<§ + §"l§.§-"T§ / §"l§.§@!>§ - this.§<<§.§@";§) * §"l§.§@!>§;
            }
         }
         var _loc4_:Number = Math.max(§?l§.§+!9§,§?l§.§0!S§);
         if(!_loc6_)
         {
            _loc3_.x *= _loc4_;
         }
         do
         {
            _loc3_.y *= _loc4_;
         }
         while(_loc6_);
         
         return _loc3_;
      }
      
      public function §1"L§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§'H§.addObject(param1,param2,param3);
         }
      }
      
      public function §<;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§4+§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§4+§);
                     while(true)
                     {
                        §§pop().visible = true;
                        addr77:
                        while(true)
                        {
                           §§push(this.§4+§);
                           if(_loc1_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§pop().alpha = 0;
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr73:
               }
               while(true)
               {
                  this.§1"P§ = 0;
                  if(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        if(!(_loc1_ && this))
                        {
                           break;
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr69);
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function §-_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#!§ = new §`!o§(§^!Z§.§%C§,§^!Z§.§#!J§);
         }
      }
      
      public function §6`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§#!§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§#"O§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§#"O§);
                     addr598:
                     while(true)
                     {
                        §§pop().dispose();
                        loop32:
                        while(true)
                        {
                           this.§#"O§ = null;
                           addr583:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop32;
                              }
                              addr585:
                           }
                        }
                     }
                     addr425:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     this.§6&§ = null;
                     loop18:
                     while(true)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(_loc1_)
                           {
                              addr381:
                              if(!(_loc2_ && this))
                              {
                                 loop16:
                                 for(; this.sprite; §§goto(addr388))
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop18;
                                    }
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr324:
                                       §§push(this.sprite);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(§§pop().numChildren <= 0)
                                          {
                                             break;
                                          }
                                          §§push(this.sprite);
                                       }
                                       §§pop().removeChildAt(0,true);
                                       §§goto(addr324);
                                    }
                                    else
                                    {
                                       loop17:
                                       while(!_loc2_)
                                       {
                                          addr411:
                                          if(_loc1_ || this)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§goto(addr425);
                                             }
                                             else
                                             {
                                                loop30:
                                                while(true)
                                                {
                                                   addr519:
                                                   while(true)
                                                   {
                                                      §§push(this.mLevelEngine);
                                                      if(_loc1_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc1_ || this)
                                                            {
                                                               §§push(this.mLevelEngine);
                                                               if(_loc1_)
                                                               {
                                                                  addr536:
                                                                  if(!§§pop().§-"J§)
                                                                  {
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.mLevelEngine);
                                                                  }
                                                                  addr538:
                                                               }
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§pop().clear();
                                                                  loop5:
                                                                  while(!_loc2_)
                                                                  {
                                                                     this.mLevelEngine = null;
                                                                     while(true)
                                                                     {
                                                                        addr497:
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§>"=§);
                                                                           if(_loc1_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc1_ || _loc2_)
                                                                                    {
                                                                                       §§push(this.§>"=§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().clear();
                                                                                          addr513:
                                                                                          loop34:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§>"=§ = null;
                                                                                             loop35:
                                                                                             while(true)
                                                                                             {
                                                                                                addr478:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§`"G§);
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               continue loop34;
                                                                                                            }
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            §§push(this.§`"G§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().dispose();
                                                                                                               break loop17;
                                                                                                            }
                                                                                                            §§goto(addr411);
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                         addr484:
                                                                                                      }
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§<<§);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop13:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc2_ && this))
                                                                                                                  {
                                                                                                                     §§push(this.§<<§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().clear();
                                                                                                                        loop21:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§<<§ = null;
                                                                                                                           addr437:
                                                                                                                           do
                                                                                                                           {
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(!(_loc2_ && this));
                                                                                                                           
                                                                                                                           addr468:
                                                                                                                           while(_loc1_)
                                                                                                                           {
                                                                                                                              if(_loc1_ || _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop12;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr462:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§'H§);
                                                                                                                        addr577:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().dispose();
                                                                                                                           break loop13;
                                                                                                                        }
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     addr575:
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§'H§ = null;
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§6&§);
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  §§goto(addr395);
                                                                                                               }
                                                                                                               §§goto(addr408);
                                                                                                               §§goto(addr446);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr462);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr490);
                                                                                                   continue loop35;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr512:
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr381);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§="Q§ = null;
                                                                                    continue loop30;
                                                                                 }
                                                                                 addr503:
                                                                              }
                                                                              §§goto(addr478);
                                                                           }
                                                                           §§goto(addr512);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr583);
                                                               }
                                                            }
                                                            §§goto(addr538);
                                                         }
                                                         §§goto(addr497);
                                                      }
                                                      §§goto(addr536);
                                                      continue loop30;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr484);
                                       }
                                       while(true)
                                       {
                                          this.§`"G§ = null;
                                          §§goto(addr468);
                                       }
                                    }
                                 }
                                 addr388:
                                 addr338:
                                 this.§`"7§ = 0;
                                 this.§&";§ = 0;
                                 this.mReadyToRun = false;
                                 this.§@A§ = false;
                                 addr341:
                                 addr318:
                                 addr323:
                                 if(!_loc2_)
                                 {
                                    this.§1"P§ = §^!Z§.§%"%§;
                                    addr275:
                                    addr306:
                                    if(this.§&C§)
                                    {
                                       addr292:
                                       (this.§&C§ as §?C§).§0"?§.x = 0;
                                       addr276:
                                       addr281:
                                       addr278:
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(this.§&C§);
                                          if(!(_loc2_ && this))
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push((§§pop() as §?C§).§0"?§);
                                                if(!_loc2_)
                                                {
                                                   §§push(0);
                                                   if(!(_loc2_ && this))
                                                   {
                                                      §§pop().y = §§pop();
                                                      addr269:
                                                      if(!_loc2_)
                                                      {
                                                         addr213:
                                                         §§push(this.§4+§);
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr224:
                                                               if(!_loc2_)
                                                               {
                                                                  addr228:
                                                                  this.§4+§.visible = false;
                                                                  addr230:
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     addr201:
                                                                     this.§0!G§ = null;
                                                                     addr205:
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        this.each = null;
                                                                        addr200:
                                                                        if(this.§ !A§)
                                                                        {
                                                                           addr188:
                                                                           this.§ !A§.removeEventListener(Event.COMPLETE,this.§2!n§);
                                                                           addr186:
                                                                           if(_loc1_)
                                                                           {
                                                                              §§push(this.§ !A§);
                                                                              if(_loc1_)
                                                                              {
                                                                                 if(_loc1_ || this)
                                                                                 {
                                                                                    §§pop().removeEventListener(Event.CANCEL,this.§6S§);
                                                                                    addr179:
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr129:
                                                                                       if(this.§>v§)
                                                                                       {
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   addr148:
                                                                                                   this.§>v§.removeEventListener(Event.COMPLETE,this.§]h§);
                                                                                                   addr153:
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               §§push(this.§>v§);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  if(_loc1_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§pop().removeEventListener(Event.CANCEL,this.§^"R§);
                                                                                                                     addr123:
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        addr102:
                                                                                                                        this.§%!q§();
                                                                                                                        addr105:
                                                                                                                        §§push(§!"J§.§1&§);
                                                                                                                        if(!(_loc2_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc1_ || _loc1_)
                                                                                                                              {
                                                                                                                                 addr90:
                                                                                                                                 §!"J§.§1&§.color = 0;
                                                                                                                              }
                                                                                                                              addr92:
                                                                                                                              if(!(_loc2_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    addr44:
                                                                                                                                    §§push(this.§%V§);
                                                                                                                                    if(_loc1_ || this)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             addr59:
                                                                                                                                             this.§%V§.removeEventListeners();
                                                                                                                                          }
                                                                                                                                          addr60:
                                                                                                                                          if(_loc1_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(_loc1_)
                                                                                                                                             {
                                                                                                                                                addr23:
                                                                                                                                                this.mReadyToRun = false;
                                                                                                                                                if(_loc1_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc1_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc1_ || _loc1_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr123);
                                                                                                                                                      }
                                                                                                                                                      return;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr92);
                                                                                                                                                }
                                                                                                                                                §§goto(addr60);
                                                                                                                                             }
                                                                                                                                             §§goto(addr341);
                                                                                                                                          }
                                                                                                                                          §§goto(addr200);
                                                                                                                                       }
                                                                                                                                       §§goto(addr23);
                                                                                                                                    }
                                                                                                                                    §§goto(addr59);
                                                                                                                                 }
                                                                                                                                 §§goto(addr318);
                                                                                                                              }
                                                                                                                              §§goto(addr105);
                                                                                                                           }
                                                                                                                           §§goto(addr44);
                                                                                                                        }
                                                                                                                        §§goto(addr90);
                                                                                                                     }
                                                                                                                     §§goto(addr153);
                                                                                                                  }
                                                                                                                  §§goto(addr129);
                                                                                                               }
                                                                                                               §§goto(addr148);
                                                                                                            }
                                                                                                            §§goto(addr269);
                                                                                                         }
                                                                                                         §§goto(addr224);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr186);
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                             §§goto(addr179);
                                                                                          }
                                                                                          §§goto(addr148);
                                                                                       }
                                                                                       §§goto(addr102);
                                                                                    }
                                                                                    §§goto(addr205);
                                                                                 }
                                                                                 §§goto(addr200);
                                                                              }
                                                                              §§goto(addr188);
                                                                           }
                                                                           §§goto(addr323);
                                                                        }
                                                                        §§goto(addr129);
                                                                     }
                                                                     §§goto(addr230);
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   §§goto(addr292);
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr275);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr306);
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr324);
                              }
                              §§goto(addr503);
                           }
                           §§goto(addr437);
                        }
                        §§goto(addr395);
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§'H§);
                  if(_loc1_ || this)
                  {
                     if(§§pop())
                     {
                        §§goto(addr575);
                     }
                     §§goto(addr519);
                  }
                  §§goto(addr577);
                  §§goto(addr585);
               }
            }
            §§goto(addr598);
         }
         §§goto(addr513);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §=!O§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.each);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr43);
                  }
               }
               return null;
            }
            §§goto(addr43);
         }
         addr43:
         return this.each.toString();
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
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(0);
                                 break;
                              }
                              while(true)
                              {
                                 addr94:
                                 if(_loc4_ && param3)
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ && this))
                                 {
                                    addr20:
                                    §§push(this.updateWithTime(param1,true,param2,param3));
                                    if(_loc5_)
                                    {
                                       return §§pop();
                                    }
                                    addr86:
                                    if(!(_loc4_ && this))
                                    {
                                       return §§pop();
                                    }
                                    break loop7;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§!"J§.§+",§());
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       continue loop0;
                                       loop11:
                                       while(_loc5_ || param2)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop());
                                             if(_loc4_)
                                             {
                                                continue loop2;
                                             }
                                             if(§§pop())
                                             {
                                                loop12:
                                                for(; _loc5_ || param3; if(_loc4_ && param3)
                                                {
                                                   continue;
                                                })
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(this.§0!G§);
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().§6",§);
                                                      if(!(_loc4_ && param3))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            continue loop12;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop12;
                                                      addr64:
                                                      if(!(_loc5_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr86);
                                                      §§push(this.§`!p§(param1,param2,param3));
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop11;
                                                      §§goto(addr146);
                                                   }
                                                   addr146:
                                                }
                                                continue loop0;
                                             }
                                             while(§§pop())
                                             {
                                                if(_loc5_ || param3)
                                                {
                                                   §§goto(addr64);
                                                }
                                                else
                                                {
                                                   §§goto(addr94);
                                                }
                                             }
                                             §§goto(addr20);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop4;
                                             }
                                             addr170:
                                          }
                                       }
                                    }
                                 }
                              }
                              addr164:
                           }
                           while(true)
                           {
                              §§goto(addr112);
                              §§goto(addr164);
                           }
                        }
                        return §§pop();
                        addr158:
                     }
                     §§goto(addr170);
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.§6"H§)
            {
               if(_loc6_)
               {
                  addr23:
                  §§push(param1);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                        }
                        addr69:
                        var _loc5_:* = §§pop();
                        if(!(_loc7_ && param2))
                        {
                           §§push(this);
                           §§push(this.§&";§);
                           if(_loc6_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§&";§ = §§pop();
                        }
                        while(true)
                        {
                           §§push(param3);
                           loop1:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§'H§.updateLevelObjectsGoingOn(param1);
                                 while(true)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!(_loc7_ && param3))
                                          {
                                             this.§`"7§ = 0;
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                             addr134:
                                          }
                                          else
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.mLevelEngine.§+!8§(this.§`"7§));
                                                addr179:
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr180:
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr181:
                                                      addr202:
                                                      while(_loc6_ || this)
                                                      {
                                                         this.§`"G§.update(param1,param4);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§`"7§);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop() + param1);
                                                         }
                                                         §§pop().§`"7§ = §§pop();
                                                         continue loop8;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§`"7§ = _loc5_;
                                       }
                                    }
                                    addr163:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr181);
                                    }
                                 }
                                 addr142:
                              }
                              §§goto(addr202);
                           }
                           if(!(_loc6_ || param2))
                           {
                              continue;
                           }
                           this.§6O§(param1,_loc5_);
                           §§goto(addr125);
                        }
                     }
                     param1 = §§pop();
                     if(_loc6_ || param2)
                     {
                        §§push(§!"J§.§<!C§);
                        if(!(_loc7_ && param1))
                        {
                           if(§§pop())
                           {
                              addr67:
                              if(!(_loc7_ && this))
                              {
                                 addr63:
                                 §§push(§!"J§.§<!C§);
                              }
                              §§goto(addr69);
                              §§push(Number(0));
                           }
                           §§goto(addr67);
                        }
                        §§pop().speed = 0.2;
                        §§goto(addr67);
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr69);
               }
               §§goto(addr63);
            }
            §§goto(addr67);
         }
         §§goto(addr23);
      }
      
      private function §`!p§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Number = NaN;
         §§push(§-!5§.§-"V§);
         if(!_loc7_)
         {
            §§push(§§pop() * 1000);
            if(!_loc7_)
            {
               addr26:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc7_ && param1))
            {
               if(this.§0!G§)
               {
                  if(!(_loc7_ && param1))
                  {
                     §§push(param1);
                     loop20:
                     while(true)
                     {
                        §§push(this.§0!G§.speed);
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
                                 addr321:
                                 addr303:
                                 while(true)
                                 {
                                    §§push(this.§&";§);
                                    if(_loc6_ || this)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop22;
                                       }
                                       §§push(param1);
                                       if(!(_loc6_ || this))
                                       {
                                          continue loop21;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    if(!_loc7_)
                                    {
                                       continue loop20;
                                    }
                                    continue loop23;
                                 }
                                 loop27:
                                 while(true)
                                 {
                                    §§push(this.§&";§);
                                    loop25:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc6_ || param2)
                                          {
                                             if(_loc6_)
                                             {
                                                addr187:
                                                if(!(_loc7_ && param2))
                                                {
                                                   addr194:
                                                   §§push(§§pop() + §§pop());
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  addr200:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§?F§);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc4_);
                                                                        addr204:
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§0!G§);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§pop().step(this);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§?F§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc4_);
                                                                                       }
                                                                                       §§pop().§?F§ = §§pop();
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          addr90:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§&";§);
                                                                                             addr93:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   if(!(_loc7_ && param3))
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         while(_loc7_ && param3)
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr70:
                                                                                                         addr72:
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(!(_loc6_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc7_ && param2))
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(_loc5_);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() - this.§&";§);
                                                                                             }
                                                                                             §§pop().updateWithTime(§§pop(),true,param2,param3);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§goto(addr70);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§0!G§);
                                                                                                      break loop7;
                                                                                                   }
                                                                                                   addr247:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§?F§);
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc4_);
                                                                                                }
                                                                                                §§pop().§?F§ = §§pop();
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr212:
                                                                                             while(true)
                                                                                             {
                                                                                                this.updateWithTime(_loc4_,false,param2,param3);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop27;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().step(this);
                                                                                 §§goto(addr251);
                                                                              }
                                                                           }
                                                                           §§goto(addr90);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§&";§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr244:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§?F§);
                                                                        addr246:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              §§goto(addr247);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                     §§goto(addr187);
                                                                  }
                                                                  addr243:
                                                               }
                                                               §§goto(addr244);
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         addr198:
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   addr195:
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr244);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr321);
               }
               else
               {
                  §§push(this.updateWithTime(_loc4_,true,param2,param3));
                  if(_loc6_ || this)
                  {
                     if(_loc6_)
                     {
                        if(_loc6_ || param3)
                        {
                           if(_loc6_ || param3)
                           {
                              return §§pop();
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr321);
         }
         §§goto(addr26);
      }
      
      private function §6O§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            this.§#"O§.update(param1);
            loop0:
            while(true)
            {
               this.§'H§.§0P§(param1,param2);
               loop1:
               while(true)
               {
                  this.§%5§();
                  addr262:
                  loop27:
                  while(true)
                  {
                     if(_loc5_ && param1)
                     {
                        continue loop1;
                     }
                     §§push(§^!Z§.§%"%§);
                     loop13:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           §§push(§§pop() / 2);
                           loop14:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop15:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(-Math.abs(this.§1"P§ - _loc3_));
                                    if(_loc6_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc5_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop14;
                                                }
                                                if(!_loc6_)
                                                {
                                                   continue loop13;
                                                }
                                                §§push(§^!Z§.§%h§);
                                                if(!_loc5_)
                                                {
                                                   addr201:
                                                   §§push(§§pop() * (§§pop() / _loc3_));
                                                   if(_loc6_)
                                                   {
                                                      addr204:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   _loc4_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc5_ && param2)
                                                      {
                                                         continue loop27;
                                                      }
                                                      §§push(this.§4+§);
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§4+§);
                                                               addr165:
                                                               while(true)
                                                               {
                                                                  §§pop().alpha = _loc4_;
                                                                  addr167:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr163:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr83);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr204);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                continue loop0;
                                             }
                                             §§push(this.§4+§);
                                             if(_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr128);
                                                }
                                                addr83:
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(this.§#!§);
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(this.§#!§);
                                                            while(true)
                                                            {
                                                               if(!§§pop().§2r§(this.§<<§,param1))
                                                               {
                                                                  while(_loc6_ || _loc3_)
                                                                  {
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     this.§6`§();
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr163);
                                                                  addr103:
                                                               }
                                                            }
                                                            addr53:
                                                            if(!(_loc6_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            this.§6&§.update(param1);
                                                            addr60:
                                                            if(_loc5_)
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr53);
                                                                  }
                                                                  addr66:
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr75:
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              this.mLevelEngine.§"+§();
                                                                              continue loop11;
                                                                           }
                                                                           addr273:
                                                                           addr128:
                                                                           while(_loc6_ || param1)
                                                                           {
                                                                              §§push(this.§4+§);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    break loop10;
                                                                                 }
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§pop().visible = false;
                                                                              }
                                                                              §§goto(addr75);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§1"P§);
                                                                              break loop8;
                                                                              §§goto(addr128);
                                                                           }
                                                                           addr128:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr119);
                                                                     }
                                                                  }
                                                                  §§goto(addr165);
                                                               }
                                                               §§goto(addr103);
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  break loop6;
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         continue loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§<<§.§["§(param1);
                                                         §§goto(addr66);
                                                         §§goto(addr119);
                                                      }
                                                   }
                                                   §§goto(addr98);
                                                }
                                                return;
                                             }
                                             §§goto(addr147);
                                          }
                                          addr231:
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr204);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr231);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr273);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(1000);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr74:
                     §§push(1000);
                     if(_loc2_ || param1)
                     {
                        addr83:
                        §§pop().§,8§(§§pop() * §§pop());
                        loop4:
                        while(!(_loc3_ && this))
                        {
                           while(true)
                           {
                              this.§&T§();
                              if(!(_loc3_ && this))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
               addr99:
               while(true)
               {
                  §§pop().updateLevelObjectsGoingOn(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §%5§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§[!8§ = null;
         if(_loc4_ || _loc1_)
         {
            §§push(this.§&";§);
            §§push(this.§&O§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!(_loc5_ && this))
               {
                  §§goto(addr59);
               }
            }
            §§goto(addr73);
         }
         addr59:
         if(this.§0!t§ != null)
         {
            addr73:
            for each(_loc1_ in this.§0!t§)
            {
               if(_loc4_)
               {
                  _loc1_.addTrail();
               }
            }
            if(!_loc4_)
            {
            }
            §§goto(addr100);
         }
         this.§&O§ = this.§&";§;
         addr100:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[!8§ = null;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc3_)
            {
               §§push(this.mPigsAnimationTimer1);
               if(_loc3_ || this)
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr51:
                           §§push(this.§'H§);
                           if(_loc3_)
                           {
                              §§push(true);
                              if(_loc3_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(this.§'H§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(true);
                                             if(_loc3_ || param1)
                                             {
                                                §§push(§§pop().§!!h§(§§pop()));
                                                if(!_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            _loc2_.§2!8§.mTryToScream = §+T§.§<!t§;
                                                            if(_loc4_ && this)
                                                            {
                                                            }
                                                            addr142:
                                                            §§push(this);
                                                            §§push(this.mPigsAnimationTimer2);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop() - param1);
                                                            }
                                                            §§pop().mPigsAnimationTimer2 = §§pop();
                                                            if(_loc3_)
                                                            {
                                                               addr152:
                                                               if(this.mPigsAnimationTimer2 <= 0)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr158:
                                                                     §§push(this.§'H§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr162:
                                                                        §§push(true);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr165:
                                                                           addr166:
                                                                           if(!§§pop().isPigsAlive(§§pop()))
                                                                           {
                                                                           }
                                                                           §§goto(addr224);
                                                                        }
                                                                        addr171:
                                                                        _loc2_ = §§pop().§!!h§(§§pop());
                                                                        §§goto(addr170);
                                                                     }
                                                                     addr169:
                                                                     addr170:
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              _loc2_.§2!8§.mTryToBlink = §+T§.§4!V§;
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                              }
                                                                              §§goto(addr224);
                                                                           }
                                                                           §§push(this);
                                                                           §§push(250 + Math.random() * 500);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() + 2000 / (3 + this.§'H§.§5"V§()));
                                                                           }
                                                                           §§pop().mPigsAnimationTimer2 = §§pop();
                                                                        }
                                                                        §§goto(addr224);
                                                                     }
                                                                     addr224:
                                                                     return;
                                                                     §§push(true);
                                                                  }
                                                                  §§goto(addr169);
                                                                  §§push(this.§'H§);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                      }
                                                      §§goto(addr142);
                                                   }
                                                   §§push(this);
                                                   §§push(500 + Math.random() * 1000);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(§§pop() + 4000 / (3 + this.§'H§.§5"V§()));
                                                   }
                                                   §§pop().mPigsAnimationTimer1 = §§pop();
                                                   §§goto(addr142);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr142);
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr51);
         }
         §§goto(addr152);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            §§push(param6);
            if(!_loc8_)
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§0i§.§%r§);
                        if(!(_loc8_ && param2))
                        {
                           while(true)
                           {
                              §§push(int(§§pop()));
                           }
                           addr179:
                        }
                        addr180:
                        while(true)
                        {
                           param6 = §§pop();
                           addr181:
                           addr152:
                           while(true)
                           {
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc7_ || param2))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr170:
                  }
                  while(true)
                  {
                     §;P§.addScore(param1,param2);
                     loop5:
                     while(true)
                     {
                        this.§%V§.addScore(param1);
                        addr158:
                        loop7:
                        while(true)
                        {
                           §§push(param3);
                           loop8:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc8_ && param3)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§pop();
                                                loop14:
                                                while(_loc7_)
                                                {
                                                   §§push(this.§;"S§);
                                                   if(_loc7_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(!§§pop());
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   addr38:
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc8_ && this))
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        this.§4T§(param1.toString(),param4,param5,800,param6,0,0);
                                                                        addr94:
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           §§goto(addr24);
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr152);
                                                               }
                                                            }
                                                            §§goto(addr94);
                                                         }
                                                         addr24:
                                                         return;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr38);
                                                      }
                                                      addr151:
                                                   }
                                                   §§goto(addr152);
                                                }
                                                continue loop7;
                                             }
                                             addr132:
                                          }
                                          §§goto(addr47);
                                       }
                                       continue;
                                       addr122:
                                    }
                                    §§goto(addr151);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr179);
         }
         §§goto(addr158);
      }
      
      public function §4T§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param1)
         {
            §§push(param5);
            if(!(_loc8_ && param3))
            {
               if(§§pop() == -9999)
               {
                  addr81:
                  while(true)
                  {
                     §§push(§0i§.§#F§);
                     if(_loc9_ || param3)
                     {
                        while(true)
                        {
                           §§push(int(§§pop()));
                        }
                        addr90:
                     }
                     while(true)
                     {
                        param5 = §§pop();
                        addr92:
                        while(true)
                        {
                        }
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  this.§6&§.§"!J§(§0i§.§+![§,§6!O§.§;m§,§0i§.§[!A§,param2,param3,param4,param1,param5,param6,param7);
                  if(!_loc9_)
                  {
                     continue;
                  }
                  if(_loc9_)
                  {
                     break;
                  }
                  §§goto(addr81);
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr81);
      }
      
      public function §1">§(param1:§[!8§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§0!t§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§0!t§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr39);
         }
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`"G§.useMightyEagle();
         }
         do
         {
            this.§'H§.§^!M§();
            do
            {
               this.§;"S§ = true;
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §-"?§(param1:§[!8§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§6&§.§4!@§(§6!O§.§`U§);
            while(true)
            {
               §§push(this.§0!t§);
               if(_loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     while(!_loc2_)
                     {
                        §§push(this.§0!t§);
                        while(true)
                        {
                           §§pop().splice(this.§0!t§.indexOf(param1),1);
                           addr101:
                           while(true)
                           {
                           }
                        }
                     }
                     continue;
                     addr91:
                  }
                  while(true)
                  {
                     §§push(this.§0!t§);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop().length == 0)
                        {
                           if(!(_loc2_ && this))
                           {
                              this.§0!t§ = null;
                           }
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr91);
                        }
                        break;
                     }
                  }
                  return;
               }
               §§goto(addr95);
            }
         }
         §§goto(addr101);
      }
      
      public function §9"+§(param1:§ !X§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§="Q§ = this.§'H§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(_loc7_ || param2)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr73:
                  §§push(§&=§.BIRD_LAUNCH_FORCE_GREEN);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || param3)
                     {
                        addr72:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc4_:* = §§pop();
                  if(_loc7_)
                  {
                     §§push(param1.§+"-§);
                     if(!(_loc8_ && param2))
                     {
                        §§push(1);
                        loop0:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§="Q§);
                                 addr150:
                                 loop2:
                                 while(true)
                                 {
                                    §§pop().§7!`§(param1.§+"-§);
                                    addr153:
                                    while(true)
                                    {
                                       addr119:
                                       while(true)
                                       {
                                          §§push(this.§="Q§);
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          §§pop().§2!8§.§try §();
                                          while(true)
                                          {
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              addr148:
                           }
                           while(true)
                           {
                              §§push(param1.§5J§);
                              if(!(_loc8_ && param2))
                              {
                                 §§push(0);
                                 if(_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(param1.§5J§);
                                             if(_loc7_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc7_)
                                                {
                                                   _loc4_ = §§pop();
                                                   addr115:
                                                   if(_loc7_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr119);
                                                      }
                                                      else
                                                      {
                                                         addr154:
                                                         §§push(_loc4_);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            addr162:
                                                            §§push(-§§pop());
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               §§push(§§pop() * param2);
                                                               if(!_loc8_)
                                                               {
                                                                  addr174:
                                                                  §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr148);
                                                   }
                                                   §§goto(addr150);
                                                }
                                                §§goto(addr162);
                                             }
                                             break;
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr154);
                              }
                              break;
                           }
                           var _loc5_:* = §§pop();
                           §§push(_loc4_);
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() * param2);
                              if(!(_loc8_ && this))
                              {
                                 addr204:
                                 §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                 if(_loc7_ || param3)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc6_:* = §§pop();
                              if(!(_loc8_ && this))
                              {
                                 this.§="Q§.§+" §(new b2Vec2(_loc5_,_loc6_),false,true);
                                 while(true)
                                 {
                                    this.camera.§5"@§(§"l§.§<!N§);
                                 }
                                 addr290:
                              }
                              while(true)
                              {
                                 §§push(this.each);
                                 if(!(_loc8_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          addr261:
                                          this.each.§9"+§(this.mLevelEngine.§%!X§,param1.x,param1.y,param2,param3);
                                       }
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       §§goto(addr290);
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr261);
                              }
                              addr230:
                              return;
                           }
                           §§goto(addr204);
                        }
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr126);
               }
               else
               {
                  §§push(§&=§.BIRD_LAUNCH_FORCE);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc8_ && param3))
                     {
                        §§goto(addr72);
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr72);
            }
         }
         §§goto(addr73);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@A§ = true;
         }
      }
      
      private function §&T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@A§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr172:
               }
               addr159:
               while(true)
               {
                  this.§@A§ = false;
                  addr163:
                  while(_loc1_)
                  {
                  }
                  §§goto(addr172);
               }
               loop6:
               while(true)
               {
                  if(_loc2_ && _loc1_)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        loop8:
                        while(true)
                        {
                           §§push(this.activeObject);
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 §§push((§§pop() as §2"L§).§#P§);
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       continue loop6;
                                    }
                                    §§push(!§§pop());
                                    if(_loc1_)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§'H§.§`"K§();
                                             loop16:
                                             while(true)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.each);
                                                   if(_loc1_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(_loc2_ && this)
                                                            {
                                                               continue loop16;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(this.each);
                                                                  break;
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.activeObject);
                                                                  addr121:
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().activateSpecialPower(this.§?x§));
                                                                     addr124:
                                                                     while(_loc1_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop10:
                                                                           for(; !_loc2_; if(_loc1_ || _loc1_)
                                                                           {
                                                                              §§goto(addr19);
                                                                           })
                                                                           {
                                                                              this.§!^§ = true;
                                                                              while(true)
                                                                              {
                                                                                 addr58:
                                                                                 if(_loc1_ || _loc1_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop13;
                                                                           §§goto(addr142);
                                                                        }
                                                                        addr19:
                                                                        return;
                                                                        continue loop14;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               addr119:
                                                            }
                                                         }
                                                         §§goto(addr58);
                                                      }
                                                      §§goto(addr19);
                                                   }
                                                   break;
                                                }
                                                §§pop().§`!H§(this.mLevelEngine.§%!X§);
                                                §§goto(addr58);
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                       addr117:
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              break;
                           }
                           §§goto(addr121);
                        }
                        addr146:
                        while(true)
                        {
                           continue loop6;
                        }
                     }
                  }
                  §§goto(addr117);
               }
               §§goto(addr159);
            }
            return;
         }
         while(true)
         {
            §§goto(addr146);
         }
      }
      
      public function §4I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'H§.§4I§();
         }
      }
      
      public function §>9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§'H§.§[!K§();
         }
      }
      
      public function §1?§() : §0"T§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0"T§ = new §0"T§();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§8"G§ = this.§'C§.§8"G§;
            while(true)
            {
               _loc1_.§;!?§ = this.§'C§.§;!?§;
               while(_loc2_)
               {
                  this.§<<§.§?";§(_loc1_);
                  while(_loc2_ || _loc1_)
                  {
                     this.§'H§.§1o§(_loc1_);
                     while(_loc2_)
                     {
                        this.§`"G§.§4!U§(_loc1_);
                        loop4:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              _loc1_.theme = this.§#"O§.§4!!§();
                              if(_loc2_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return _loc1_;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §+2§() : int
      {
         return this.§'C§.§;!?§;
      }
      
      public function §&"Q§() : int
      {
         return this.§'C§.§8"G§;
      }
      
      public function §!"+§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'C§.§;!?§ = param1;
         }
      }
      
      public function §@"#§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'C§.§8"G§ = param1;
         }
      }
      
      public function §=r§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§5v§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§5v§);
                     addr88:
                     while(true)
                     {
                        §§pop().§@"?§(param1,param2);
                        addr91:
                        while(true)
                        {
                        }
                     }
                  }
                  addr86:
               }
               while(true)
               {
                  §§push(this.§<<§);
                  if(_loc4_ || param2)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && param2))
                        {
                           addr64:
                           this.§<<§.§["§(0);
                        }
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr86);
                     }
                     break;
                  }
                  §§goto(addr64);
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr91);
      }
      
      public function get §=!j§() : §0"T§
      {
         return this.§'C§;
      }
      
      public function get §?x§() : §8"=§
      {
         return this.§'H§;
      }
      
      protected function get starling() : §!"J§
      {
         return this.§]P§;
      }
      
      public function get §0!p§() : int
      {
         return §&!8§;
      }
   }
}
