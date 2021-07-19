package §[x§
{
   import §!F§.§!h§;
   import §!Y§.§[o§;
   import §"o§.§9!#§;
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §-Z§.§?h§;
   import §0!!§.§2N§;
   import §1n§.§,!0§;
   import §1n§.§5#§;
   import §1n§.§try §;
   import §3"§.§0$§;
   import §3"§.§2F§;
   import §3"§.§8+§;
   import §3"§.§?!&§;
   import §5!@§.§=!3§;
   import §9_§.§+>§;
   import §9_§.§4!;§;
   import §9_§.§?!!§;
   import §9_§.§`-§;
   import §;!E§.§!c§;
   import §;!E§.§7D§;
   import §;8§.§3f§;
   import §[K§.§2!1§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   import §`6§.§8!!§;
   import §`g§.§[N§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2^§
   {
      
      private static const §<!-§:int = 20;
      
      public static const §!s§:Number = §[o§.static;
      
      public static const §<!?§:Number = §[o§.§for§;
      
      public static const §,]§:Number = 0.05;
      
      public static const §8B§:Number;
      
      public static const §3!G§:Number;
      
      public static const §<A§:§2N§;
      
      protected static var §<G§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §,]§ = 1 / 20;
            §8B§ = §[o§.§for§ * §,]§;
            §§push(§§findproperty(§3!G§));
            §§push(§!s§);
            if(_loc2_ || §2^§)
            {
               §§push(§§pop() * §,]§);
            }
            §§pop().§3!G§ = §§pop();
            while(!_loc1_)
            {
               §<A§ = new §2N§(13 - 3);
               do
               {
                  §<G§ = §8+§.§#0§;
               }
               while(_loc1_);
               
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §3U§:§?!!§;
      
      private var §&!5§:§+>§;
      
      private var §"!8§:Array = null;
      
      protected var §"!@§:§8!!§;
      
      public var §[f§:§0q§;
      
      protected var §-;§:§%!>§;
      
      protected var §>!1§:§2!1§;
      
      protected var §2"§:§9"§;
      
      protected var §@<§:§>=§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §?^§:Boolean = false;
      
      protected var §+5§:Boolean = false;
      
      protected var §>^§:Boolean = false;
      
      public var §?U§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §#!H§:Number;
      
      public var §6&§:Number;
      
      private var §7!§:Number;
      
      public var §1§:§2F§;
      
      public var §^t§:Boolean = false;
      
      private var § use§:§"0§;
      
      private var §-I§:Sprite;
      
      protected var §'f§:§8+§;
      
      protected var §,Z§:§!h§ = null;
      
      private var §6a§:EventDispatcher;
      
      private var §-_§:Array;
      
      private var §,G§:Array;
      
      private var §@x§:§?h§;
      
      private var §!"§:§[N§;
      
      protected var §1y§:§5#§;
      
      protected var §<H§:§,!0§;
      
      private var §+l§:§try §;
      
      private var §00§:§try §;
      
      private var §5!0§:§try §;
      
      private var §8!G§:Stage;
      
      private var §33§:§9Z§;
      
      protected var §]!!§:§9!#§;
      
      protected var §#g§:§9!#§;
      
      protected var § !F§:Number = 0.0;
      
      protected var §?!=§:String;
      
      private var §`!C§:Boolean;
      
      protected var §7-§:Boolean;
      
      protected var §5!=§:uint = 1.417339207E9;
      
      public var §5I§:Boolean;
      
      public function §2^§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§,G§ = [];
         loop0:
         while(true)
         {
            super();
            this.§6a§ = new EventDispatcher();
            this.§1§ = new §2F§();
            while(true)
            {
               this.§8!G§ = param1;
               this.§1y§ = §5#§.§[8§;
               continue loop0;
               loop4:
               while(!(_loc3_ && _loc2_))
               {
                  this.§5!0§ = this.§#3§();
                  if(_loc3_)
                  {
                     continue;
                  }
                  addr25:
                  if(false)
                  {
                     while(true)
                     {
                        this.§00§ = this.§%v§();
                        continue loop4;
                        §§goto(addr25);
                     }
                     addr89:
                     var _loc2_:Stage3D = param1.stage3Ds[0];
                     if(!_loc3_)
                     {
                        this.§@x§ = new §?h§(§"0§,param1,new Rectangle(0,0,§[o§.static,§[o§.§for§),_loc2_);
                        §[o§.§&6§.addEventListener(Event.ENTER_FRAME,this.§@x§.onEnterFrame);
                        _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§ ,§,false,0,true);
                        addr204:
                     }
                     addr27:
                  }
                  else
                  {
                     §§goto(addr89);
                  }
                  addr170:
                  this.§@x§.§5U§ = false;
                  if(_loc4_)
                  {
                     addr149:
                     §§push(this.§@x§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(false);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§pop().enableErrorChecking = §§pop();
                           addr134:
                           addr165:
                           §§push(this.§@x§);
                           if(_loc4_)
                           {
                              §§pop().§5=§ = 2;
                              addr138:
                              if(!(_loc3_ && this))
                              {
                                 §§push(this.§@x§);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§pop().§#c§();
                                    if(_loc3_ && this)
                                    {
                                       §§goto(addr138);
                                    }
                                    return;
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr149);
                        }
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr204);
               }
            }
         }
      }
      
      public static function §7%§(param1:§+>§, param2:§+>§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§+j§);
         if(!(_loc5_ && param2))
         {
            §§push(§§pop() - param2.§+j§);
            if(_loc6_ || §2^§)
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§42§);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() - param2.§42§);
               if(_loc6_)
               {
                  addr72:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return §for §(_loc3_,_loc4_);
            }
            §§goto(addr72);
         }
         §§goto(addr56);
      }
      
      public static function §for §(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§-I§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr94:
                        do
                        {
                           §§push(Boolean(this.§1S§));
                           if(_loc1_ && _loc2_)
                           {
                              continue loop2;
                           }
                        }
                        while(_loc2_ || this);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        this.§-I§ = this.§ use§.§4-§;
                     }
                     if(_loc2_ || _loc2_)
                     {
                        while(true)
                        {
                           break loop4;
                        }
                        addr87:
                     }
                     else
                     {
                        §§goto(addr94);
                     }
                  }
                  while(true)
                  {
                     §§push(this.§-I§);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr87);
      }
      
      public function get §1S§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§ use§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§ use§);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
                  addr25:
               }
               while(true)
               {
                  this.§ use§ = this.§@x§.§6!"§ as §"0§;
               }
            }
         }
         while(true)
         {
            §§goto(addr46);
         }
      }
      
      private function get §2!8§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§1S§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§1S§);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return (§§pop() as §"0§).§2!8§;
         }
         addr51:
         return null;
      }
      
      public function get §0!§() : §,!0§
      {
         return this.§<H§;
      }
      
      public function get textureManager() : §5#§
      {
         return this.§1y§;
      }
      
      public function get camera() : §2!1§
      {
         return this.§>!1§;
      }
      
      public function get objects() : §?!!§
      {
         return this.§3U§;
      }
      
      public function get particles() : §>=§
      {
         return this.§@<§;
      }
      
      public function get background() : §8!!§
      {
         return this.§"!@§;
      }
      
      public function get slingshot() : §9"§
      {
         return this.§2"§;
      }
      
      public function get activeObject() : §+>§
      {
         return this.§&!5§;
      }
      
      public function get §1!6§() : §%!>§
      {
         return this.§-;§;
      }
      
      public function get stage() : Stage
      {
         return this.§8!G§;
      }
      
      public function get §@y§() : §try §
      {
         return this.§5!0§;
      }
      
      protected function get §2!$§() : §try §
      {
         return this.§+l§;
      }
      
      public function set activeObject(param1:§+>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§&!5§ = param1;
         }
      }
      
      public function set §%4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7-§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!"§);
         if(!_loc2_)
         {
            if(§§pop())
            {
               addr205:
               this.§!"§.dispose();
            }
            §§push(this.§1y§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§1y§);
                     addr196:
                     while(true)
                     {
                        §§pop().dispose();
                        addr197:
                        while(true)
                        {
                        }
                     }
                     addr56:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     addr65:
                     §§push(this.§5!0§.textureManager);
                     if(_loc2_ && _loc2_)
                     {
                        loop8:
                        while(true)
                        {
                           §§pop().dispose();
                           if(!(_loc2_ && this))
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(this.§5!0§);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc2_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§pop();
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(this.§5!0§);
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(§§pop().textureManager);
                                                            if(_loc2_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc2_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr56);
                                                            }
                                                            else
                                                            {
                                                               addr21:
                                                               §§push(this.§@x§);
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr34:
                                                                     this.§@x§.dispose();
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr34);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      addr178:
                                                      addr178:
                                                      addr182:
                                                      while(true)
                                                      {
                                                         §§push(this.§+l§);
                                                         if(!(_loc2_ && this))
                                                         {
                                                            addr128:
                                                            if(_loc2_ && this)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().textureManager);
                                                            if(!(_loc1_ || this))
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            while(!(_loc2_ && _loc2_))
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(this.§+l§);
                                                               }
                                                               continue loop11;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               break loop10;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr179);
                                                         §§goto(addr128);
                                                      }
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr65);
                                                addr102:
                                             }
                                             §§goto(addr54);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr182);
                                       }
                                       addr181:
                                    }
                                    §§goto(addr102);
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr181);
                                    }
                                    §§goto(addr151);
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr197);
                           }
                           §§goto(addr178);
                        }
                     }
                     §§pop().dispose();
                     §§goto(addr21);
                  }
               }
               while(true)
               {
                  §§goto(addr178);
                  §§goto(addr197);
               }
            }
            §§goto(addr196);
         }
         §§goto(addr205);
      }
      
      protected function initThemeGraphicsManager() : §try §
      {
         return null;
      }
      
      protected function §%v§() : §try §
      {
         return null;
      }
      
      protected function §#3§() : §try §
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§5#§) : §,!0§
      {
         return new §,!0§(param1);
      }
      
      public function §"3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(§?h§.§ n§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     if(param1)
                     {
                        addr99:
                        if(_loc3_ || param1)
                        {
                           §§push(§?h§.§ n§);
                           break;
                        }
                     }
                     else
                     {
                        §§push(§?h§.§ n§);
                        loop1:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                           §§pop().stop();
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                              addr34:
                              §§pop().color = 0;
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr99);
                  }
                  addr98:
                  §§pop().start();
                  §§goto(addr99);
               }
               return;
            }
            §§goto(addr98);
         }
         §§goto(addr99);
      }
      
      public function §[!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.sprite);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr48:
                     this.sprite.visible = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function §%!<§(param1:§!h§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§,Z§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     while(true)
                     {
                        §§push(this.§,Z§);
                        addr84:
                        while(true)
                        {
                           §§pop().removeEventListeners();
                        }
                     }
                     addr82:
                  }
                  while(true)
                  {
                  }
                  addr85:
               }
               while(true)
               {
                  this.§,Z§ = param1;
                  while(this.mReadyToRun)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr65:
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        §§push(this.§,Z§);
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§pop().addEventListeners();
                           §§goto(addr65);
                        }
                        else
                        {
                           §§goto(addr84);
                        }
                     }
                     §§goto(addr85);
                  }
                  return;
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §3!%§() : §9!#§
      {
         return this.§]!!§;
      }
      
      public function §>&§(param1:§[N§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            this.§!"§ = param1;
         }
         §§push(this.§!"§.§0!>§);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§1y§.§5§(this.§!"§.§5&§(_loc5_));
            _loc5_++;
         }
         loop1:
         while(true)
         {
            if(param3 != null)
            {
               loop2:
               while(true)
               {
                  this.§6a§.addEventListener(Event.INIT,param3);
                  loop3:
                  while(true)
                  {
                     this.§,G§.push(param3);
                     while(!_loc6_)
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(!(_loc6_ && param2))
                           {
                              if(!_loc6_)
                              {
                                 this.§`E§();
                                 addr37:
                                 return;
                                 addr81:
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
               }
            }
            while(this.§,m§(param2))
            {
               if(!(_loc6_ && param2))
               {
                  §§goto(addr63);
               }
               §§goto(addr81);
            }
            §§goto(addr37);
         }
      }
      
      private function §,m§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            §§push(this.§1y§);
            while(true)
            {
               §§push(§§pop().§&!%§());
               loop1:
               while(!§§pop())
               {
                  do
                  {
                     this.§-_§ = param1.concat();
                  }
                  while(_loc4_);
                  
                  if(_loc5_)
                  {
                     §§push(false);
                     if(_loc5_)
                     {
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                        continue;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(§3f§);
                        §§push("\n\nMain texture manager memory usage:\n   textures ");
                        if(_loc5_)
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_ || this)
                              {
                                 §§push(" kilobytes\n   bitmaps ");
                                 if(_loc5_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc4_ && this))
                                    {
                                       addr100:
                                       §§push(§§pop() + _loc3_);
                                       if(!(_loc4_ && param1))
                                       {
                                          addr109:
                                          §§push(§§pop() + " kilobytes\n\n");
                                       }
                                    }
                                    §§pop().log(§§pop());
                                    if(!(_loc4_ && this))
                                    {
                                       break;
                                    }
                                    break loop1;
                                 }
                              }
                              §§goto(addr109);
                           }
                        }
                        §§goto(addr100);
                        addr168:
                        _loc3_ = §§pop();
                     }
                     this.initializeAnimations(param1);
                     §§push(true);
                     addr169:
                  }
                  return §§pop();
               }
               addr129:
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               §§push(§§pop().§@!C§);
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     addr141:
                     §§push(1000);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr168);
                           §§push(int(§§pop()));
                        }
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr187:
                           loop8:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              §§push(this.§1y§);
                              if(!(_loc4_ && param1))
                              {
                                 §§goto(addr129);
                              }
                              addr176:
                              while(true)
                              {
                                 §§push(§§pop().§;!$§);
                                 if(_loc4_ && _loc3_)
                                 {
                                    continue loop8;
                                 }
                                 continue loop8;
                              }
                           }
                           §§goto(addr169);
                        }
                        addr186:
                     }
                     while(true)
                     {
                        §§goto(addr186);
                        §§goto(addr141);
                     }
                  }
                  §§goto(addr187);
               }
               §§goto(addr168);
            }
         }
         while(true)
         {
            §§goto(addr176);
         }
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§<H§.initializeAnimations(param1);
         }
      }
      
      private function § ,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1y§.§^2§();
            §§push(this.§2!$§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(this.§2!$§);
                     if(_loc3_ && _loc2_)
                     {
                        continue loop0;
                     }
                     §§push(§§pop().textureManager);
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr81:
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        §§pop().§^2§();
                        if(_loc2_)
                        {
                           §§push(this.§5!0§);
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 §§pop().§&!%§();
                                 if(_loc2_)
                                 {
                                    addr38:
                                    if(_loc3_ && _loc3_)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             §§push(this.§,Z§);
                                             loop16:
                                             while(true)
                                             {
                                                §§push(§§pop() != null);
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§pop();
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(this.mReadyToRun);
                                                               if(_loc2_ || this)
                                                               {
                                                                  if(!(_loc2_ || _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§,Z§);
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§pop().addEventListeners();
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     continue loop16;
                                                                     addr141:
                                                                  }
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§+l§);
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§+l§);
                                                                              addr105:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§&!%§();
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr141);
                                                                                 }
                                                                              }
                                                                              continue loop18;
                                                                              addr52:
                                                                              if(_loc2_ || param1)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr63:
                                                                                    §§push(this.§5!0§);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().textureManager);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§goto(addr24);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§5!0§);
                                                                                                   addr73:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().textureManager);
                                                                                                      addr74:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            §§goto(addr81);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§^2§();
                                                                                                               break loop21;
                                                                                                            }
                                                                                                            addr260:
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr204:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr205:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr206:
                                                                                                         §§push(this.§@y§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().textureManager);
                                                                                                            break loop24;
                                                                                                            §§goto(addr206);
                                                                                                         }
                                                                                                         addr208:
                                                                                                      }
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!this.§-_§)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         this.§,m§(this.§-_§);
                                                                                                         this.§-_§ = null;
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            this.§`E§();
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         addr210:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                      }
                                                                                                      addr250:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§2!$§);
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr203:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr74);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§^2§();
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    addr63:
                                                                                 }
                                                                                 break loop21;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§5!0§);
                                                                           if(_loc2_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr52);
                                                                              }
                                                                              §§goto(addr24);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr63);
                                                                     }
                                                                     §§goto(addr105);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§@y§);
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!(_loc2_ || this))
                                                                           {
                                                                              break;
                                                                              addr223:
                                                                           }
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(this.§@y§);
                                                                                 if(!(_loc3_ && param1))
                                                                                 {
                                                                                    if(!(_loc2_ || param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr203);
                                                                                    §§push(§§pop().textureManager);
                                                                                 }
                                                                                 §§goto(addr208);
                                                                              }
                                                                              §§goto(addr204);
                                                                           }
                                                                        }
                                                                        addr249:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    addr24:
                                    return;
                                 }
                                 §§goto(addr71);
                              }
                              §§goto(addr63);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr146);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr249);
                  }
               }
            }
         }
         §§goto(addr250);
      }
      
      private function §`E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6a§.dispatchEvent(new Event(Event.INIT));
         }
         do
         {
            this.§3$§();
         }
         while(!(_loc2_ || this));
         
      }
      
      private function §3$§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         var _loc3_:* = this.§,G§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc5_)
            {
               this.§6a§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            this.§,G§ = [];
         }
      }
      
      public function init(param1:§8+§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.mReadyToRun);
         loop0:
         while(true)
         {
            if(§§pop())
            {
               while(true)
               {
                  this.clearLevel();
                  addr226:
                  while(true)
                  {
                  }
               }
               addr224:
            }
            while(true)
            {
               this.§-;§ = new §%!>§(this,param1);
               while(true)
               {
                  this.§>!1§ = this.initLevelCamera(param1);
                  this.§#!H§ = 0;
                  loop5:
                  while(true)
                  {
                     this.§6&§ = 0;
                     if(_loc3_)
                     {
                        break;
                     }
                     this.§7!§ = 0;
                     loop6:
                     while(true)
                     {
                        this.§`!C§ = false;
                        this.mReadyToRun = false;
                        addr173:
                        while(true)
                        {
                           this.§?^§ = false;
                           loop8:
                           for(; _loc2_; if(_loc3_)
                           {
                              continue;
                           },this.initialize(param1),§§goto(addr109))
                           {
                              this.mPigsAnimationTimer1 = 2000;
                              this.mPigsAnimationTimer2 = 1000;
                              §<G§ = param1.theme;
                              loop9:
                              while(true)
                              {
                                 this.§'f§ = param1;
                                 this.§+5§ = this.§5?§(param1.theme);
                                 this.§>^§ = this.§<4§(param1.theme);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§+5§);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             §§push(this.§>^§);
                                             if(_loc3_ && param1)
                                             {
                                                break;
                                             }
                                             if(_loc2_ || this)
                                             {
                                                continue loop11;
                                             }
                                          }
                                          if(!_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop9;
                                       }
                                       addr58:
                                       this.§6!%§(param1.theme);
                                       while(_loc2_)
                                       {
                                          addr60:
                                          while(true)
                                          {
                                             this.§;!%§();
                                             continue loop5;
                                             §§goto(addr60);
                                          }
                                       }
                                       continue loop10;
                                    }
                                 }
                                 continue loop8;
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
      
      protected function §;!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§]!!§ = new §9!#§(§0$§.§[C§);
         }
      }
      
      protected function §5?§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§+l§)
            {
               if(!_loc3_)
               {
                  addr28:
                  §§push(false);
                  if(_loc2_)
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
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      protected function §<4§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7D§ = null;
         if(!_loc4_)
         {
            if(this.§00§)
            {
               addr24:
               _loc2_ = §!c§.§9!§(param1);
               if(!_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        §§push(Boolean(_loc2_.§,M§));
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 §§pop();
                                 if(!(_loc4_ && this))
                                 {
                                    addr82:
                                    §§push(this.§00§.§@L§(_loc2_.§,M§));
                                    if(!_loc4_)
                                    {
                                       addr89:
                                       §§push(!§§pop());
                                       if(!_loc4_)
                                       {
                                          §§goto(addr92);
                                       }
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr100);
                              }
                              return §§pop();
                           }
                           addr92:
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr100:
                                 §§push(false);
                              }
                              else
                              {
                                 §§goto(addr102);
                              }
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr102);
               }
               §§goto(addr82);
            }
            addr102:
            return true;
         }
         §§goto(addr24);
      }
      
      protected function §6!%§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7D§ = null;
         §§push(this.§+l§);
         loop0:
         while(true)
         {
            §§push(Boolean(§§pop()));
            §§push(Boolean(§§pop()));
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§push(!this.§5?§(param1));
                  }
                  addr213:
               }
               while(true)
               {
                  loop4:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§push(this.§+l§);
                           loop6:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.COMPLETE,this.§3!0§);
                              §§push(this.§+l§);
                              loop7:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.CANCEL,this.§<^§);
                                 loop8:
                                 while(!_loc3_)
                                 {
                                    §§push(this.§+l§);
                                    loop9:
                                    while(true)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§3!0§);
                                       addr169:
                                       while(!_loc3_)
                                       {
                                          §§push(this.§+l§);
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(this.§+l§);
                                             addr160:
                                             continue loop9;
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop7;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             §§pop().§'[§(param1);
                                             while(true)
                                             {
                                                §§push(this.§00§);
                                                continue loop4;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       continue loop8;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr97);
                     }
                  }
               }
            }
         }
      }
      
      private function §3!0§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§+l§);
         while(true)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§3!0§);
            loop1:
            while(true)
            {
               §§push(this.§+l§);
               if(!_loc2_)
               {
                  break;
               }
               §§pop().removeEventListener(Event.CANCEL,this.§<^§);
               this.§+5§ = true;
               loop2:
               while(true)
               {
                  §§push(this.§+5§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc3_ && this))
                     {
                        addr81:
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              §§goto(addr94);
                           }
                           addr93:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 this.initialize(this.§'f§);
                              }
                              else
                              {
                                 addr94:
                                 §§goto(addr17);
                              }
                           }
                           addr17:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           return;
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr81);
               }
            }
         }
      }
      
      private function §<^§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§+l§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§3!0§);
               addr81:
               while(true)
               {
                  §§push(this.§+l§);
                  if(_loc3_ || _loc2_)
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§<^§);
                     while(_loc3_ || this)
                     {
                        this.§?^§ = true;
                        if(_loc3_)
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
         §§goto(addr81);
      }
      
      private function §!+§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§+l§);
         while(true)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§!+§);
            loop1:
            while(true)
            {
               §§push(this.§+l§);
               if(!_loc2_)
               {
                  break;
               }
               §§pop().removeEventListener(Event.CANCEL,this.§'m§);
               this.§>^§ = true;
               §§push(this.§+5§);
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr93:
                        while(true)
                        {
                           §§push(this.§>^§);
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           addr34:
                           if(_loc3_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        if(!(_loc2_ || _loc3_))
                        {
                           continue loop1;
                        }
                        this.initialize(this.§'f§);
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     §§goto(addr93);
                  }
                  return;
               }
            }
         }
      }
      
      private function §'m§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§+l§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§!+§);
               while(true)
               {
                  §§push(this.§+l§);
                  if(!(_loc3_ && param1))
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§'m§);
                     loop2:
                     while(true)
                     {
                        this.§>^§ = true;
                        §§push(this.§+5§);
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 §§push(this.§>^§);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                              }
                              if(_loc2_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
                  break;
               }
            }
         }
         §§goto(addr59);
      }
      
      public function get backgroundTextureManager() : §5#§
      {
         return this.§1y§;
      }
      
      protected function initialize(param1:§8+§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§7-§ = false;
            this.§5I§ = false;
            §§push(§?h§.§;B§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr159:
                  §?h§.§;B§.speed = 1;
               }
               this.§[f§ = new §0q§(this);
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this);
                  §§push(param1.theme);
                  §§push(this.§-;§.§&p§);
                  if(_loc2_)
                  {
                     §§push(§§pop() / §,]§);
                  }
                  §§pop().§"!@§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§>!1§.§';§());
                  this.§"!@§.§#i§(§[o§.§%!!§());
                  while(true)
                  {
                     this.§3U§ = this.initLevelObjectManager(param1);
                     loop2:
                     while(true)
                     {
                        this.§2"§ = this.initLevelSlingshot(param1);
                        this.§@<§ = this.§%!A§(this.§<H§,this.§1y§);
                        this.§>!1§.init();
                        if(!_loc2_)
                        {
                           break;
                        }
                        this.§@[§();
                        loop3:
                        do
                        {
                           if(!_loc3_)
                           {
                              this.§?%§();
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    this.mReadyToRun = true;
                                    §§push(this.§,Z§);
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       return;
                                    }
                                    addr24:
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                              §§pop().addEventListeners();
                              continue;
                           }
                           continue loop2;
                        }
                        while(_loc3_);
                        
                        §§goto(addr24);
                     }
                  }
               }
               addr150:
            }
            §§goto(addr159);
         }
         §§goto(addr150);
      }
      
      protected function §?%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.§?!=§)
         {
            this.§#g§ = §9!#§.initialize(this.§?!=§);
            §§push(this.§#g§);
            while(true)
            {
               §§pop().speed = 1;
               while(true)
               {
                  §§push(this.§#g§);
                  if(!(_loc1_ || _loc1_))
                  {
                     break;
                  }
                  §§pop().play();
                  while(!(_loc2_ && _loc1_))
                  {
                     this.§ !F§ = -1000;
                     if(_loc1_)
                     {
                        this.§?!=§ = null;
                        §§goto(addr17);
                     }
                  }
               }
            }
         }
         addr17:
      }
      
      public function §]h§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!=§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§#g§ == null);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§#g§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     if(param1)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr95:
                           this.§#g§.speed = Math.min(this.§#g§.speed * 1.25,Math.pow(1.25,2));
                        }
                        addr107:
                     }
                     else
                     {
                        §§push(this.§#g§);
                        if(!_loc3_)
                        {
                           §§pop().speed = Math.max(this.§#g§.speed / 1.25,Math.pow(1 / 1.25,10));
                           if(_loc3_ && param1)
                           {
                           }
                           §§goto(addr24);
                        }
                        else
                        {
                           §§goto(addr95);
                        }
                     }
                  }
                  §§goto(addr95);
               }
               addr24:
               return;
            }
         }
         §§goto(addr95);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§#g§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr53:
                     this.§#g§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected function initLevelObjectManager(param1:§8+§) : §?!!§
      {
         return new §?!!§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§8+§) : §2!1§
      {
         return new §2!1§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§5#§, param4:Number) : §8!!§
      {
         return new §8!!§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§8+§) : §9"§
      {
         return new §9"§(this,param1,new Sprite());
      }
      
      protected function §%!A§(param1:§,!0§, param2:§5#§) : §>=§
      {
         return new §>=§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(this.mReadyToRun)
            {
               if(!(_loc6_ && this))
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§8+§ = new §8+§();
         if(_loc7_ || param2)
         {
            _loc3_.§&J§ = -12;
         }
         var _loc4_:§?!&§;
         (_loc4_ = new §?!&§()).left = 0;
         §§push(_loc4_);
         §§push(§2!1§.§2s§);
         if(!_loc6_)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(10);
               if(_loc7_ || param2)
               {
                  addr135:
                  §§push(§§pop() / §§pop());
                  if(!_loc6_)
                  {
                     addr133:
                     §§push(8);
                  }
                  §§pop().top = §§pop();
                  §§push(_loc4_);
                  §§push(_loc4_.top);
                  if(_loc7_)
                  {
                     §§push(§§pop() + §2!1§.§2s§);
                  }
                  §§pop().bottom = §§pop();
                  while(true)
                  {
                     §§push(_loc4_);
                     §§push(_loc4_.left);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + §2!1§.§%!+§);
                     }
                     §§pop().right = §§pop();
                     while(!_loc6_)
                     {
                        _loc4_.y = -13.929;
                        _loc4_.x = §2!1§.§%!+§;
                        while(true)
                        {
                           _loc4_.id = §2!1§.§=B§;
                           do
                           {
                              _loc3_.§]^§(_loc4_);
                           }
                           while(_loc6_ && this);
                           
                           if(_loc6_ && param1)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           var _loc5_:§?!&§;
                           (_loc5_ = new §?!&§()).top = _loc4_.top;
                           if(_loc7_)
                           {
                              _loc5_.bottom = _loc4_.bottom;
                              _loc5_.left = 150;
                              while(true)
                              {
                                 §§push(_loc5_);
                                 §§push(_loc5_.left);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + §2!1§.§%!+§);
                                 }
                                 §§pop().right = §§pop();
                                 do
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc5_.top);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() + §2!1§.§2s§);
                                    }
                                    §§pop().bottom = §§pop();
                                 }
                                 while(!_loc7_);
                                 
                                 _loc5_.y = _loc4_.y;
                                 addr266:
                                 addr215:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc5_.left);
                                    if(_loc7_ || param1)
                                    {
                                       §§push(§2!1§.§%!+§);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() / 2);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().x = §§pop();
                                    _loc5_.id = §2!1§.§+I§;
                                    addr240:
                                    while(true)
                                    {
                                       _loc3_.§]^§(_loc5_);
                                       addr168:
                                       if(_loc7_ || param2)
                                       {
                                          return;
                                       }
                                    }
                                 }
                                 addr215:
                                 if(_loc6_ && param1)
                                 {
                                    continue;
                                 }
                                 addr162:
                                 this.init(_loc3_);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr168);
                                 }
                                 while(true)
                                 {
                                    this.§!y§(_loc3_);
                                    loop10:
                                    while(true)
                                    {
                                       addr208:
                                       while(true)
                                       {
                                          §§push(param1);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(null);
                                             addr211:
                                             addr212:
                                             while(§§pop() == §§pop())
                                             {
                                                continue loop12;
                                             }
                                             _loc3_.theme = param1;
                                             §§goto(addr215);
                                          }
                                          continue loop10;
                                       }
                                       §§goto(addr240);
                                    }
                                 }
                                 addr226:
                              }
                           }
                           while(true)
                           {
                              if(param2)
                              {
                                 §§goto(addr226);
                              }
                              §§goto(addr208);
                           }
                        }
                     }
                  }
               }
               §§push(§§pop() * §§pop());
            }
            §§goto(addr135);
         }
         §§goto(addr133);
      }
      
      protected function §""§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5!=§ ^= this.§5!=§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§5!=§);
               §§push(this.§5!=§);
               if(_loc2_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§5!=§ = §§pop() ^ §§pop();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§5!=§ ^= this.§5!=§ << 4;
                     if(_loc2_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return this.§5!=§ * (1 / uint.MAX_VALUE);
               }
            }
         }
         §§goto(addr83);
      }
      
      protected function §!y§(param1:§8+§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§=!3§ = null;
         if(_loc7_)
         {
            §§push(this);
            §§push(0.33);
            if(_loc7_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§5!=§ = §§pop();
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
                  if(_loc7_ || _loc3_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc7_ || this))
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(5);
                              if(!(_loc7_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 break;
                              }
                              §§push(this.§""§());
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * 5);
                              }
                              §§push(int(§§pop()));
                              if(!_loc7_)
                              {
                                 break loop3;
                              }
                              _loc4_ = §§pop();
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              §§push(_loc5_ = new §=!3§());
                              §§push(30 + _loc3_ * 10);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(this.§""§());
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop() * 9);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().x = §§pop();
                              if(_loc7_ || this)
                              {
                                 §§push(_loc2_);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() == 0)
                                    {
                                       _loc5_.y = 0;
                                       while(true)
                                       {
                                          §§push(_loc3_ == 1);
                                          if(_loc7_ || this)
                                          {
                                             §§push(§§pop());
                                             loop7:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§push(_loc3_);
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == 2);
                                                         if(_loc7_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     §§pop();
                                                                     §§push(_loc3_);
                                                                     while(true)
                                                                     {
                                                                        §§push(4);
                                                                        addr318:
                                                                        do
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                        }
                                                                        while(!_loc6_);
                                                                        
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  continue;
                                                                  addr338:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc5_.id = "PIG_MUSTACHE";
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr326:
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_.id = "PIG_HELMET";
                                                                     addr314:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr314:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     §§push(45);
                                                                     §§push(this.§""§());
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() * 90);
                                                                     }
                                                                     §§pop().angle = §§pop() - §§pop();
                                                                     addr110:
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        param1.addObject(_loc5_);
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        addr170:
                                                                        while(true)
                                                                        {
                                                                           addr117:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              §§push(this.§""§());
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 §§push(§§pop() * 360);
                                                                              }
                                                                              §§pop().angle = §§pop();
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr295:
                                                                              addr295:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc7_ || _loc2_)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop() * _loc3_);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      addr223:
                                                                                                      §§push(§§pop() % 5);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr223);
                                                                                             }
                                                                                             §§push(int(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                addr226:
                                                                                                while(!_loc6_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   while(_loc7_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   §§goto(addr317);
                                                                                                }
                                                                                                §§goto(addr318);
                                                                                             }
                                                                                             addr225:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr223);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                 }
                                                                                 §§goto(addr229);
                                                                              }
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     continue loop3;
                                                                     §§goto(addr314);
                                                                  }
                                                               }
                                                            }
                                                            continue loop7;
                                                            addr333:
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                   }
                                                   addr355:
                                                }
                                                §§goto(addr333);
                                             }
                                          }
                                          §§goto(addr355);
                                          addr240:
                                          if(_loc6_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          _loc5_.id = "BIRD_RED";
                                          if(_loc7_)
                                          {
                                             §§goto(addr117);
                                          }
                                          §§goto(addr326);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       §§push(-100 + _loc2_ * 6);
                                       if(_loc7_)
                                       {
                                          §§push(this.§""§());
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(§§pop() * 3);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                addr294:
                                                §§push(§§pop() - §§pop());
                                                if(_loc7_ || this)
                                                {
                                                   §§push(_loc3_ * 8);
                                                }
                                                §§pop().y = §§pop();
                                                §§goto(addr295);
                                             }
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§goto(addr294);
                                    }
                                 }
                              }
                              §§goto(addr295);
                           }
                           if(!_loc7_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                     _loc2_++;
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr382);
               }
               return;
            }
         }
      }
      
      private function §!!#§() : void
      {
      }
      
      public function §@[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§8!!§.§=t§);
            while(true)
            {
               if(§§pop())
               {
                  this.§?2§(this.§"!@§.§`;§,false);
                  while(true)
                  {
                     addr119:
                     this.§?2§(this.§"!@§.§9!=§,false);
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§push(§8!!§.§=t§);
                     loop8:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr69:
                              if(_loc1_ || _loc1_)
                              {
                                 this.§?2§(this.§"!@§.§[$§,false);
                                 addr44:
                                 this.§?2§(this.§@<§.§4!A§(§>=§.§0,§),true);
                                 loop9:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop8;
                                       }
                                       addr155:
                                       while(true)
                                       {
                                          this.§?2§(this.§3U§.§9z§,true);
                                          break loop9;
                                       }
                                    }
                                    break;
                                    addr32:
                                    if(!(_loc1_ || this))
                                    {
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       §§goto(addr41);
                                    }
                                    addr165:
                                    while(true)
                                    {
                                       this.§?2§(this.§@<§.§4!A§(§>=§.§!!+§),true);
                                       §§goto(addr155);
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§?2§(this.§2"§.sprite,true);
                                    addr127:
                                    while(true)
                                    {
                                       this.§?2§(this.§@<§.§4!A§(§>=§.§>!5§),true);
                                       break loop8;
                                    }
                                 }
                                 addr92:
                              }
                              break;
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr44);
                     }
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           §§goto(addr119);
                        }
                        break;
                        §§goto(addr69);
                     }
                     §§goto(addr127);
                  }
               }
               while(true)
               {
                  this.§?2§(this.§@<§.§4!A§(§>=§.§8o§),false);
                  this.§?2§(this.§@<§.§4!A§(§>=§.§8'§),true);
                  §§goto(addr165);
               }
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     §§goto(addr32);
                  }
                  addr41:
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §?2§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.sprite);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr47:
                     this.sprite.addChild(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            if(_loc4_ || param2)
            {
               §§push(§[o§.§<T§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr158:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr157:
            }
            loop2:
            while(true)
            {
               param1 = §§pop();
               loop3:
               while(true)
               {
                  §§push(param2);
                  if(_loc4_ || param2)
                  {
                     §§push(§[o§.§<T§);
                     if(_loc4_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc4_ || param1)
                        {
                           if(_loc5_ && this)
                           {
                              continue loop2;
                           }
                           if(_loc5_ && _loc3_)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                        }
                     }
                     else
                     {
                        §§goto(addr157);
                     }
                  }
                  param2 = §§pop();
                  loop4:
                  do
                  {
                     _loc3_.x = (param1 / §2!1§.§;l§ + this.§>!1§.§6v§ - §2!1§.§ !B§ / §2!1§.§;l§) * §,]§;
                     while(!(_loc5_ && param2))
                     {
                        _loc3_.y = (param2 / §2!1§.§;l§ + this.§>!1§.§^_§ - §2!1§.§false§ / §2!1§.§;l§) * §,]§;
                        if(!_loc5_)
                        {
                           continue loop4;
                        }
                     }
                     continue loop3;
                  }
                  while(_loc5_ && param1);
                  
               }
               §§goto(addr158);
            }
         }
         return _loc3_;
      }
      
      public function §'!,§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc5_)
         {
            _loc3_.x = (param1 / §,]§ + §2!1§.§ !B§ / §2!1§.§;l§ - this.§>!1§.§6v§) * §2!1§.§;l§;
            if(_loc5_)
            {
               _loc3_.y = (param2 / §,]§ + §2!1§.§false§ / §2!1§.§;l§ - this.§>!1§.§^_§) * §2!1§.§;l§;
               addr42:
            }
            var _loc4_:Number = Math.max(§[o§.§<T§,§[o§.§>k§);
            if(_loc5_)
            {
               _loc3_.x *= _loc4_;
            }
            do
            {
               _loc3_.y *= _loc4_;
            }
            while(!(_loc5_ || param1));
            
            return _loc3_;
         }
         §§goto(addr42);
      }
      
      public function §do§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§3U§.addObject(param1,param2,param3);
         }
      }
      
      public function §0u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§2!8§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§2!8§);
                     addr80:
                     while(true)
                     {
                        §§pop().visible = true;
                        addr82:
                        loop4:
                        while(true)
                        {
                           §§push(this.§2!8§);
                           if(_loc2_ || _loc2_)
                           {
                              §§pop().alpha = 0;
                              while(_loc1_)
                              {
                                 continue loop0;
                              }
                              addr72:
                              while(true)
                              {
                                 this.§?U§ = 0;
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr70);
                                 §§goto(addr72);
                              }
                              addr70:
                              return;
                              addr39:
                           }
                        }
                     }
                  }
               }
               §§goto(addr39);
            }
            §§goto(addr80);
         }
         §§goto(addr82);
      }
      
      public function §%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§33§ = new §9Z§(§`5§.§3x§,§`5§.§"y§);
         }
      }
      
      public function §1r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§33§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§"!@§);
         if(_loc1_ || _loc2_)
         {
            if(§§pop())
            {
               addr510:
               this.§"!@§.dispose();
               this.§"!@§ = null;
               while(true)
               {
               }
               addr497:
            }
            loop0:
            while(true)
            {
               §§push(this.§3U§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     addr491:
                     this.§3U§.dispose();
                     this.§3U§ = null;
                     this.§&!5§ = null;
                     while(true)
                     {
                     }
                     addr462:
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§[f§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           loop2:
                           for(; !(_loc2_ && _loc2_); while(true)
                           {
                              §§pop().clear();
                              this.§[f§ = null;
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr454);
                           })
                           {
                              §§push(this.§[f§);
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 if(!§§pop().§super§)
                                 {
                                 }
                                 addr454:
                                 while(true)
                                 {
                                    §§push(this.§[f§);
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(this.§-;§);
                           if(_loc1_ || this)
                           {
                              if(§§pop())
                              {
                                 addr426:
                                 this.§-;§.clear();
                                 this.§-;§ = null;
                              }
                              §§push(this.§2"§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(§§pop())
                                 {
                                    addr406:
                                    this.§2"§.dispose();
                                    this.§2"§ = null;
                                    while(_loc1_)
                                    {
                                    }
                                    §§goto(addr454);
                                    addr390:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§>!1§);
                                    if(!_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          addr384:
                                          this.§>!1§.clear();
                                          this.§>!1§ = null;
                                          while(true)
                                          {
                                          }
                                          addr375:
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.§@<§);
                                          if(!_loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                addr362:
                                                this.§@<§.dispose();
                                                while(true)
                                                {
                                                   if(!(_loc1_ || this))
                                                   {
                                                      continue loop6;
                                                   }
                                                   this.§@<§ = null;
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         §§goto(addr390);
                                                      }
                                                      else
                                                      {
                                                         addr353:
                                                      }
                                                   }
                                                }
                                                addr363:
                                             }
                                             while(true)
                                             {
                                                if(this.sprite)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr301:
                                                         §§push(this.sprite);
                                                         if(_loc1_)
                                                         {
                                                            if(§§pop().numChildren <= 0)
                                                            {
                                                               break;
                                                            }
                                                            §§push(this.sprite);
                                                         }
                                                         §§pop().removeChildAt(0,true);
                                                         §§goto(addr301);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr363);
                                                      }
                                                   }
                                                   §§goto(addr346);
                                                }
                                                break;
                                                §§goto(addr353);
                                             }
                                             addr310:
                                             this.§#!H§ = 0;
                                             this.§6&§ = 0;
                                             this.mReadyToRun = false;
                                             addr293:
                                             if(!_loc2_)
                                             {
                                                this.§`!C§ = false;
                                                this.§?U§ = §`5§.§62§;
                                                addr283:
                                                §§push(this.§1S§);
                                                if(_loc1_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr276:
                                                      (this.§1S§ as §"0§).§8X§.x = 0;
                                                      addr270:
                                                      addr275:
                                                      §§push(this.§1S§);
                                                      if(_loc1_ || this)
                                                      {
                                                         §§push((§§pop() as §"0§).§8X§);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(0);
                                                            if(!_loc2_)
                                                            {
                                                               §§pop().y = §§pop();
                                                               addr263:
                                                               §§push(this.§2!8§);
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr219:
                                                                     this.§2!8§.visible = false;
                                                                     addr217:
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        addr201:
                                                                        this.§#g§ = null;
                                                                        this.§]!!§ = null;
                                                                        addr191:
                                                                        addr205:
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              addr178:
                                                                              if(this.§+l§)
                                                                              {
                                                                                 addr181:
                                                                                 this.§+l§.removeEventListener(Event.COMPLETE,this.§3!0§);
                                                                                 addr179:
                                                                                 addr186:
                                                                                 §§push(this.§+l§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       §§pop().removeEventListener(Event.CANCEL,this.§<^§);
                                                                                       addr167:
                                                                                       if(!(_loc2_ && this))
                                                                                       {
                                                                                          addr124:
                                                                                          §§push(this.§00§);
                                                                                          if(_loc1_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc1_ || _loc1_)
                                                                                                {
                                                                                                   addr144:
                                                                                                   this.§00§.removeEventListener(Event.COMPLETE,this.§!+§);
                                                                                                   §§push(this.§00§);
                                                                                                   if(_loc1_ || _loc2_)
                                                                                                   {
                                                                                                      §§pop().removeEventListener(Event.CANCEL,this.§'m§);
                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                      {
                                                                                                         if(!(_loc2_ && this))
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                               {
                                                                                                                  if(_loc1_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr74:
                                                                                                                     this.§3$§();
                                                                                                                     addr77:
                                                                                                                     §§push(§?h§.§ n§);
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 addr64:
                                                                                                                                 §?h§.§ n§.color = 0;
                                                                                                                                 addr66:
                                                                                                                                 if(!(_loc2_ && this))
                                                                                                                                 {
                                                                                                                                    addr28:
                                                                                                                                    §§push(this.§,Z§);
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc2_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                addr45:
                                                                                                                                                this.§,Z§.removeEventListeners();
                                                                                                                                                addr21:
                                                                                                                                                this.mReadyToRun = false;
                                                                                                                                                if(!_loc1_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr191);
                                                                                                                                                }
                                                                                                                                                return;
                                                                                                                                                addr46:
                                                                                                                                             }
                                                                                                                                             §§goto(addr217);
                                                                                                                                          }
                                                                                                                                          §§goto(addr46);
                                                                                                                                       }
                                                                                                                                       §§goto(addr21);
                                                                                                                                    }
                                                                                                                                    §§goto(addr45);
                                                                                                                                 }
                                                                                                                                 §§goto(addr293);
                                                                                                                              }
                                                                                                                              §§goto(addr77);
                                                                                                                           }
                                                                                                                           §§goto(addr66);
                                                                                                                        }
                                                                                                                        §§goto(addr28);
                                                                                                                     }
                                                                                                                     §§goto(addr64);
                                                                                                                  }
                                                                                                                  §§goto(addr283);
                                                                                                               }
                                                                                                               §§goto(addr217);
                                                                                                            }
                                                                                                            §§goto(addr179);
                                                                                                         }
                                                                                                         §§goto(addr186);
                                                                                                      }
                                                                                                      §§goto(addr167);
                                                                                                   }
                                                                                                   §§goto(addr144);
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             §§goto(addr74);
                                                                                          }
                                                                                          §§goto(addr144);
                                                                                       }
                                                                                       §§goto(addr205);
                                                                                    }
                                                                                    §§goto(addr178);
                                                                                 }
                                                                                 §§goto(addr181);
                                                                              }
                                                                              §§goto(addr124);
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr276);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      addr272:
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr276);
                                             }
                                             addr300:
                                             §§goto(addr300);
                                          }
                                          §§goto(addr362);
                                       }
                                    }
                                    §§goto(addr384);
                                    §§goto(addr392);
                                 }
                              }
                              §§goto(addr406);
                           }
                           §§goto(addr426);
                        }
                     }
                     §§goto(addr452);
                  }
               }
               §§goto(addr491);
            }
         }
         §§goto(addr510);
      }
      
      public function gameOver() : void
      {
      }
      
      public function § h§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§]!!§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr43);
                  }
               }
               return null;
            }
            §§goto(addr43);
         }
         addr43:
         return this.§]!!§.toString();
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(!this.mReadyToRun);
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(§?h§.§6t§());
                     while(true)
                     {
                        §§push(!§§pop());
                        addr65:
                        if(!(_loc5_ || param2))
                        {
                           continue;
                        }
                        addr72:
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§#g§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       §§push(Boolean(§§pop()));
                                       if(!_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(0);
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                                else
                                                {
                                                   addr123:
                                                   addr121:
                                                }
                                                §§pop();
                                                §§push(this.§#g§);
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop().§%!'§);
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue loop6;
                                                continue;
                                                return §§pop();
                                             }
                                             §§goto(addr65);
                                          }
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr72);
                                 }
                                 addr81:
                                 if(_loc5_ || param2)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr123);
                              }
                              addr124:
                           }
                           §§goto(addr81);
                           §§push(this.§8=§(param1,param2,param3));
                        }
                        §§push(this.§`&§(param1,true,param2,param3));
                        if(_loc5_)
                        {
                           return §§pop();
                        }
                        §§goto(addr81);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr121);
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      protected function §`&§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.§7-§)
            {
               if(!_loc7_)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc6_)
                     {
                        addr30:
                        §§push(Number(§§pop()));
                        if(!(_loc7_ && param2))
                        {
                           param1 = §§pop();
                           if(!(_loc7_ && param1))
                           {
                              addr46:
                              §§push(§?h§.§;B§);
                              if(_loc6_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    addr62:
                                    if(!_loc7_)
                                    {
                                       addr58:
                                       §§push(§?h§.§;B§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(!_loc7_)
                                    {
                                       §§push(this);
                                       §§push(this.§6&§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§6&§ = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          §§push(param3);
                                          loop1:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§push(this);
                                                §§push(this.§#!H§);
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§#!H§ = §§pop();
                                                §§push(this.§[f§.§!5§(this.§#!H§));
                                                do
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop3:
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      this.§2"§.update(param1,param4);
                                                      loop4:
                                                      while(true)
                                                      {
                                                         this.§#!H§ = _loc5_;
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            if(_loc6_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  this.§'!G§(param1,_loc5_);
                                                                  if(_loc7_ && param2)
                                                                  {
                                                                     loop6:
                                                                     while(_loc7_ && this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§#!H§ = 0;
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            continue loop1;
                                                            addr134:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(_loc6_ || param2)
                                                            {
                                                               break loop3;
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(!(_loc6_ || param3));
                                                
                                                return §§pop();
                                             }
                                             this.§3U§.§&o§(param1);
                                             §§goto(addr142);
                                          }
                                       }
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr62);
                              }
                              §§pop().speed = 0.2;
                           }
                           §§goto(addr62);
                        }
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr30);
               }
               §§goto(addr46);
            }
            §§goto(addr62);
         }
         §§goto(addr58);
      }
      
      private function §8=§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§0q§.§7<§);
         if(!_loc6_)
         {
            §§push(§§pop() * 1000);
            if(!_loc6_)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc7_)
            {
               if(this.§#g§)
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     loop1:
                     while(true)
                     {
                        §§push(this.§#g§.speed);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop3:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop4:
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr243:
                                 while(true)
                                 {
                                    §§push(this.§6&§);
                                    if(!_loc6_)
                                    {
                                       §§push(param1);
                                       if(_loc6_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_ || param2)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    if(!(_loc6_ && param2))
                                    {
                                       if(!(_loc6_ && param3))
                                       {
                                          _loc5_ = §§pop();
                                          if(!(_loc6_ && this))
                                          {
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 addr232:
                                 while(true)
                                 {
                                    §§push(this.§6&§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + _loc4_);
                                    }
                                    if(§§pop() >= _loc5_)
                                    {
                                       §§push(_loc5_);
                                       while(true)
                                       {
                                          §§push(this.§ !F§);
                                          if(_loc7_ || this)
                                          {
                                             if(§§pop() > §§pop() + _loc4_)
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(this.§#g§);
                                                   if(!(_loc7_ || this))
                                                   {
                                                      addr171:
                                                      §§pop().step(this);
                                                      §§push(this);
                                                      §§push(this.§ !F§);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + _loc4_);
                                                      }
                                                      §§pop().§ !F§ = §§pop();
                                                      break;
                                                   }
                                                   §§pop().step(this);
                                                }
                                                §§push(this);
                                                §§push(this.§ !F§);
                                                if(_loc7_ || param2)
                                                {
                                                   §§push(§§pop() + _loc4_);
                                                }
                                                §§pop().§ !F§ = §§pop();
                                             }
                                             continue;
                                          }
                                          addr165:
                                          if(§§pop() + §§pop() <= this.§ !F§)
                                          {
                                             break;
                                          }
                                          §§push(this.§#g§);
                                          §§goto(addr171);
                                       }
                                       continue;
                                    }
                                    §§push(this.§6&§);
                                    §§push(_loc4_);
                                    §§goto(addr165);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  §§push(this.§`&§(_loc4_,true,param2,param3));
                  if(_loc7_ || param3)
                  {
                     return §§pop();
                  }
               }
               return §§pop();
            }
            §§goto(addr243);
         }
         §§goto(addr27);
      }
      
      private function §'!G§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(!(_loc5_ && _loc3_))
         {
            this.§"!@§.update(param1);
            this.§3U§.§%1§(param1,param2);
            loop0:
            while(true)
            {
               this.§=!B§();
               §§push(this.§?U§);
               §§push(§`5§.§62§);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(this.§2!8§);
                     if(_loc6_ || _loc3_)
                     {
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ || param1))
                              {
                                 continue loop0;
                              }
                              if(!_loc6_)
                              {
                                 addr220:
                                 §§push(this);
                                 §§push(this.§?U§);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().§?U§ = §§pop();
                                 continue loop0;
                              }
                              addr122:
                              §§push(this.§2!8§);
                              if(_loc6_ || param2)
                              {
                                 §§pop().visible = false;
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§33§);
                                    if(_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§push(this.§33§);
                                             addr69:
                                             while(true)
                                             {
                                                if(!§§pop().§-0§(this.§>!1§,param1))
                                                {
                                                   addr74:
                                                   if(!(_loc5_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         this.§1r§();
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr85:
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  this.§>!1§.§,e§(param1);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        this.§[f§.§3a§();
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              break loop6;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr85);
                                                               }
                                                               this.§@<§.update(param1);
                                                               return;
                                                               addr53:
                                                            }
                                                            addr86:
                                                            loop4:
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                               addr140:
                                                               while(true)
                                                               {
                                                                  continue loop4;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr81:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§2!8§);
                                                         addr138:
                                                         while(true)
                                                         {
                                                            §§pop().alpha = _loc4_;
                                                         }
                                                         §§goto(addr74);
                                                      }
                                                      addr136:
                                                   }
                                                   §§goto(addr140);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr53);
                                    }
                                    §§goto(addr69);
                                 }
                                 addr61:
                              }
                              else
                              {
                                 addr135:
                                 if(§§pop())
                                 {
                                    §§goto(addr136);
                                 }
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr61);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr220);
                  addr157:
                  if(_loc5_ && _loc3_)
                  {
                     continue;
                  }
                  addr185:
                  §§push(§§pop() + §§pop());
                  if(_loc6_ || param1)
                  {
                     §§push(§`5§.§-l§);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() / _loc3_);
                        break;
                     }
                     break;
                  }
                  _loc4_ = §§pop();
                  §§goto(addr135);
                  §§push(this.§2!8§);
               }
               addr183:
               §§goto(addr185);
            }
         }
         §§goto(addr81);
      }
      
      public function §@p§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                        §§pop().§&o§(§§pop());
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
               if(!_loc3_)
               {
                  if(_loc2_ || param1)
                  {
                     §§push(1000);
                     if(!(_loc3_ && this))
                     {
                        addr78:
                        §§push(§§pop() * §§pop());
                        if(_loc2_ || this)
                        {
                           §§pop().§+!H§(§§pop());
                           while(!_loc3_)
                           {
                              this.§=`§();
                              if(!(_loc3_ && this))
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr93);
                     }
                     §§goto(addr94);
                  }
                  else
                  {
                     §§goto(addr92);
                  }
               }
               §§goto(addr78);
            }
            else
            {
               §§goto(addr91);
            }
         }
      }
      
      public function §=!B§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+>§ = null;
         if(!_loc5_)
         {
            §§push(this.§6&§);
            §§push(this.§7!§);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc4_)
               {
                  if(this.§"!8§ != null)
                  {
                     var _loc3_:* = this.§"!8§;
                     §§goto(addr53);
                  }
                  this.§7!§ = this.§6&§;
               }
            }
            §§goto(addr53);
         }
         addr53:
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc1_.addTrail();
            }
         }
         if(!_loc4_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+>§ = null;
         §§push(this);
         §§push(this.mPigsAnimationTimer1);
         if(_loc4_ || param1)
         {
            §§push(§§pop() - param1);
         }
         §§pop().mPigsAnimationTimer1 = §§pop();
         §§push(this.mPigsAnimationTimer1);
         if(!_loc3_)
         {
            §§push(0);
            if(_loc4_)
            {
               if(§§pop() <= §§pop())
               {
                  §§push(this.§3U§);
                  if(_loc4_)
                  {
                     §§push(true);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop().isPigsAlive(§§pop()));
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              §§push(this.§3U§);
                              if(_loc4_ || param1)
                              {
                                 §§push(true);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop().§ '§(§§pop()));
                                    if(_loc4_ || this)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc4_)
                                       {
                                          _loc2_.§<p§.mTryToScream = §`-§.§`w§;
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(this);
                                             §§push(500 + Math.random() * 1000);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(§§pop() + 4000 / (3 + this.§3U§.§@P§()));
                                             }
                                             §§pop().mPigsAnimationTimer1 = §§pop();
                                             addr126:
                                             §§push(this);
                                             §§push(this.mPigsAnimationTimer2);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() - param1);
                                             }
                                             §§pop().mPigsAnimationTimer2 = §§pop();
                                             if(!(_loc3_ && this))
                                             {
                                                §§goto(addr144);
                                             }
                                             §§goto(addr159);
                                          }
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr157);
                     }
                  }
                  §§goto(addr163);
               }
               §§goto(addr126);
            }
            §§goto(addr144);
         }
         addr144:
         if(this.mPigsAnimationTimer2 <= 0)
         {
            §§push(this.§3U§);
            if(_loc4_)
            {
               §§push(true);
               if(!(_loc3_ && _loc3_))
               {
                  addr157:
                  if(§§pop().isPigsAlive(§§pop()))
                  {
                     addr163:
                     _loc2_ = this.§3U§.§ '§(true);
                     addr162:
                     addr161:
                     addr159:
                     if(_loc4_ || param1)
                     {
                        _loc2_.§<p§.mTryToBlink = §`-§.§&H§;
                        if(_loc3_)
                        {
                        }
                        §§goto(addr212);
                     }
                     §§push(this);
                     §§push(250 + Math.random() * 500);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() + 2000 / (3 + this.§3U§.§@P§()));
                     }
                     §§pop().mPigsAnimationTimer2 = §§pop();
                  }
               }
               §§goto(addr162);
            }
            §§goto(addr161);
         }
         addr212:
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
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
                     §§push(§'b§.§'e§);
                     addr146:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        addr147:
                        while(true)
                        {
                           param6 = §§pop();
                           addr148:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr144:
               }
               while(true)
               {
                  §^;§.addScore(param1,param2);
                  while(true)
                  {
                     this.§,Z§.addScore(param1);
                     while(true)
                     {
                        §§push(Boolean(param3));
                        §§push(Boolean(param3));
                        loop5:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           loop6:
                           while(true)
                           {
                              §§pop();
                              addr124:
                              while(_loc8_)
                              {
                                 §§push(param1);
                                 if(!(_loc7_ && param3))
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(0);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(_loc8_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr148);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      public function §-!=§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
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
                  if(_loc8_ || param2)
                  {
                     addr80:
                     §§push(§'b§.§%0§);
                     if(!(_loc9_ && param3))
                     {
                        addr90:
                        param5 = §§pop();
                     }
                     §§goto(addr90);
                  }
                  while(true)
                  {
                     §§goto(addr23);
                  }
               }
               addr23:
               while(true)
               {
                  this.§@<§.§-X§(§'b§.§]!F§,§>=§.§0,§,§'b§.§-N§,param2,param3,param4,param1,param5,param6,param7);
                  if(!(_loc9_ && param2))
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr80);
      }
      
      public function §2A§(param1:§+>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§"!8§);
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§"!8§ = new Array();
                     addr74:
                     while(true)
                     {
                     }
                  }
                  addr70:
               }
               while(true)
               {
                  §§push(this.§"!8§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(!(_loc2_ && this))
                  {
                     if(!_loc2_)
                     {
                        return;
                        addr65:
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §4x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§2"§.§4x§();
            while(true)
            {
               this.§3U§.§5e§();
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            this.§5I§ = true;
            if(_loc2_ || _loc1_)
            {
               if(!(_loc1_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §%!-§(param1:§+>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@<§.§5!5§(§>=§.§8o§);
            while(true)
            {
               §§push(this.§"!8§);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     while(true)
                     {
                        §§push(this.§"!8§);
                        addr84:
                        while(true)
                        {
                           §§pop().splice(this.§"!8§.indexOf(param1),1);
                           addr90:
                           while(true)
                           {
                           }
                        }
                     }
                     addr82:
                  }
                  while(true)
                  {
                     §§push(this.§"!8§);
                     if(_loc2_ || _loc2_)
                     {
                        continue loop1;
                     }
                     §§goto(addr84);
                  }
                  addr19:
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §,0§(param1:§,1§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            this.§&!5§ = this.§3U§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!_loc8_)
            {
               addr42:
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr47:
                  §§push(§9"§.§?,§);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || param3)
                     {
                        addr72:
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     addr64:
                     §§push(Number(§§pop()));
                     if(_loc7_ || this)
                     {
                        §§goto(addr72);
                     }
                  }
                  var _loc4_:* = §§pop();
                  if(!_loc8_)
                  {
                     §§push(param1.§9[§);
                     if(!_loc8_)
                     {
                        §§push(1);
                        loop0:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this.§&!5§);
                                 loop2:
                                 while(true)
                                 {
                                    §§pop().§ !9§(param1.§9[§);
                                    loop3:
                                    while(true)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§&!5§);
                                          if(_loc8_ && this)
                                          {
                                             break;
                                          }
                                          §§pop().§<p§.§?! §();
                                          while(true)
                                          {
                                             addr109:
                                             if(!(_loc7_ || param2))
                                             {
                                                continue;
                                             }
                                             if(_loc8_)
                                             {
                                                continue loop3;
                                             }
                                             if(_loc8_)
                                             {
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                if(false)
                                                {
                                                   continue loop4;
                                                }
                                                addr158:
                                                §§push(-_loc4_);
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr166:
                                                   §§push(§§pop() * param2);
                                                }
                                                §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                                if(!_loc8_)
                                                {
                                                   addr179:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc5_:* = §§pop();
                                                §§push(_loc4_);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() * param2);
                                                   if(!_loc8_)
                                                   {
                                                      addr188:
                                                      §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   if(_loc7_ || param2)
                                                   {
                                                      this.§&!5§.§5x§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         this.camera.§^O§(§2!1§.§-9§);
                                                         while(true)
                                                         {
                                                            §§push(this.§]!!§);
                                                            if(_loc7_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc8_ && param3))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr245:
                                                                           §§push(this.§]!!§);
                                                                           break;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  addr257:
                                                               }
                                                               return;
                                                            }
                                                            break;
                                                         }
                                                         §§pop().§,0§(this.§[f§.§-p§,param1.x,param1.y,param2,param3);
                                                         §§goto(addr257);
                                                      }
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr188);
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(param1.§2@§);
                              if(_loc8_ && param1)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr179);
                        }
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr120);
               }
               else
               {
                  §§push(§9"§.§<x§);
                  if(_loc7_)
                  {
                     §§goto(addr64);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr47);
         }
         §§goto(addr42);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`!C§ = true;
         }
      }
      
      private function §=`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§`!C§);
            loop0:
            while(§§pop())
            {
               this.§`!C§ = false;
               loop1:
               while(true)
               {
                  §§push(this.activeObject);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() is §4!;§);
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
                                 §§push(this.activeObject);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    §§push((§§pop() as §4!;§).§;$§);
                                    if(_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(!§§pop());
                                       if(_loc1_ || this)
                                       {
                                          while(true)
                                          {
                                             addr100:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   this.§3U§.§]N§();
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(this.§]!!§);
                                                      if(!_loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            addr101:
                                                            addr101:
                                                            while(true)
                                                            {
                                                               §§push(this.activeObject);
                                                               addr103:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().activateSpecialPower(this.§!-§));
                                                                  addr106:
                                                                  addr50:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc1_ || this))
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              this.§^t§ = true;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr50:
                                                                  §§pop().§7'§(this.§[f§.§-p§);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr50);
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr101);
                                             }
                                          }
                                          addr99:
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr100);
                                 }
                                 §§goto(addr103);
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr99);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      public function §=!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3U§.§=!G§();
         }
      }
      
      public function §'=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§3U§.§+1§();
         }
      }
      
      public function §%n§() : §8+§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8+§ = new §8+§();
         _loc1_.§1U§ = this.§'f§.§1U§;
         _loc1_.§#o§ = this.§'f§.§#o§;
         loop0:
         while(true)
         {
            this.§>!1§.§5!3§(_loc1_);
            this.§3U§.§?n§(_loc1_);
            do
            {
               this.§2"§.§9C§(_loc1_);
               continue loop0;
            }
            while(_loc2_);
            
            return _loc1_;
         }
      }
      
      public function §3?§() : int
      {
         return this.§'f§.§#o§;
      }
      
      public function §@'§() : int
      {
         return this.§'f§.§1U§;
      }
      
      public function §=Q§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§'f§.§#o§ = param1;
         }
      }
      
      public function §`4§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§'f§.§1U§ = param1;
         }
      }
      
      public function §&2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§ use§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§ use§);
                     addr87:
                     while(true)
                     {
                        §§pop().§ in§(param1,param2);
                        addr90:
                        while(true)
                        {
                        }
                     }
                     addr67:
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr24);
                  }
               }
               loop1:
               while(true)
               {
                  §§push(this.§>!1§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              §§push(this.§>!1§);
                              addr48:
                              while(true)
                              {
                                 §§pop().§,e§(0);
                              }
                           }
                           addr46:
                        }
                        while(true)
                        {
                           if(_loc4_ && param1)
                           {
                              continue loop1;
                           }
                           §§goto(addr67);
                        }
                     }
                     break;
                  }
                  §§goto(addr48);
               }
               addr24:
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr46);
      }
      
      public function get §6!7§() : §8+§
      {
         return this.§'f§;
      }
      
      public function get §!-§() : §?!!§
      {
         return this.§3U§;
      }
      
      protected function get starling() : §?h§
      {
         return this.§@x§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §<!-§;
      }
   }
}
