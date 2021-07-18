package §@V§
{
   import §!!!§.§6!l§;
   import §!!R§.§4#§;
   import §!""§.§1=§;
   import §#!I§.§0k§;
   import §#!`§.§1V§;
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §%!B§.§9"2§;
   import §%8§.§4O§;
   import §%U§.§;"!§;
   import §'!_§.b2Settings;
   import §,![§.§7l§;
   import §0!m§.§@!S§;
   import §0N§.§,!A§;
   import §24§.;
   import §2`§.§%!!§;
   import §2`§.§+$§;
   import §2`§.§;!#§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §4!i§.§0]§;
   import §4!i§.§@t§;
   import §8! §.§+C§;
   import §8! §.§9q§;
   import §>z§.§+E§;
   import §>z§.§5!d§;
   import §@!"§.§#!v§;
   import §@!"§.§7k§;
   import §@!"§.§<!l§;
   import §@!"§.§@_§;
   import §@!"§.§^"2§;
   import §@!E§.b2Vec2;
   import §`2§.§"w§;
   import §`2§.§`""§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#=§
   {
      
      private static const §]<§:int = 20;
      
      public static const §5B§:Number;
      
      public static const §1!J§:Number;
      
      public static const §^!2§:Number = 0.05;
      
      public static const §;t§:Number;
      
      public static const §?s§:Number;
      
      public static const §="1§:§@t§;
      
      protected static var §="!§:String;
      
      protected static var §1G§:Number = 1.0;
      
      protected static var §`I§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]<§ = 20;
            loop0:
            while(true)
            {
               §5B§ = §@!S§.§3z§;
               while(true)
               {
                  §1!J§ = §@!S§.§`!,§;
                  loop2:
                  for(; !_loc1_; while(_loc2_ || _loc2_)
                  {
                     §§push(§§findproperty(§?s§));
                     §§push(§5B§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() * §^!2§);
                     }
                     §§pop().§?s§ = §§pop();
                     §§goto(addr85);
                  })
                  {
                     §^!2§ = 1 / 20;
                     while(true)
                     {
                        §;t§ = §@!S§.§`!,§ * §^!2§;
                        continue loop2;
                        addr54:
                        if(_loc2_ || _loc1_)
                        {
                           §1G§ = 1;
                           loop7:
                           while(true)
                           {
                              §`I§ = §5L§.§<!U§;
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 addr47:
                                 addr85:
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    §§goto(addr54);
                                    continue loop7;
                                 }
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    continue loop0;
                                    §§goto(addr47);
                                 }
                                 addr47:
                                 continue loop2;
                              }
                           }
                           return;
                           addr38:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      protected var §"H§:§<!l§;
      
      private var §4!3§:Array = null;
      
      protected var §>Y§:§7l§;
      
      public var §>!&§:§<o§;
      
      protected var §implements§:§9h§;
      
      protected var §"`§:§0k§;
      
      protected var §`!L§:§0"§;
      
      protected var §!?§:§"w§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §3"-§:Boolean = false;
      
      protected var §^!f§:Boolean = false;
      
      protected var §-T§:Boolean = false;
      
      public var §?!'§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §#[§:Number;
      
      public var §'!n§:Number;
      
      private var §0$§:§ !]§;
      
      private var §?'§:Sprite;
      
      protected var §?n§:§5L§;
      
      protected var §-!"§:§1V§ = null;
      
      private var §=%§:EventDispatcher;
      
      private var §0X§:Array;
      
      private var §3#§:§6!l§;
      
      private var §6!9§:§+C§;
      
      protected var §,%§:§%!!§;
      
      protected var §'!'§:§+$§;
      
      private var §<!L§:§;!#§;
      
      private var §[8§:§;!#§;
      
      private var §=""§:§;!#§;
      
      private var §<!s§:Stage;
      
      private var §%D§:§<!I§;
      
      protected var §9>§:§;"!§;
      
      protected var § "!§:§;"!§;
      
      protected var § @§:Number = 0.0;
      
      protected var §5!&§:String;
      
      private var §-!Z§:Boolean;
      
      private var §=b§:Number;
      
      private var §!Q§:Number;
      
      protected var §[i§:§9!b§;
      
      protected var §@!]§:§4O§;
      
      protected var §2!v§:§5!d§;
      
      protected var §4a§:§0![§;
      
      protected var §9[§:uint = 1.417339207E9;
      
      public var §`f§:Boolean;
      
      private var §2!3§:Boolean = true;
      
      protected var §9"+§:int = 0;
      
      protected var §=Z§:int = 0;
      
      protected var § !e§:Number = 1.0;
      
      protected var §4J§:Number = 1.0;
      
      protected var §@!o§:Boolean;
      
      private var §87§:§0]§;
      
      public function §#=§(param1:Stage, param2:§4O§, param3:§5!d§, param4:§0![§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§0X§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§=%§ = new EventDispatcher();
                  loop2:
                  while(true)
                  {
                     this.§<!s§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§@!]§ = param2;
                        while(true)
                        {
                           this.§2!v§ = param3;
                           loop5:
                           for(; _loc7_ || param3; if(!(_loc7_ || param2))
                           {
                              continue;
                           },this.§87§ = new §0]§(),if(!(_loc6_ && param2))
                           {
                              if(_loc7_)
                              {
                                 §§goto(addr34);
                              }
                              §§goto(addr98);
                           },§§goto(addr41))
                           {
                              if(_loc6_)
                              {
                                 continue loop1;
                              }
                              this.§4a§ = param4;
                              while(true)
                              {
                                 this.§,%§ = §%!!§.§,2§;
                                 loop7:
                                 while(!_loc6_)
                                 {
                                    this.§'!'§ = this.initAnimationManager(this.§,%§);
                                    while(!_loc6_)
                                    {
                                       this.§<!L§ = this.§ !x§();
                                       while(!_loc6_)
                                       {
                                          this.§[8§ = this.initThemeSoundsManager();
                                          loop10:
                                          while(!(_loc6_ && param2))
                                          {
                                             while(true)
                                             {
                                                do
                                                {
                                                   this.§=""§ = this.initCutSceneManager();
                                                   while(_loc7_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§goto(addr83);
                                                      }
                                                      §§goto(addr73);
                                                   }
                                                   continue loop10;
                                                }
                                                while(false);
                                                
                                                var _loc5_:Stage3D = param1.stage3Ds[0];
                                                if(_loc7_)
                                                {
                                                   this.§3#§ = new §6!l§(§ !]§,param1,new Rectangle(0,0,§@!S§.§3z§,§@!S§.§`!,§),_loc5_);
                                                   while(true)
                                                   {
                                                      §@!S§.§[!%§.addEventListener(§1=§.§]!l§,this.§3#§.onEnterFrame);
                                                   }
                                                   addr269:
                                                }
                                                while(true)
                                                {
                                                   _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§'"1§,false,0,true);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(this.§3#§);
                                                      addr213:
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         addr214:
                                                         while(true)
                                                         {
                                                            §§pop().§><§ = §§pop();
                                                            continue loop16;
                                                         }
                                                      }
                                                   }
                                                   while(_loc7_ || param2)
                                                   {
                                                      §§goto(addr199);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function § !§(param1:§#!v§, param2:§#!v§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§-"-§);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.§-"-§);
            if(!_loc5_)
            {
               addr26:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§;!1§);
            if(_loc6_ || param2)
            {
               §§push(§§pop() - param2.§;!1§);
               if(_loc6_ || param1)
               {
                  addr67:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               return §1!U§(_loc3_,_loc4_);
            }
            §§goto(addr67);
         }
         §§goto(addr26);
      }
      
      public static function §1!U§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§?'§);
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
                        addr93:
                        while(true)
                        {
                           §§push(Boolean(this.§<G§));
                           if(!(_loc1_ || this))
                           {
                              break;
                           }
                           if(_loc2_ && this)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc1_)
                     {
                        while(true)
                        {
                           this.§?'§ = this.§0$§.§,0§;
                        }
                        addr64:
                     }
                     while(true)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           break loop4;
                        }
                        §§goto(addr93);
                     }
                  }
                  while(true)
                  {
                     §§push(this.§?'§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get §<G§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§0$§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§0$§);
                     if(!(_loc2_ && this))
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
            this.§0$§ = this.§3#§.§8U§ as § !]§;
            §§goto(addr84);
         }
      }
      
      private function get §&!S§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§<G§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr52);
                  }
               }
               return null;
            }
            §§goto(addr52);
         }
         addr52:
         return (this.§<G§ as § !]§).§&!S§;
      }
      
      public function get §13§() : §+$§
      {
         return this.§'!'§;
      }
      
      public function get §]!z§() : §%!!§
      {
         return this.§,%§;
      }
      
      public function get camera() : §0k§
      {
         return this.§"`§;
      }
      
      public function get objects() : §<!l§
      {
         return this.§"H§;
      }
      
      public function get particles() : §"w§
      {
         return this.§!?§;
      }
      
      public function get background() : §7l§
      {
         return this.§>Y§;
      }
      
      public function get slingshot() : §0"§
      {
         return this.§`!L§;
      }
      
      public function get §];§() : §9h§
      {
         return this.§implements§;
      }
      
      public function get stage() : Stage
      {
         return this.§<!s§;
      }
      
      public function get levelItemManager() : §4O§
      {
         return this.§@!]§;
      }
      
      public function get §6!q§() : §;!#§
      {
         return this.§=""§;
      }
      
      protected function get §`!7§() : §;!#§
      {
         return this.§<!L§;
      }
      
      public function §`&§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§[i§ = new §9!b§(param1,param2,param3,param4);
         }
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §#=§.§="1§.getValue();
      }
      
      public function get §4!Q§() : Boolean
      {
         return this.§2!3§;
      }
      
      public function set §4!Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2!3§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6!9§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr226:
                     this.§6!9§.dispose();
                  }
                  while(true)
                  {
                  }
                  addr227:
               }
               loop1:
               while(true)
               {
                  §§push(this.§,%§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§,%§);
                           addr196:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.INIT,this.§<!6§);
                              addr201:
                              loop24:
                              while(true)
                              {
                                 §§push(this.§,%§);
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 §§pop().dispose();
                                 loop25:
                                 while(true)
                                 {
                                    addr164:
                                    while(true)
                                    {
                                       §§push(this.§<!L§);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc2_)
                                          {
                                             §§push(§§pop());
                                             loop5:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      while(_loc2_)
                                                      {
                                                         addr175:
                                                         §§push(this.§<!L§);
                                                         if(!(_loc1_ && this))
                                                         {
                                                            §§push(Boolean(§§pop().§]!z§));
                                                            continue loop20;
                                                         }
                                                         loop8:
                                                         for(; _loc2_; §§goto(addr175))
                                                         {
                                                            §§pop().§]!z§.dispose();
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§=""§);
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr92:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     continue loop20;
                                                                     loop15:
                                                                     while(_loc2_ || this)
                                                                     {
                                                                        §§pop().§]!z§.dispose();
                                                                        loop16:
                                                                        for(; _loc2_; if(_loc2_ || _loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           addr20:
                                                                        },continue,return)
                                                                        {
                                                                           if(_loc1_ && this)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§push(this.§<!L§);
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue loop25;
                                                                              }
                                                                              continue loop25;
                                                                              addr148:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§3#§);
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§goto(addr20);
                                                                                 }
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                    continue loop8;
                                                                                    addr65:
                                                                                 }
                                                                                 §§push(this.§3#§);
                                                                              }
                                                                              §§pop().dispose();
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc2_ || _loc2_))
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           §§push(this.§=""§);
                                                                           if(_loc1_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           §§push(Boolean(§§pop().§]!z§));
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr24);
                                                                                    }
                                                                                    §§goto(addr65);
                                                                                 }
                                                                                 addr63:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr92);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop14;
                                                                              }
                                                                              addr118:
                                                                           }
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop24;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr172:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr148);
                                                   }
                                                   §§goto(addr88);
                                                }
                                             }
                                          }
                                          §§goto(addr172);
                                       }
                                       continue loop25;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr196);
               }
            }
            §§goto(addr226);
         }
         §§goto(addr201);
      }
      
      protected function § !x§() : §;!#§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§;!#§));
         if(!_loc1_)
         {
            §§push(this.§<!s§.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr82);
                  }
                  §§push(this.§<!s§.loaderInfo.parameters.buildNumber);
                  if(_loc2_ || _loc1_)
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
            if(!(_loc1_ && _loc2_))
            {
               §§pop();
               addr55:
               §§push("");
            }
            return new §§pop().§;!#§(§§pop(),"",this.§4a§);
         }
         §§goto(addr55);
      }
      
      protected function initThemeSoundsManager() : §;!#§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§;!#§));
         if(!_loc1_)
         {
            §§push(this.§<!s§.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr54:
                        §§pop();
                        addr56:
                        §§push("");
                        §§push(this.§<!s§.loaderInfo.parameters.buildNumber);
                        if(_loc2_)
                        {
                           return new §§pop().§;!#§(§§pop(),§§pop() || "",this.§4a§,false);
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr56);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr54);
      }
      
      protected function initCutSceneManager() : §;!#§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§;!#§));
         if(!(_loc1_ && this))
         {
            §§push(this.§<!s§.loaderInfo.parameters.assetsUrl);
            if(!(_loc1_ && this))
            {
               §§push(§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr92);
                  }
                  §§push(this.§<!s§.loaderInfo.parameters.buildNumber);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr89);
                  }
                  §§goto(addr91);
               }
               addr89:
               if(!§§pop())
               {
                  addr91:
                  §§pop();
               }
               §§goto(addr92);
            }
            addr92:
            if(_loc2_ || this)
            {
               §§pop();
               addr65:
               §§push("");
            }
            return new §§pop().§;!#§(§§pop(),"",this.§4a§);
         }
         §§goto(addr65);
      }
      
      protected function initAnimationManager(param1:§%!!§) : §+$§
      {
         return new §+$§(param1);
      }
      
      public function §`!V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(§6!l§.§+J§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  for(; !param1; if(_loc3_ && param1)
                  {
                     continue;
                  },§§goto(addr82))
                  {
                     §§push(§6!l§.§+J§);
                     loop1:
                     while(_loc2_ || _loc2_)
                     {
                        §§pop().stop();
                        while(_loc2_ || _loc2_)
                        {
                           continue loop0;
                           §§pop().color = 0;
                           if(!(_loc3_ && param1))
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr24);
                              }
                              break loop0;
                           }
                        }
                        while(true)
                        {
                           §§push(§6!l§.§+J§);
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           §§goto(addr33);
                        }
                     }
                     §§pop().start();
                     §§goto(addr103);
                  }
                  §§goto(addr102);
                  §§push(§6!l§.§+J§);
               }
               addr24:
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr82);
      }
      
      public function §+"2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.sprite);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
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
      
      public function setController(param1:§1V§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§-!"§);
            if(!_loc3_)
            {
               if(§§pop() != null)
               {
                  addr77:
                  while(true)
                  {
                     §§push(this.§-!"§);
                     addr79:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr80:
                        while(true)
                        {
                        }
                     }
                  }
                  addr77:
               }
               loop0:
               while(true)
               {
                  this.§-!"§ = param1;
                  while(true)
                  {
                     if(!(_loc3_ && this))
                     {
                        if(this.mReadyToRun)
                        {
                           if(_loc2_)
                           {
                              §§push(this.§-!"§);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§pop().addEventListeners();
                           }
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                        return;
                     }
                     §§goto(addr77);
                  }
               }
            }
            §§goto(addr79);
         }
         §§goto(addr77);
      }
      
      public function §2C§() : §;"!§
      {
         return this.§9>§;
      }
      
      protected function §7!y§(param1:§9q§) : int
      {
         return 0;
      }
      
      public function §>!J§(param1:§+C§, param2:Function) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§9q§ = null;
         var _loc6_:* = 0;
         if(!_loc7_)
         {
            this.§6!9§ = param1;
         }
         §§push(this.§6!9§.§8!h§);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§6!9§.§!!-§(_loc4_);
            if(!(_loc7_ && _loc3_))
            {
               §§push(this.§7!y§(_loc5_));
               if(_loc8_)
               {
                  §§push(int(§§pop()));
               }
               _loc6_ = §§pop();
               loop1:
               while(true)
               {
                  addr58:
                  while(true)
                  {
                     this.§,%§.§^!0§(_loc5_,_loc6_);
                     continue loop1;
                  }
               }
            }
            while(false)
            {
               §§goto(addr58);
            }
         }
         if(!_loc7_)
         {
            if(param2 != null)
            {
               if(!(_loc7_ && this))
               {
                  this.§=%§.addEventListener(Event.INIT,param2);
                  if(_loc8_)
                  {
                     this.§0X§.push(param2);
                     addr143:
                     while(true)
                     {
                     }
                     addr143:
                  }
               }
               §§goto(addr143);
            }
            while(this.§,!e§())
            {
               if(!_loc7_)
               {
                  if(_loc7_)
                  {
                     continue;
                  }
                  this.§2!U§();
               }
               break;
            }
            return;
         }
         §§goto(addr143);
      }
      
      private function §,!e§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§,%§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.INIT,this.§<!6§);
               loop1:
               while(true)
               {
                  §§push(this.§,%§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§,!X§());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§,%§);
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              §§pop().addEventListener(Event.INIT,this.§<!6§);
                              while(true)
                              {
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    if(_loc2_ && this)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 if(_loc1_ || this)
                                 {
                                    continue;
                                 }
                                 addr99:
                                 while(true)
                                 {
                                    §§push(true);
                                    addr79:
                                    while(true)
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§@!o§ = false;
                                 §§goto(addr99);
                              }
                           }
                           continue loop2;
                        }
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         while(true)
         {
            this.initializeAnimations();
            §§goto(addr119);
         }
      }
      
      private function §<!6§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,%§.removeEventListener(Event.INIT,this.§<!6§);
            while(true)
            {
               this.initializeAnimations();
               while(true)
               {
                  this.§@!o§ = false;
                  §§goto(addr58);
               }
            }
         }
         addr58:
         while(true)
         {
            this.§2!U§();
            if(!_loc2_)
            {
               if(_loc3_ || this)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr53:
      }
      
      protected function initializeAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'!'§.initializeAnimations();
         }
         do
         {
            this.§@!]§.§<]§();
         }
         while(_loc2_);
         
      }
      
      private function §'"1§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§6!l§.§<E§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§,%§.reInitializeTextures();
                     while(true)
                     {
                        §§push(this.§`!7§);
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
                                          §§push(this.§`!7§);
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(Boolean(§§pop().§]!z§));
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
                                                         §§push(this.§`!7§);
                                                         addr295:
                                                         while(!_loc2_)
                                                         {
                                                            §§pop().§]!z§.reInitializeTextures();
                                                            while(true)
                                                            {
                                                               addr65:
                                                               if(_loc3_ || param1)
                                                               {
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr20:
                                                                     return;
                                                                     addr79:
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            continue loop40;
                                                         }
                                                         continue loop3;
                                                      }
                                                      addr293:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§6!q§);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop12:
                                                         while(_loc3_ || param1)
                                                         {
                                                            §§push(§§pop());
                                                            loop13:
                                                            for(; _loc3_; §§push(§§pop()),if(!(_loc3_ || _loc2_))
                                                            {
                                                               continue;
                                                            },if(§§pop())
                                                            {
                                                               §§goto(addr185);
                                                            },§§goto(addr137))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop0;
                                                               }
                                                               loop35:
                                                               while(true)
                                                               {
                                                                  loop36:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              addr243:
                                                                              §§push(this.§6!q§);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§6!q§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop().§]!z§));
                                                                                    continue loop35;
                                                                                 }
                                                                                 continue loop37;
                                                                              }
                                                                              addr278:
                                                                           }
                                                                           while(!(_loc2_ && param1))
                                                                           {
                                                                              §§pop().§]!z§.reInitializeTextures();
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              §§goto(addr243);
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr236:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§@!o§);
                                                                        if(!(_loc2_ && _loc3_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§,!e§());
                                                                                 addr209:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          if(_loc2_ && _loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          this.§2!U§();
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr226:
                                                                                    }
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              addr207:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§-!"§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == null);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    loop31:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!(_loc3_ || _loc2_))
                                                                                          {
                                                                                             break;
                                                                                             addr195:
                                                                                          }
                                                                                          §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.mReadyToRun);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   continue loop31;
                                                                                                }
                                                                                                continue loop39;
                                                                                             }
                                                                                             continue loop31;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop4;
                                                                                    addr185:
                                                                                 }
                                                                                 §§push(!§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc2_ && param1))
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                       continue loop36;
                                                                                    }
                                                                                    §§goto(addr130);
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                             }
                                             addr291:
                                          }
                                          §§goto(addr295);
                                       }
                                    }
                                 }
                                 §§goto(addr291);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr326);
            }
         }
         §§goto(addr79);
      }
      
      private function §2!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§=%§.dispatchEvent(new Event(Event.INIT));
         }
         do
         {
            this.§#"!§();
         }
         while(!_loc1_);
         
      }
      
      private function §#"!§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§0X§)
         {
            if(_loc4_)
            {
               this.§=%§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(_loc4_)
         {
            this.§0X§ = [];
         }
      }
      
      public function init(param1:§5L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
                     addr311:
                     while(true)
                     {
                     }
                  }
                  addr309:
               }
               loop3:
               while(true)
               {
                  this.§implements§ = new §9h§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§"`§ = this.initializeLevelCamera(param1);
                     addr287:
                     addr114:
                     while(true)
                     {
                        this.§#[§ = 0;
                     }
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     if(_loc3_ || this)
                     {
                        this.initialize(param1);
                        loop23:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              loop24:
                              while(true)
                              {
                                 this.§;! §(param1.name);
                                 loop21:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr63:
                                       if(_loc2_ && _loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    loop19:
                                    while(true)
                                    {
                                       §§push(this.§-T§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_ || this)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          loop25:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                this.§'=§(param1.theme);
                                                loop20:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop23;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr114);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr203);
                                                         }
                                                      }
                                                      continue loop4;
                                                      addr112:
                                                   }
                                                   addr82:
                                                   if(_loc3_ || param1)
                                                   {
                                                      continue loop24;
                                                   }
                                                   addr265:
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            this.§^!f§ = this.§[w§(param1.theme);
                                                            while(true)
                                                            {
                                                               this.§-T§ = this.§ r§(param1.theme);
                                                               addr168:
                                                               while(true)
                                                               {
                                                                  §§push(this.§^!f§);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr159:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop19;
                                                                     }
                                                                     addr159:
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  §§goto(addr159);
                                                               }
                                                               addr43:
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  return;
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr311);
                                                         }
                                                      }
                                                      loop13:
                                                      for(; _loc3_; continue loop15)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §`I§ = param1.theme;
                                                            addr203:
                                                            while(!(_loc2_ && _loc2_))
                                                            {
                                                               this.§?n§ = param1;
                                                               continue loop15;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(param1.theme);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        §§pop().theme = §§pop() || "background_blue_grass";
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr229);
                                                               §§goto(addr203);
                                                            }
                                                            addr203:
                                                            addr241:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§'!n§ = 0;
                                                               addr275:
                                                               while(true)
                                                               {
                                                                  this.§-!Z§ = false;
                                                                  break loop21;
                                                               }
                                                            }
                                                            addr280:
                                                         }
                                                      }
                                                      addr258:
                                                      while(!_loc2_)
                                                      {
                                                         this.mPigsAnimationTimer1 = 2000;
                                                         break loop20;
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   while(true)
                                                   {
                                                      this.§3"-§ = false;
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                while(!(_loc2_ && param1))
                                                {
                                                   this.mPigsAnimationTimer2 = 1000;
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr275);
                                                addr78:
                                                addr246:
                                             }
                                             §§goto(addr112);
                                          }
                                       }
                                       §§goto(addr159);
                                    }
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    this.mReadyToRun = false;
                                    §§goto(addr265);
                                    §§goto(addr63);
                                 }
                              }
                           }
                           §§goto(addr246);
                        }
                     }
                     §§goto(addr309);
                  }
               }
            }
         }
         §§goto(addr280);
      }
      
      protected function §;! §(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§9>§ = new §;"!§(param1);
         }
      }
      
      protected function §[w§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§<!L§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr54:
                  §§push(false);
                  if(_loc3_)
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
         §§goto(addr54);
      }
      
      protected function § r§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+E§ = null;
         if(!_loc3_)
         {
            if(this.§[8§)
            {
               addr25:
               _loc2_ = this.§2!v§.§9!'§(param1);
               if(!(_loc3_ && this))
               {
                  if(_loc2_)
                  {
                     if(_loc4_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr107);
               }
               §§push(Boolean(_loc2_.§!!i§));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(!this.§[8§.§1!-§(_loc2_.§!!i§));
                           if(!(_loc3_ && this))
                           {
                              addr102:
                              if(§§pop())
                              {
                                 if(_loc4_)
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
                     return §§pop();
                  }
               }
               §§goto(addr102);
            }
            addr107:
            return true;
         }
         §§goto(addr25);
      }
      
      protected function §2!u§(param1:String) : Array
      {
         return null;
      }
      
      protected function §'=§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:§+E§ = null;
         if(!_loc4_)
         {
            §§push(this.§<!L§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_)
               {
                  §§push(§§pop());
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(this.§[w§(param1));
                              if(!_loc4_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc4_)
                                 {
                                    while(true)
                                    {
                                    }
                                    addr99:
                                 }
                                 §§goto(addr276);
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    break loop1;
                                 }
                                 if(!_loc4_)
                                 {
                                    §§push(this.§<!L§);
                                    while(true)
                                    {
                                       §§pop().removeEventListener(Event.COMPLETE,this.§!u§);
                                       continue loop1;
                                    }
                                    addr105:
                                 }
                                 else
                                 {
                                    §§goto(addr229);
                                 }
                              }
                           }
                           §§push(this.§[8§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc5_ || _loc3_)
                              {
                                 addr186:
                                 if(§§pop())
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§pop();
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(this.§ r§(param1));
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             break;
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr284);
                                    }
                                 }
                              }
                              §§goto(addr276);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr276);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr186);
               }
               break;
               while(true)
               {
                  if(!(_loc5_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§pop().addEventListener(Event.COMPLETE,this.§!u§);
                  if(!_loc4_)
                  {
                     §§push(this.§<!L§);
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr31);
                  }
                  §§goto(addr284);
               }
            }
            addr276:
            if(§§pop())
            {
               loop6:
               while(true)
               {
                  §§push(this.§[8§);
                  loop7:
                  while(true)
                  {
                     §§pop().removeEventListener(Event.COMPLETE,this.§5I§);
                     addr284:
                     loop8:
                     while(true)
                     {
                        §§push(this.§[8§);
                        addr259:
                        loop9:
                        while(true)
                        {
                           §§pop().removeEventListener(Event.CANCEL,this.§5"1§);
                           loop10:
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 §§push(this.§[8§);
                                 loop12:
                                 while(_loc5_)
                                 {
                                    §§pop().addEventListener(Event.COMPLETE,this.§5I§);
                                    while(_loc5_ || _loc2_)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(this.§[8§);
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc5_)
                                             {
                                                §§pop().addEventListener(Event.CANCEL,this.§5"1§);
                                                if(_loc4_ && this)
                                                {
                                                   continue;
                                                }
                                                if(!_loc5_)
                                                {
                                                   break loop11;
                                                }
                                                if(false)
                                                {
                                                   continue loop11;
                                                }
                                                _loc3_ = this.§2!v§.§9!'§(param1);
                                                if(_loc5_ || param1)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr317);
                                                }
                                                this.§[8§.loadContent(_loc3_.§!!i§);
                                                continue;
                                             }
                                             continue loop9;
                                          }
                                          continue loop12;
                                       }
                                       continue loop8;
                                    }
                                    continue loop10;
                                 }
                                 continue loop7;
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
               }
            }
            addr317:
            return;
            §§push(!§§pop());
         }
         §§goto(addr117);
      }
      
      private function §!u§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§<!L§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§!u§);
               loop1:
               while(true)
               {
                  §§push(this.§<!L§);
                  if(!(_loc3_ || this))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§?!6§);
                  loop2:
                  while(true)
                  {
                     this.§^!f§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§^!f§);
                        addr69:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr70:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       this.initialize(this.§?n§);
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 return;
                                 addr36:
                              }
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      private function §?!6§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§<!L§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§!u§);
               §§goto(addr81);
            }
         }
         addr81:
         while(true)
         {
            §§push(this.§<!L§);
            if(!(_loc2_ && param1))
            {
               §§pop().removeEventListener(Event.CANCEL,this.§?!6§);
               do
               {
                  this.§3"-§ = true;
               }
               while(!(_loc3_ || param1));
               
               if(!_loc2_)
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      private function §5I§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§<!L§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§5I§);
               while(true)
               {
                  §§push(this.§<!L§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§5"1§);
                  loop2:
                  while(true)
                  {
                     this.§-T§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§^!f§);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       addr25:
                                    }
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§-T§);
                                             if(!_loc3_)
                                             {
                                                continue loop8;
                                             }
                                             if(_loc3_ || _loc2_)
                                             {
                                                continue loop4;
                                             }
                                             addr89:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop6;
                                             }
                                          }
                                          §§goto(addr25);
                                       }
                                       this.initialize(this.§?n§);
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop2;
                                    return;
                                 }
                              }
                              addr49:
                           }
                           §§goto(addr89);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private function §5"1§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§<!L§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§5I§);
               while(true)
               {
                  §§push(this.§<!L§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§5"1§);
                  loop2:
                  while(true)
                  {
                     this.§-T§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§^!f§);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc2_)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    addr38:
                                    while(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          this.initialize(this.§?n§);
                                       }
                                       break;
                                    }
                                    return;
                                    addr36:
                                 }
                              }
                           }
                        }
                        addr70:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function get §<x§() : §%!!§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§`!7§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr63);
                  }
               }
               return null;
            }
            §§goto(addr63);
         }
         addr63:
         return this.§`!7§.§]!z§;
      }
      
      protected function §3!7§(param1:§5L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2Settings.b2_linearSleepTolerance = b2Settings.§8"6§;
         }
      }
      
      private function initialize(param1:§5L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§[i§ = null;
         }
         loop0:
         while(true)
         {
            this.§`f§ = false;
            loop1:
            while(true)
            {
               §§push(§6!l§.§-f§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§6!l§.§-f§);
                        addr286:
                        while(true)
                        {
                           §§pop().speed = 1;
                           addr298:
                           while(true)
                           {
                           }
                        }
                     }
                     addr284:
                  }
                  loop3:
                  while(true)
                  {
                     this.§3!7§(param1);
                     loop4:
                     while(true)
                     {
                        this.§>M§(param1);
                        loop5:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              this.§>Y§ = this.§1F§(param1.theme,0 / §^!2§,this.§<x§,this.§"`§.§8u§());
                              loop6:
                              while(true)
                              {
                                 this.§>Y§.§'"%§(§@!S§.§^"&§());
                                 loop7:
                                 while(_loc3_)
                                 {
                                    §§push(§6!l§.§+J§);
                                    if(!_loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(§6!l§.§+J§);
                                             addr231:
                                             while(true)
                                             {
                                                §§pop().color = this.§>Y§.§9!f§;
                                                addr235:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr39:
                                             if(_loc3_ || _loc2_)
                                             {
                                                return;
                                             }
                                          }
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          this.§"H§ = this.initializeLevelObjectManager(param1);
                                          loop10:
                                          while(true)
                                          {
                                             this.§"H§.§8x§ = this.§+?§(param1.name);
                                             loop11:
                                             for(; _loc3_ || param1; while(true)
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop11;
                                             },continue loop7)
                                             {
                                                this.§`!L§ = this.initializeLevelSlingshot(param1);
                                                loop12:
                                                while(!_loc2_)
                                                {
                                                   this.§!?§ = this.§3!I§(this.§'!'§,this.§,%§);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this.§"`§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§pop().init();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            this.§[!E§();
                                                            while(_loc3_)
                                                            {
                                                               this.§3`§();
                                                               loop17:
                                                               while(_loc3_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  this.mReadyToRun = true;
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§-!"§);
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(param1.name != §="!§)
                                                                           {
                                                                              §="!§ = param1.name;
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       addr95:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr108:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§>I§(0);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break loop21;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop17;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           §§goto(addr95);
                                                                        }
                                                                        addr90:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop().addEventListeners();
                                                                        }
                                                                        addr155:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr90);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    §§goto(addr231);
                                 }
                                 continue loop5;
                                 if(!(_loc3_ || this))
                                 {
                                    continue;
                                 }
                                 §§goto(addr155);
                                 §§push(this.§-!"§);
                              }
                           }
                           else
                           {
                              §§goto(addr284);
                           }
                        }
                     }
                  }
               }
               §§goto(addr286);
            }
         }
      }
      
      protected function §"!Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§"H§.§"!Y§();
         }
      }
      
      protected function §>M§(param1:§5L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!&§ = new §<o§(this);
         }
      }
      
      protected function §3`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§5!&§)
            {
               if(!_loc2_)
               {
                  this.§ "!§ = §;"!§.initialize(this.§5!&§);
               }
               loop0:
               while(true)
               {
                  §§push(this.§ "!§);
                  while(true)
                  {
                     §§pop().speed = 1;
                     §§push(this.§ "!§);
                     addr78:
                     continue loop0;
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§pop().play();
                     loop3:
                     while(true)
                     {
                        this.§ @§ = -1000;
                        loop4:
                        while(!_loc2_)
                        {
                           while(true)
                           {
                              this.§5!&§ = null;
                              if(_loc1_ || _loc1_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr51);
         }
         §§goto(addr58);
      }
      
      public function §8!3§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5!&§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§ "!§ == null);
         if(_loc2_ || _loc2_)
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
            §§push(this.§ "!§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     if(param1)
                     {
                        if(_loc2_)
                        {
                        }
                        addr20:
                        return;
                        addr98:
                     }
                     else
                     {
                        §§push(this.§ "!§);
                        if(!_loc2_)
                        {
                           §§pop().speed = Math.max(this.§ "!§.speed / 1.25,Math.pow(1 / 1.25,10));
                           if(!_loc2_)
                           {
                              §§goto(addr20);
                           }
                           else
                           {
                              §§goto(addr98);
                           }
                        }
                        else
                        {
                           §§pop().speed = Math.min(this.§ "!§.speed * 1.25,Math.pow(1.25,2));
                           addr76:
                           §§goto(addr20);
                        }
                        §§goto(addr20);
                     }
                  }
                  §§goto(addr76);
                  §§push(this.§ "!§);
               }
               §§goto(addr20);
            }
            §§goto(addr76);
         }
         §§goto(addr20);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§ "!§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr54);
            }
            §§pop().speed = 1;
         }
         addr54:
         if(_loc1_)
         {
            §§push(this.§ "!§);
         }
      }
      
      protected function initializeLevelObjectManager(param1:§5L§) : §<!l§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§+E§.§-V§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return new §<!l§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §+?§(param1:String) : §4#§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(!param1)
            {
               if(_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc2_:Class = this.§87§[param1.toLowerCase()];
         if(_loc5_ || this)
         {
            if(!_loc2_)
            {
               if(!_loc4_)
               {
                  return null;
               }
            }
         }
         return new _loc2_() as §4#§;
      }
      
      public function §4""§(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§87§[param1.toLowerCase()] = param2;
         }
      }
      
      protected function initializeLevelCamera(param1:§5L§) : §0k§
      {
         return new §0k§(this,param1);
      }
      
      protected function §1F§(param1:String, param2:Number, param3:§%!!§, param4:Number) : §7l§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§+E§;
         if((_loc5_ = this.§2!v§.§9!'§(param1)) == null)
         {
            if(_loc7_ || this)
            {
               §#7§.log("UNKNOWN LEVEL THEME! " + param1);
               if(!(_loc6_ && this))
               {
                  §§push(§5L§.§<!U§);
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
               }
            }
            _loc5_ = this.§2!v§.§9!'§(param1);
         }
         §§push(§§findproperty(§7l§));
         §§push(_loc5_);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         §§push(§6!l§.§`k§);
         if(_loc7_)
         {
            §§push(!§§pop());
         }
         return new §§pop().§7l§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
      }
      
      protected function initializeLevelSlingshot(param1:§5L§) : §0"§
      {
         return new §0"§(this,param1,new Sprite());
      }
      
      protected function §3!I§(param1:§+$§, param2:§%!!§) : §"w§
      {
         return new §"w§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.mReadyToRun)
            {
               if(!(_loc7_ && this))
               {
                  addr28:
                  this.clearLevel();
               }
            }
            var _loc3_:§5L§ = new §5L§();
            if(!_loc7_)
            {
               _loc3_.slingshotY = -12;
            }
            var _loc4_:§9"2§;
            (_loc4_ = new §9"2§()).left = 0;
            if(!(_loc7_ && param1))
            {
               §§push(_loc4_);
               §§push(§0k§.§,s§);
               if(_loc6_ || param2)
               {
                  §§push(-§§pop());
                  if(!_loc7_)
                  {
                     addr139:
                     §§push(10);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc6_ || this)
                        {
                           addr156:
                           §§push(§§pop() * 8);
                        }
                        §§pop().top = §§pop();
                        loop0:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + §0k§.§,s§);
                           }
                           §§pop().bottom = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(!(_loc7_ && param2))
                              {
                                 §§push(§§pop() + §0k§.§6!%§);
                              }
                              §§pop().right = §§pop();
                              loop2:
                              while(true)
                              {
                                 _loc4_.y = -13.929;
                                 loop3:
                                 while(true)
                                 {
                                    _loc4_.x = §0k§.§6!%§;
                                    loop4:
                                    for(; _loc6_; while(true)
                                    {
                                       _loc3_.§ !O§(_loc4_);
                                       if(_loc7_ && param1)
                                       {
                                          continue;
                                       }
                                       if(_loc7_ && _loc3_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc7_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr80);
                                    },var _loc5_:§9"2§,(_loc5_ = new §9"2§()).top = _loc4_.top,if(!_loc7_)
                                    {
                                       _loc5_.bottom = _loc4_.bottom;
                                       loop7:
                                       while(true)
                                       {
                                          _loc5_.left = 150;
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             §§push(_loc5_.left);
                                             if(!(_loc7_ && param2))
                                             {
                                                §§push(§§pop() + §0k§.§6!%§);
                                             }
                                             §§pop().right = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                §§push(_loc5_.top);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(§§pop() + §0k§.§,s§);
                                                }
                                                §§pop().bottom = §§pop();
                                                loop10:
                                                while(true)
                                                {
                                                   _loc5_.y = _loc4_.y;
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      §§push(_loc5_.left);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§0k§.§6!%§);
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§push(§§pop() / 2);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().x = §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         _loc5_.id = §0k§.§ "%§;
                                                         loop13:
                                                         while(true)
                                                         {
                                                            _loc3_.§ !O§(_loc5_);
                                                            continue loop12;
                                                            addr254:
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc7_ && _loc3_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(param1);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(null);
                                                                  addr233:
                                                                  addr184:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              _loc3_.theme = param1;
                                                                              continue loop8;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     this.init(_loc3_);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        return;
                                                                     }
                                                                     addr221:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    },§§goto(addr218))
                                    {
                                       while(true)
                                       {
                                          _loc4_.id = §0k§.§41§;
                                          continue loop4;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr156);
               }
               §§goto(addr139);
            }
            §§goto(addr85);
         }
         §§goto(addr28);
      }
      
      protected function §=" §(param1:§5L§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(param2)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr52:
                  this.§'P§(param1);
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      protected function §>!l§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9[§ ^= this.§9[§ << 21;
         }
         do
         {
            §§push(this);
            §§push(this.§9[§);
            §§push(this.§9[§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() >>> 35);
            }
            §§pop().§9[§ = §§pop() ^ §§pop();
            do
            {
               this.§9[§ ^= this.§9[§ << 4;
            }
            while(!(_loc1_ || this));
            
         }
         while(_loc2_ && _loc2_);
         
         return this.§9[§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §'P§(param1:§5L§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:§,!A§ = null;
         if(_loc8_)
         {
            §§push(this);
            §§push(0.33);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§9[§ = §§pop();
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
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(!(_loc8_ || this))
                     {
                        continue loop1;
                     }
                     _loc4_ = §§pop();
                     if(!(_loc7_ && this))
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc7_)
                           {
                              continue loop1;
                           }
                           §§push(5);
                           if(!(_loc8_ || _loc2_))
                           {
                              continue loop2;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(_loc7_ && param1)
                              {
                                 break;
                              }
                              _loc3_++;
                              if(_loc7_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§push(this.§>!l§());
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(§§pop() * 5);
                           }
                           §§push(int(§§pop()));
                           if(!_loc8_)
                           {
                              continue loop1;
                           }
                           _loc5_ = §§pop();
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(_loc6_ = new §,!A§());
                           §§push(30 + _loc4_ * 10);
                           if(_loc8_ || this)
                           {
                              §§push(this.§>!l§());
                              if(_loc8_)
                              {
                                 §§push(§§pop() * 9);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().x = §§pop();
                           if(_loc8_ || _loc2_)
                           {
                              §§push(_loc3_);
                              loop4:
                              while(true)
                              {
                                 §§push(0);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc6_);
                                       §§push(-30 + _loc3_ * 6);
                                       if(_loc8_)
                                       {
                                          §§push(this.§>!l§());
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() * 3);
                                             if(_loc8_)
                                             {
                                                addr356:
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc7_ && this))
                                                {
                                                   addr367:
                                                   §§push(§§pop() - _loc4_ * 8);
                                                }
                                                §§pop().y = §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc7_)
                                                   {
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(§§pop() + §§pop() * _loc4_);
                                                                     if(_loc8_)
                                                                     {
                                                                        addr292:
                                                                        §§push(_loc3_);
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           addr305:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(5);
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop25:
                                                                              while(_loc8_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_ && _loc3_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(3);
                                                                                          if(!(_loc8_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop25;
                                                                                          }
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                _loc6_.type = "BIRD_YELLOW";
                                                                                             }
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                loop37:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc7_ && this))
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr146:
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            _loc4_++;
                                                                                                            if(!(_loc8_ || param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr124:
                                                                                                               if(_loc7_ && param1)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr133:
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_++;
                                                                                                                        continue loop37;
                                                                                                                        §§goto(addr133);
                                                                                                                     }
                                                                                                                     addr135:
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               loop18:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_ || this)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     loop19:
                                                                                                                     while(!_loc8_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           loop24:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              loop16:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr466:
                                                                                                                                 while(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    continue loop16;
                                                                                                                                 }
                                                                                                                                 loop14:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc8_ || this)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          loop22:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             addr460:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                addr396:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop19;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr405:
                                                                                                                                                   §§push(4);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop24;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(!(_loc8_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop22;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc8_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr467);
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc8_ || _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                            continue loop14;
                                                                                                                                                         }
                                                                                                                                                         addr435:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr405);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             _loc6_.type = "PIG_HELMET";
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr370:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   §§push(45);
                                                                                                                                                   §§push(this.§>!l§());
                                                                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * 90);
                                                                                                                                                   }
                                                                                                                                                   §§pop().angle = §§pop() - §§pop();
                                                                                                                                                   break loop37;
                                                                                                                                                }
                                                                                                                                                §§goto(addr146);
                                                                                                                                             }
                                                                                                                                             addr393:
                                                                                                                                          }
                                                                                                                                          addr425:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc6_.type = "PIG_MUSTACHE";
                                                                                                                                             addr428:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr370);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr466);
                                                                                                                                    }
                                                                                                                                    §§goto(addr467);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break loop25;
                                                                                                                  }
                                                                                                                  addr482:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr463);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            loop35:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(!(_loc7_ && param1))
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr135);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr425);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              _loc6_.type = "BIRD_RED";
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc6_.y = 0;
                                                                                                                                 break loop35;
                                                                                                                              }
                                                                                                                              addr479:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr326:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr194:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        §§push(this.§>!l§());
                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * 360);
                                                                                                                        }
                                                                                                                        §§pop().angle = §§pop();
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr186:
                                                                                                               loop34:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc7_ && param1))
                                                                                                                  {
                                                                                                                     param1.§&w§(_loc6_);
                                                                                                                     continue loop35;
                                                                                                                  }
                                                                                                                  addr224:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        break loop34;
                                                                                                                     }
                                                                                                                     §§goto(addr194);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr460);
                                                                                                            }
                                                                                                            §§goto(addr482);
                                                                                                         }
                                                                                                         §§goto(addr393);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop30;
                                                                                                }
                                                                                                addr386:
                                                                                                loop42:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr182:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_.id = _loc2_;
                                                                                                      §§goto(addr186);
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc6_.type = "BIRD_BLUE";
                                                                                             §§goto(addr224);
                                                                                          }
                                                                                          §§goto(addr194);
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr435);
                                                                              }
                                                                              addr314:
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                        §§push(§§pop() % §§pop());
                                                                     }
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               §§goto(addr292);
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr317);
                                                }
                                             }
                                             §§goto(addr367);
                                          }
                                          §§goto(addr356);
                                       }
                                       §§goto(addr367);
                                    }
                                    §§goto(addr479);
                                 }
                              }
                           }
                           §§goto(addr386);
                        }
                     }
                  }
                  return;
               }
            }
         }
      }
      
      private function §<!P§() : void
      {
      }
      
      protected function §9!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§7l§.§%!`§)
            {
               if(!(_loc2_ && this))
               {
                  addr48:
                  this.§1I§(this.§>Y§.§7z§);
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      protected function §4;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1I§(this.§!?§.§&!§(§"w§.§>!X§));
            while(true)
            {
               this.§1I§(this.§!?§.§&!§(§"w§.§6$§));
               while(!_loc2_)
               {
                  this.§1I§(this.§"H§.§]![§);
                  if(_loc1_ || _loc2_)
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      protected function §5!m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§1I§(this.§!?§.§&!§(§"w§.§9@§));
            while(true)
            {
               this.§1I§(this.§"H§.§&!h§);
               §§goto(addr87);
            }
         }
         addr87:
         while(true)
         {
            this.§1I§(this.§`!L§.sprite);
            do
            {
               this.§1I§(this.§!?§.§&!§(§"w§.§,§));
            }
            while(_loc1_ && this);
            
            if(!(_loc1_ && _loc1_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §-!r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1I§(this.§>Y§.§?!h§);
            while(§7l§.§%!`§)
            {
               if(!_loc1_)
               {
                  break;
               }
               addr61:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               this.§1I§(this.§>Y§.§]9§);
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr61);
      }
      
      protected function §,>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§1I§(this.§"H§.§<!5§);
            while(true)
            {
               this.§1I§(this.§!?§.§&!§(§"w§.§>h§));
               while(_loc2_ || this)
               {
                  this.§1I§(this.§!?§.§&!§(§"w§.§!_§));
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr54:
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §[!E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§9!G§();
            while(true)
            {
               this.§4;§();
               while(!(_loc1_ && this))
               {
                  this.§-!r§();
                  loop3:
                  for(; _loc2_ || this; this.§,>§(),if(!(_loc1_ && _loc2_))
                  {
                     return;
                  })
                  {
                     addr60:
                     if(_loc2_ || _loc1_)
                     {
                        continue;
                     }
                     addr92:
                     while(true)
                     {
                        this.§5!m§();
                        break loop3;
                        §§goto(addr60);
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      protected function §1I§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.sprite);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().addChild(param1);
         }
         addr50:
         if(!_loc2_)
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number, param3:Point = null) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!param3)
            {
               if(!(_loc4_ && param3))
               {
                  param3 = new Point();
                  addr32:
                  §§push(§@!S§.§5!e§);
                  if(_loc5_)
                  {
                     §§push(§@!S§.§+!q§);
                     if(!(_loc4_ && param1))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc5_ || this)
                           {
                              §§push(param1);
                              if(_loc5_ || param1)
                              {
                                 addr61:
                                 §§push(§@!S§.§5!e§);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc5_ || param1)
                                    {
                                       addr78:
                                       §§push(Number(§§pop()));
                                       if(_loc5_ || param1)
                                       {
                                          param1 = §§pop();
                                          if(_loc5_)
                                          {
                                             §§push(param2);
                                             loop2:
                                             while(true)
                                             {
                                                §§push(§@!S§.§5!e§);
                                                addr242:
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      addr245:
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      param2 = §§pop();
                                                      while(true)
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            param3.x = ((param1 - this.sprite.x) / §0k§.§0!1§ + this.§"`§.§9y§) * §^!2§;
                                                            while(_loc5_)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  param3.y = ((param2 - this.sprite.y) / §0k§.§0!1§ + this.§"`§.§-![§) * §^!2§;
                                                                  if(!_loc4_)
                                                                  {
                                                                     return param3;
                                                                     addr124:
                                                                  }
                                                                  continue;
                                                               }
                                                               addr228:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr156:
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr163:
                                                                     §§push(§@!S§.§+!q§);
                                                                     if(_loc5_ || param3)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!(_loc5_ || param3))
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        addr172:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ && this)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                           if(_loc4_ && this)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 continue loop15;
                                                                              }
                                                                           }
                                                                           §§goto(addr163);
                                                                        }
                                                                        addr209:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                            addr189:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ || param3))
                                                               {
                                                                  break loop8;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr124);
                        }
                        else
                        {
                           §§push(param1);
                           if(!(_loc4_ && param1))
                           {
                              §§goto(addr209);
                              §§push(§@!S§.§+!q§);
                           }
                        }
                        §§goto(addr224);
                     }
                     §§goto(addr242);
                  }
                  §§goto(addr61);
               }
               §§goto(addr124);
            }
            §§goto(addr32);
         }
         §§goto(addr228);
      }
      
      public function §3!q§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(!param3)
            {
               if(!(_loc5_ && this))
               {
                  addr28:
                  param3 = new Point();
                  addr32:
                  param3.x = (param1 / §^!2§ - this.§"`§.§9y§) * §0k§.§0!1§ + this.sprite.x;
                  if(_loc6_ || this)
                  {
                     param3.y = (param2 / §^!2§ - this.§"`§.§-![§) * §0k§.§0!1§ + this.sprite.y;
                  }
               }
               var _loc4_:Number = Math.max(§@!S§.§5!e§,§@!S§.§+!q§);
               if(_loc6_ || param3)
               {
                  param3.x *= _loc4_;
                  do
                  {
                     param3.y *= _loc4_;
                  }
                  while(!_loc6_);
                  
               }
               return param3;
            }
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.sprite);
            loop0:
            while(true)
            {
               §§push(param3);
               addr188:
               while(true)
               {
                  §§pop().scaleX = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr159);
      }
      
      public function §;!j§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§"H§.§&w§(param1,param2,param3,0,§<!l§.§0"+§);
         }
      }
      
      public function §""2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§&!S§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§&!S§);
                     while(true)
                     {
                        §§pop().visible = true;
                        while(true)
                        {
                           §§push(this.§&!S§);
                           if(_loc2_ && _loc1_)
                           {
                              break;
                           }
                           if(_loc1_)
                           {
                              §§pop().alpha = 0;
                              loop4:
                              while(!(_loc2_ && _loc1_))
                              {
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue;
                              addr66:
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr87:
               }
               while(true)
               {
                  this.§?!'§ = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr66);
               }
               return;
            }
         }
         §§goto(addr83);
      }
      
      public function §8%§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(!param1)
            {
               this.§%D§ = null;
               if(_loc5_ && this)
               {
                  addr74:
               }
               return;
            }
            if(_loc6_ || param1)
            {
               this.§%D§ = new §<!I§(param2,param3,param4);
            }
         }
         §§goto(addr74);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>Y§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§>Y§);
                     addr626:
                     while(true)
                     {
                        §§pop().dispose();
                        addr627:
                        while(true)
                        {
                           this.§>Y§ = null;
                           addr608:
                           while(true)
                           {
                           }
                        }
                     }
                     loop15:
                     while(true)
                     {
                        if(!(_loc2_ || this))
                        {
                           continue loop0;
                        }
                        §1G§ = this.§"`§.§=Q§;
                        loop16:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§push(this.§"`§);
                              if(!_loc1_)
                              {
                                 §§pop().clear();
                                 loop17:
                                 for(; _loc2_; if(!(_loc2_ || _loc2_))
                                 {
                                    continue;
                                 },§§goto(addr434),§§push(this.§!?§))
                                 {
                                    if(_loc2_)
                                    {
                                       this.§"`§ = null;
                                       while(true)
                                       {
                                          addr417:
                                          loop19:
                                          while(true)
                                          {
                                             §§push(this.§!?§);
                                             if(_loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop21:
                                                   while(this.sprite)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         addr379:
                                                         if(!(_loc2_ || _loc1_))
                                                         {
                                                            while(_loc2_)
                                                            {
                                                               continue loop17;
                                                               §§goto(addr379);
                                                            }
                                                            continue loop19;
                                                            addr423:
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               addr355:
                                                               §§push(this.sprite);
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  if(§§pop().numChildren <= 0)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.sprite);
                                                               }
                                                               §§pop().removeChildAt(0,true);
                                                               §§goto(addr355);
                                                            }
                                                            else
                                                            {
                                                               addr522:
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  addr529:
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     addr536:
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§`!L§);
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       §§push(this.§`!L§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().dispose();
                                                                                          addr517:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§`!L§ = null;
                                                                                             break loop17;
                                                                                          }
                                                                                       }
                                                                                       addr516:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr627);
                                                                                    }
                                                                                 }
                                                                                 addr548:
                                                                                 addr444:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§implements§);
                                                                                    addr550:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().clear();
                                                                                       break loop11;
                                                                                    }
                                                                                 }
                                                                                 if(_loc1_ && _loc1_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 this.§!?§ = null;
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc2_ || _loc1_))
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    if(!(_loc1_ && _loc2_))
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr581:
                                                                                    while(_loc2_ || _loc2_)
                                                                                    {
                                                                                       this.§>!&§ = null;
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          addr537:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§implements§);
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                §§goto(addr548);
                                                                                             }
                                                                                             §§goto(addr550);
                                                                                             continue loop7;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§"H§ = null;
                                                                                       addr593:
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          addr564:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§>!&§);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§>!&§);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop().§#F§)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§"H§);
                                                                                                                        addr602:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().dispose();
                                                                                                                           continue loop32;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr600:
                                                                                                                  }
                                                                                                               }
                                                                                                               addr576:
                                                                                                            }
                                                                                                            addr578:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§>!&§);
                                                                                                            }
                                                                                                         }
                                                                                                         addr574:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().clear();
                                                                                                         §§goto(addr581);
                                                                                                      }
                                                                                                      §§goto(addr529);
                                                                                                   }
                                                                                                   addr570:
                                                                                                }
                                                                                                §§goto(addr537);
                                                                                             }
                                                                                             §§goto(addr574);
                                                                                             continue loop33;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr581:
                                                                                    §§goto(addr451);
                                                                                 }
                                                                                 addr451:
                                                                              }
                                                                              while(_loc2_ || this)
                                                                              {
                                                                                 this.§implements§ = null;
                                                                                 §§goto(addr522);
                                                                              }
                                                                              §§goto(addr576);
                                                                              addr551:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§"`§);
                                                                              break loop16;
                                                                              addr498:
                                                                           }
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                  }
                                                                  §§goto(addr570);
                                                               }
                                                               §§goto(addr551);
                                                            }
                                                         }
                                                         §§goto(addr517);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr402);
                                                      }
                                                   }
                                                   addr369:
                                                   this.§#[§ = 0;
                                                   this.§'!n§ = 0;
                                                   this.mReadyToRun = false;
                                                   this.§-!Z§ = false;
                                                   addr372:
                                                   addr349:
                                                   addr354:
                                                   if(!_loc1_)
                                                   {
                                                      this.§?!'§ = §&z§.§#L§;
                                                      addr337:
                                                      §§push(this.§<G§);
                                                      if(!_loc1_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr330:
                                                            (this.§<G§ as § !]§).§3x§.x = 0;
                                                            addr324:
                                                            addr331:
                                                            addr329:
                                                            §§push(this.§<G§);
                                                            if(!_loc1_)
                                                            {
                                                               §§push((§§pop() as § !]§).§3x§);
                                                               if(_loc2_ || this)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§pop().y = §§pop();
                                                                     addr317:
                                                                     §§push(this.§&!S§);
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr285:
                                                                           this.§&!S§.visible = false;
                                                                           addr283:
                                                                        }
                                                                        this.§ "!§ = null;
                                                                        this.§9>§ = null;
                                                                        addr271:
                                                                        addr266:
                                                                        §§push(this.§<!L§);
                                                                        if(_loc2_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr240:
                                                                              if(_loc2_ || _loc1_)
                                                                              {
                                                                                 addr249:
                                                                                 this.§<!L§.removeEventListener(Event.COMPLETE,this.§!u§);
                                                                                 addr254:
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    §§push(this.§<!L§);
                                                                                    if(!(_loc1_ && this))
                                                                                    {
                                                                                       §§pop().removeEventListener(Event.CANCEL,this.§?!6§);
                                                                                       addr231:
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr193:
                                                                                          if(this.§[8§)
                                                                                          {
                                                                                             addr194:
                                                                                             if(!(_loc1_ && _loc2_))
                                                                                             {
                                                                                                addr203:
                                                                                                this.§[8§.removeEventListener(Event.COMPLETE,this.§5I§);
                                                                                                addr208:
                                                                                                if(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   §§push(this.§[8§);
                                                                                                   if(_loc2_ || this)
                                                                                                   {
                                                                                                      if(_loc2_ || _loc1_)
                                                                                                      {
                                                                                                         §§pop().removeEventListener(Event.CANCEL,this.§5"1§);
                                                                                                         addr182:
                                                                                                         if(!(_loc1_ && this))
                                                                                                         {
                                                                                                            addr135:
                                                                                                            this.§#"!§();
                                                                                                            addr138:
                                                                                                            if(_loc2_ || this)
                                                                                                            {
                                                                                                               if(_loc2_ || this)
                                                                                                               {
                                                                                                                  if(_loc2_ || this)
                                                                                                                  {
                                                                                                                     §§push(§6!l§.§+J§);
                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr95:
                                                                                                                           if(_loc2_ || this)
                                                                                                                           {
                                                                                                                              if(!(_loc1_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    addr118:
                                                                                                                                    §6!l§.§+J§.color = 0;
                                                                                                                                    addr120:
                                                                                                                                    if(!(_loc1_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc1_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr40:
                                                                                                                                          §§push(this.§-!"§);
                                                                                                                                          if(!_loc1_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr46:
                                                                                                                                                if(!(_loc1_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc1_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc1_)
                                                                                                                                                         {
                                                                                                                                                            addr66:
                                                                                                                                                            this.§-!"§.removeEventListeners();
                                                                                                                                                            addr67:
                                                                                                                                                            if(_loc2_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     addr24:
                                                                                                                                                                     this.mReadyToRun = false;
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc1_ && _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr240);
                                                                                                                                                                           }
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr46);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr67);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr372);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr231);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr95);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr271);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr266);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr182);
                                                                                                                                                }
                                                                                                                                                §§goto(addr120);
                                                                                                                                             }
                                                                                                                                             §§goto(addr24);
                                                                                                                                          }
                                                                                                                                          §§goto(addr66);
                                                                                                                                       }
                                                                                                                                       §§goto(addr349);
                                                                                                                                    }
                                                                                                                                    §§goto(addr372);
                                                                                                                                 }
                                                                                                                                 §§goto(addr194);
                                                                                                                              }
                                                                                                                              §§goto(addr208);
                                                                                                                           }
                                                                                                                           §§goto(addr138);
                                                                                                                        }
                                                                                                                        §§goto(addr40);
                                                                                                                     }
                                                                                                                     §§goto(addr118);
                                                                                                                  }
                                                                                                                  §§goto(addr337);
                                                                                                               }
                                                                                                               §§goto(addr324);
                                                                                                            }
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                      }
                                                                                                      §§goto(addr193);
                                                                                                   }
                                                                                                   §§goto(addr203);
                                                                                                }
                                                                                                §§goto(addr254);
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          §§goto(addr135);
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                    }
                                                                                    §§goto(addr249);
                                                                                 }
                                                                                 §§goto(addr369);
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                           §§goto(addr193);
                                                                        }
                                                                        §§goto(addr249);
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               §§goto(addr329);
                                                            }
                                                            addr326:
                                                            §§goto(addr326);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   §§goto(addr355);
                                                }
                                                §§goto(addr423);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   continue loop16;
                                                }
                                                addr434:
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr563);
                                 }
                                 while(!(_loc1_ && this))
                                 {
                                    §§goto(addr498);
                                 }
                                 §§goto(addr593);
                              }
                              break;
                           }
                           §§goto(addr608);
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              continue loop15;
                           }
                           §§goto(addr417);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§"H§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr600);
                     }
                     §§goto(addr564);
                  }
                  §§goto(addr602);
                  §§goto(addr608);
               }
            }
            §§goto(addr626);
         }
         §§goto(addr578);
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §?Z§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§9>§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§9>§);
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
      
      public function get §4U§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§[i§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr57);
                  }
               }
               return 1;
            }
            §§goto(addr57);
         }
         addr57:
         return this.§[i§.speed;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.mReadyToRun);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§6!l§.§<E§());
                           while(true)
                           {
                              §§push(!§§pop());
                              addr116:
                              while(!_loc4_)
                              {
                              }
                              continue loop0;
                              addr60:
                              if(_loc4_)
                              {
                                 continue;
                              }
                              while(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr80);
                                 }
                                 §§goto(addr121);
                              }
                              §§push(this.§>!H§(param1,true,param2));
                              if(!(_loc4_ && this))
                              {
                                 if(!_loc4_)
                                 {
                                    return §§pop();
                                 }
                                 addr121:
                                 if(!_loc4_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       break loop12;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    addr124:
                                    while(true)
                                    {
                                       §§push(this.§ "!§);
                                       addr94:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop9:
                                          while(_loc3_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc4_ && param2))
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§pop();
                                                      addr42:
                                                      §§push(§§pop().§2x§);
                                                      if(_loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(_loc4_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_ && param1)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§goto(addr60);
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop12;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr124);
                                    }
                                 }
                                 while(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§ "!§);
                                       if(!_loc4_)
                                       {
                                          §§goto(addr42);
                                       }
                                       §§goto(addr94);
                                    }
                                 }
                                 return §§pop();
                              }
                              addr80:
                              return this.§;S§(param1,param2);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr91);
                     }
                     §§goto(addr120);
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      protected function §>!H§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = false;
         if(_loc6_)
         {
            §§push(this.§[i§);
            if(_loc6_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§[i§);
                     addr240:
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().update(param1));
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() * this.§[i§.speed);
                                    if(_loc6_)
                                    {
                                       addr215:
                                       §§push(Number(§§pop()));
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       while(true)
                                       {
                                          §§push(§6!l§.§-f§);
                                          if(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                continue;
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                while(!_loc5_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop11:
                                                      while(!(_loc5_ && this))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         this.§[i§ = null;
                                                         loop12:
                                                         while(true)
                                                         {
                                                            addr157:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§'!n§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() + param1);
                                                               }
                                                               §§pop().§'!n§ = §§pop();
                                                               addr166:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(this.§4!Q§);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        this.§#[§ = 0;
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              this.§2!5§(param1);
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && param2))
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§#[§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() + param1);
                                                                                       }
                                                                                       §§pop().§#[§ = §§pop();
                                                                                       continue loop15;
                                                                                    }
                                                                                    addr141:
                                                                                 }
                                                                                 addr69:
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          addr22:
                                                                                          §§push(param1);
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr136:
                                                                              }
                                                                              addr134:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§`!L§.update(param1,param3);
                                                                              continue loop16;
                                                                              §§goto(addr136);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr141);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                   §§goto(addr157);
                                                   continue loop9;
                                                }
                                                continue loop4;
                                             }
                                             addr167:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().speed = this.§[i§.speed;
                                             }
                                             addr200:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr167);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr215);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr157);
            }
            §§goto(addr240);
         }
         §§goto(addr166);
      }
      
      private function §;S§(param1:Number, param2:Boolean) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         §§push(§<o§.§2e§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            if(this.§ "!§)
            {
               loop15:
               while(true)
               {
                  §§push(param1);
                  loop16:
                  while(true)
                  {
                     §§push(this.§ "!§.speed);
                     loop17:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        loop18:
                        while(true)
                        {
                           param1 = §§pop();
                           while(true)
                           {
                              §§push(this.§'!n§);
                              if(!_loc6_)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(param1);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_)
                                       {
                                          addr258:
                                          if(!_loc5_)
                                          {
                                             continue loop18;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       _loc4_ = §§pop();
                                       if(_loc5_ || _loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop17;
                                 }
                                 continue loop16;
                              }
                              §§goto(addr258);
                           }
                           if(_loc6_)
                           {
                              continue loop15;
                           }
                           loop21:
                           while(true)
                           {
                              §§push(this.§'!n§);
                              if(_loc5_)
                              {
                                 addr159:
                                 if(!(_loc6_ && param2))
                                 {
                                    addr166:
                                    §§push(_loc3_);
                                    if(!(_loc6_ && this))
                                    {
                                       addr174:
                                       §§push(§§pop() + §§pop());
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc5_)
                                          {
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(_loc4_);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(this.§ @§);
                                                         if(!_loc6_)
                                                         {
                                                            addr188:
                                                            §§push(§§pop() + _loc3_);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  §§push(this.§ "!§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§pop().step(this);
                                                                     do
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§ @§);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() + _loc3_);
                                                                        }
                                                                        §§pop().§ @§ = §§pop();
                                                                     }
                                                                     while(!(_loc5_ || _loc3_));
                                                                     
                                                                     addr84:
                                                                     §§push(this.§'!n§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§push(_loc4_);
                                                                        if(_loc6_ && this)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() - this.§'!n§);
                                                                                       }
                                                                                       §§pop().§>!H§(§§pop(),true,param2);
                                                                                       addr53:
                                                                                       §§push(param1);
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          loop5:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§ @§);
                                                                                             addr229:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§ "!§);
                                                                                                      addr232:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().step(this);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(this.§ @§);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() + _loc3_);
                                                                                                            }
                                                                                                            §§pop().§ @§ = §§pop();
                                                                                                            addr212:
                                                                                                            while(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§>!H§(_loc3_,false,param2);
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               loop4:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  continue loop5;
                                                                                                                  addr225:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop4;
                                                                                                                     §§goto(addr159);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr230:
                                                                                                }
                                                                                                §§goto(addr196);
                                                                                             }
                                                                                             §§goto(addr166);
                                                                                          }
                                                                                       }
                                                                                       return §§pop();
                                                                                       addr126:
                                                                                       addr55:
                                                                                    }
                                                                                    §§goto(addr230);
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                              §§goto(addr126);
                                                                           }
                                                                           §§goto(addr53);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr226);
                                                                        }
                                                                     }
                                                                     addr87:
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                               §§goto(addr84);
                                                            }
                                                            addr188:
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      addr182:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr225);
                                                      §§push(this.§'!n§);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr229);
                                             }
                                             continue;
                                             addr178:
                                          }
                                          §§goto(addr188);
                                       }
                                       addr175:
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr225);
                              }
                              §§goto(addr182);
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(param1);
               if(!_loc6_)
               {
                  if(_loc5_ || param1)
                  {
                     if(_loc5_ || this)
                     {
                        return §§pop();
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr87);
               }
            }
            §§goto(addr55);
         }
         §§goto(addr271);
      }
      
      private function §>I§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc5_ || this)
         {
            this.§>Y§.update(param1);
         }
         loop0:
         while(true)
         {
            this.§"H§.§&!N§(param1,this.§>!&§.§%!w§,this.§#[§);
            loop1:
            while(true)
            {
               this.§#z§();
               loop2:
               while(true)
               {
                  §§push(this.§?!'§);
                  loop3:
                  while(true)
                  {
                     §§push(§&z§.§#L§);
                     loop4:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(this.§&!S§);
                           if(_loc5_ || param1)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(this.§&!S§);
                                          while(true)
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§pop().visible = false;
                                                   loop21:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr161:
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(this.§%D§);
                                                            if(_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop14:
                                                                  for(; !_loc4_; if(!(_loc4_ && param1))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break loop13;
                                                                     }
                                                                     continue loop21;
                                                                  })
                                                                  {
                                                                     §§push(this.§%D§);
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop().§ !_§(this.§"`§,param1))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              this.§8%§(false);
                                                                           }
                                                                           loop19:
                                                                           while(_loc5_)
                                                                           {
                                                                              addr108:
                                                                              while(true)
                                                                              {
                                                                                 this.§"`§.§#P§(param1);
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ || this))
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    this.§>!&§.§5t§();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop16;
                                                                                       addr72:
                                                                                       this.§!?§.update(param1);
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                    }
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          addr109:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§&z§.§#L§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() / 2);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr246:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   break loop14;
                                                                                                   addr228:
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      break loop19;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr246);
                                                                                             continue loop12;
                                                                                          }
                                                                                          addr270:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop19;
                                                                                 §§goto(addr108);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§&!S§);
                                                                              addr165:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§&!S§);
                                                                                       addr168:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().alpha = _loc3_;
                                                                                          §§goto(addr170);
                                                                                       }
                                                                                    }
                                                                                    addr166:
                                                                                 }
                                                                                 §§goto(addr109);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr73);
                                                                     }
                                                                  }
                                                                  while(!_loc4_)
                                                                  {
                                                                     §§push(-Math.abs(this.§?!'§ - _loc2_));
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§push(§&z§.§&"$§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop() / _loc2_);
                                                                              }
                                                                           }
                                                                           §§goto(addr228);
                                                                        }
                                                                        if(!(_loc5_ || _loc2_))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr108);
                                                            }
                                                            §§goto(addr96);
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               return;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop2;
                                                         addr86:
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr168);
                                          }
                                          addr138:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§?!'§);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(§§pop() + param1);
                                             }
                                             §§pop().§?!'§ = §§pop();
                                          }
                                          addr257:
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr170);
                                 }
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr257);
                     }
                  }
               }
            }
         }
      }
      
      public function §2!5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.objects.§8" §(param1);
            do
            {
               this.§#?§();
            }
            while(_loc3_);
            
         }
      }
      
      protected function §#z§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§@_§ = null;
         if(_loc5_)
         {
            if(this.§4!3§ != null)
            {
               addr26:
               for each(_loc1_ in this.§4!3§)
               {
                  if(_loc5_)
                  {
                     if(!_loc1_.isLeavingTrail)
                     {
                        if(_loc5_)
                        {
                           this.§[U§(_loc1_);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7k§ = null;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc3_)
            {
               §§goto(addr36);
            }
            §§goto(addr134);
         }
         addr36:
         §§push(this.mPigsAnimationTimer1);
         if(!_loc4_)
         {
            §§push(0);
            if(_loc3_)
            {
               if(§§pop() <= §§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.§"H§);
                     if(_loc3_)
                     {
                        §§push(true);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop().§>a§(§§pop()));
                           if(_loc3_)
                           {
                              _loc2_ = §§pop();
                              if(_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       _loc2_.scream();
                                       if(_loc3_ || _loc2_)
                                       {
                                       }
                                       addr116:
                                       §§push(this);
                                       §§push(this.mPigsAnimationTimer2);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().mPigsAnimationTimer2 = §§pop();
                                       if(_loc3_)
                                       {
                                          §§goto(addr129);
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              §§push(this);
                              §§push(500 + Math.random() * 1000);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§pop() + 4000 / (3 + this.§"H§.§&!D§()));
                              }
                              §§pop().mPigsAnimationTimer1 = §§pop();
                              §§goto(addr116);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr134);
               }
               §§goto(addr116);
            }
            §§goto(addr129);
         }
         addr129:
         if(this.mPigsAnimationTimer2 <= 0)
         {
            addr134:
            _loc2_ = this.§"H§.§>a§(true);
            addr130:
            addr133:
            addr132:
            if(!(_loc4_ && this))
            {
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                     _loc2_.blink();
                     if(_loc4_ && this)
                     {
                     }
                  }
               }
               §§goto(addr189);
            }
            §§push(this);
            §§push(250 + Math.random() * 500);
            if(_loc3_ || this)
            {
               §§push(§§pop() + 2000 / (3 + this.§"H§.§&!D§()));
            }
            §§pop().mPigsAnimationTimer2 = §§pop();
         }
         addr189:
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            §§push(param6);
            loop0:
            while(true)
            {
               §§push(-9999);
               addr159:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§`""§.§2"4§);
                        if(_loc7_ || param2)
                        {
                           §§push(int(§§pop()));
                        }
                        addr180:
                        loop3:
                        while(true)
                        {
                           param6 = §§pop();
                           addr181:
                           while(true)
                           {
                           }
                           addr142:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc8_)
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr160:
                  }
                  while(true)
                  {
                     §52§.addScore(param1,param2);
                     loop6:
                     while(true)
                     {
                        this.§-!"§.addScore(param1);
                        while(true)
                        {
                           if(_loc8_)
                           {
                              §§goto(addr160);
                           }
                           addr121:
                           if(_loc8_ && this)
                           {
                              continue;
                           }
                           if(_loc7_ || param1)
                           {
                              §§push(this.§`f§);
                              if(!_loc8_)
                              {
                                 if(!_loc8_)
                                 {
                                    addr36:
                                    §§push(!§§pop());
                                    if(_loc7_ || param2)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr45:
                                          if(!(_loc8_ && param3))
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   this.§%!h§(param1.toString(),param4,param5,800,param6,0,0);
                                                }
                                                if(!(_loc8_ && param3))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                addr114:
                                                while(_loc7_ || this)
                                                {
                                                   §§goto(addr121);
                                                }
                                                §§goto(addr142);
                                             }
                                             return;
                                             addr52:
                                          }
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             §§goto(addr45);
                                          }
                                          addr138:
                                       }
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
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr114);
                                                         §§goto(addr36);
                                                      }
                                                      addr113:
                                                   }
                                                   §§goto(addr52);
                                                }
                                                continue;
                                                addr108:
                                             }
                                             addr141:
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr142);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 while(_loc7_ || param2)
                                 {
                                    §§goto(addr108);
                                 }
                                 §§goto(addr141);
                                 addr101:
                              }
                              §§goto(addr36);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr180);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr138);
         }
      }
      
      public function §%!h§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            §§push(param5);
            if(!_loc8_)
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§`""§.§6U§);
                     if(_loc9_ || param1)
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
                        while(true)
                        {
                           §§goto(addr29);
                        }
                     }
                  }
               }
               addr29:
               §§goto(addr65);
            }
            §§goto(addr90);
         }
         addr65:
         while(true)
         {
            this.§!?§.§9!@§(§`""§.§+!S§,§"w§.§>h§,§`""§.§7`§,param2,param3,param4,param1,param5,param6,param7);
            if(_loc9_ || param3)
            {
               if(!_loc8_)
               {
                  break;
               }
               continue loop0;
            }
            continue loop1;
         }
      }
      
      public function §2!;§(param1:§#!v§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§4!3§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§4!3§ = new Array();
                  addr79:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §!j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§`!L§.§!j§();
            while(true)
            {
               this.§"H§.§5H§();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§`f§ = true;
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §[U§(param1:§@_§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!?§.§`o§(§"w§.§>!X§);
            while(true)
            {
               §§push(this.§4!3§);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     while(true)
                     {
                        §§push(this.§4!3§);
                        addr94:
                        while(true)
                        {
                           §§pop().splice(this.§4!3§.indexOf(param1),1);
                           addr110:
                           while(true)
                           {
                           }
                        }
                     }
                     addr92:
                  }
                  while(true)
                  {
                     §§push(this.§4!3§);
                     if(!(_loc3_ && _loc3_))
                     {
                        continue loop1;
                     }
                     §§goto(addr94);
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §?!k§(param1:§&#§, param2:Number, param3:Number) : §^"2§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§^"2§ = §^"2§(this.§"H§.§&w§(param1.name,param1.x,param1.y,0,§<!l§.§0"+§,true,true,true,param1.scale));
         §§push(param1.§+!4§);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc9_)
         {
            §§push(param1.§3!G§);
            if(!(_loc8_ && param1))
            {
               §§push(1);
               if(!(_loc8_ && param3))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc8_)
                     {
                        _loc4_.§4B§(param1.§3!G§);
                        if(_loc9_)
                        {
                           addr72:
                           §§push(param1.§,!P§);
                           if(_loc9_ || param2)
                           {
                              addr82:
                              if(§§pop() != 0)
                              {
                                 if(_loc9_)
                                 {
                                    addr85:
                                    §§push(param1.§,!P§);
                                    if(_loc9_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc9_ || param1)
                                       {
                                          _loc5_ = §§pop();
                                          addr98:
                                          §§push(_loc5_);
                                          if(!(_loc8_ && this))
                                          {
                                             addr106:
                                             §§push(-§§pop());
                                             if(!(_loc8_ && param2))
                                             {
                                                addr124:
                                                §§push(§§pop() * param2);
                                                if(!(_loc8_ && param3))
                                                {
                                                   §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                                   if(_loc9_)
                                                   {
                                                      addr144:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr144);
                                             }
                                          }
                                          var _loc6_:* = §§pop();
                                          §§push(_loc5_);
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop() * param2);
                                             if(_loc9_ || param1)
                                             {
                                                §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                if(!(_loc8_ && param3))
                                                {
                                                   addr174:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc7_:* = §§pop();
                                             if(!(_loc8_ && this))
                                             {
                                                _loc4_.§^y§(new b2Vec2(_loc6_,_loc7_),false,true);
                                                loop0:
                                                while(true)
                                                {
                                                   _loc4_.isLeavingTrail = true;
                                                   do
                                                   {
                                                      this.camera.§-!M§(§0k§.§=!I§);
                                                      do
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            §§push(this.§9>§);
                                                            if(!_loc8_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr184);
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(this.§9>§);
                                                            }
                                                            §§pop().§?!k§(this.§>!&§.§-!G§,param1.x,param1.y,param2,param3);
                                                            continue;
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(_loc8_);
                                                      
                                                   }
                                                   while(!_loc9_);
                                                   
                                                }
                                             }
                                             addr184:
                                             return _loc4_;
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr124);
                                    }
                                    §§goto(addr144);
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr72);
               }
               §§goto(addr82);
            }
            §§goto(addr144);
         }
         §§goto(addr85);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§-!Z§ = true;
            while(true)
            {
               this.§=b§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§!Q§ = param2;
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      private function §#?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§-!Z§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc1_ || this)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr104:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     addr113:
                     this.§"H§.activateSpecialPower(this.§=b§,this.§!Q§);
                     addr118:
                     §§push(this.§9>§);
                     if(_loc1_ || this)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              if(_loc2_ && this)
                              {
                                 §§goto(addr118);
                              }
                              addr55:
                              this.§9>§.§6%§(this.§>!&§.§-!G§,this.§=b§,this.§!Q§);
                           }
                        }
                        return;
                     }
                     §§goto(addr55);
                  }
               }
               while(true)
               {
                  this.§-!Z§ = false;
                  while(true)
                  {
                     §§push(this.§"H§);
                     if(_loc2_ && this)
                     {
                        break;
                     }
                     continue loop0;
                     addr97:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr113);
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §[!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§"H§.§[!K§();
         }
      }
      
      public function §9A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§"H§.§?"1§();
         }
      }
      
      public function §-g§() : §5L§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§5L§ = new §5L§();
         if(!_loc3_)
         {
            _loc1_.scoreGold = this.§?n§.scoreGold;
            while(true)
            {
               _loc1_.scoreSilver = this.§?n§.scoreSilver;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  this.§"`§.§1-§(_loc1_);
                  loop2:
                  while(true)
                  {
                     this.§"H§.§ !c§(_loc1_);
                     while(!_loc3_)
                     {
                        this.§`!L§.§'!%§(_loc1_);
                        loop4:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              _loc1_.theme = this.§>Y§.§<j§();
                              if(!(_loc3_ && _loc2_))
                              {
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return _loc1_;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §2!r§() : int
      {
         return this.§?n§.scoreSilver;
      }
      
      public function §`!§() : int
      {
         return this.§?n§.scoreGold;
      }
      
      public function §"&§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?n§.scoreSilver = param1;
         }
      }
      
      public function §6>§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?n§.scoreGold = param1;
         }
      }
      
      public function §7<§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§9"+§ = param1;
            while(true)
            {
               this.§=Z§ = param2;
            }
            addr138:
         }
         loop1:
         while(true)
         {
            this.§ !e§ = param3;
            loop2:
            while(_loc5_)
            {
               this.§4J§ = param4;
               loop3:
               do
               {
                  §§push(this.§0$§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || param2)
                        {
                           if(_loc6_ && param3)
                           {
                              continue loop2;
                           }
                           §§goto(addr104);
                           §§push(this.§0$§);
                           continue loop2;
                        }
                        addr107:
                        while(true)
                        {
                           addr46:
                           if(!(_loc6_ && this))
                           {
                              addr55:
                              this.§"`§.§#P§(0);
                              continue loop3;
                           }
                        }
                        addr107:
                     }
                     while(true)
                     {
                        §§push(this.§"`§);
                        if(!(_loc6_ && this))
                        {
                           if(!§§pop())
                           {
                              addr24:
                              return;
                           }
                           if(_loc6_ && param3)
                           {
                              continue loop3;
                           }
                           §§goto(addr46);
                        }
                        break;
                        §§goto(addr107);
                     }
                     §§goto(addr55);
                  }
                  else
                  {
                     addr104:
                     §§pop().§9l§(param1,param2);
                  }
                  §§goto(addr107);
               }
               while(!(_loc5_ || param2));
               
               continue loop1;
            }
            §§goto(addr138);
         }
      }
      
      public function §8^§(param1:§#!v§, param2:§#!v§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §5L§
      {
         return this.§?n§;
      }
      
      public function get levelObjects() : §<!l§
      {
         return this.§"H§;
      }
      
      protected function get §>!C§() : §6!l§
      {
         return this.§3#§;
      }
      
      public function get §7!X§() : int
      {
         return §]<§;
      }
   }
}
